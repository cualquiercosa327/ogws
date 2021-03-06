#include <ctype.h>         // tolower
#include "OSError.h"
#include "arc.h"

// Bitfield access of a packed_type_name X produces a pattern (X >> 24), which
// does not match access done by masking.
#define rxNodeIsFolder(node) ((node).packed_type_name & 0xff000000)
// In some cases (X << 8 >> 8) does not collapse to a mask.
#define rxNodeGetName(node) ((node).packed_type_name & 0x00ffffff)
#define rxEntryHandleIsValid(handle) ((handle) >= 0)
typedef struct ARCHandle rxArchive;
typedef struct ARCFile rxArchiveFile;
typedef struct ARCDir rxArchiveFolderRange;
typedef struct ARCEntry rxArchiveEntry;
typedef struct ARCNode rxNode;
typedef struct ARCHeader rxArchiveHeader;

enum { RX_ARCHIVE_FILE_MAGIC = 0x55aa382d };

static BOOL rxArchiveHeaderVerify(const rxArchiveHeader* self) {
  // Verify the "U8" magic
  if (self->magic != RX_ARCHIVE_FILE_MAGIC)
    return FALSE;

  return TRUE;
}
static const rxNode* rxArchiveHeaderGetNodes(const rxArchiveHeader* self) {
  return (const rxNode*)((u8*)self + self->nodes.offset);
}
static const u8* rxArchiveHeaderGetFileData(const rxArchiveHeader* self) {
  return (const u8*)((u8*)self + self->files.offset);
}

BOOL __rxGetCurrentPath(rxArchive* self, char* string, u32 capacity);

// pData must be nonconst
BOOL ARCInitHandle(void* pData, rxArchive* pOut) {
  const rxArchiveHeader* pHeader = pData;
  #line 74
  if (!rxArchiveHeaderVerify(pHeader)) OSError("ARCInitHandle: bad archive format");

  pOut->mHeader = pData;

  const rxNode* nodes = rxArchiveHeaderGetNodes(pHeader);
  pOut->mNodes = nodes;

  pOut->mFileData = rxArchiveHeaderGetFileData(pHeader);
  // The right bound of the root node is the number of nodes
  pOut->mCount = nodes[0].folder.sibling_next;
  // Strings exist directly after the last node.
  pOut->mStrings = (const char*)(nodes + pOut->mCount);
  pOut->mFstSize = (u32)pHeader->nodes.size;
  pOut->mCurrentPath = 0;

  return TRUE;
}

BOOL ARCOpen(const rxArchive* self, const char* path,
                       rxArchiveFile* pOut) {
  const rxNode* nodes = self->mNodes;
  const s32 resolved = ARCConvertPathToEntrynum((rxArchive*)self, path);

  if (!rxEntryHandleIsValid(resolved)) {
    char current_path[128];

    __rxGetCurrentPath((rxArchive*)self, current_path, sizeof(current_path));
    OSReport("Warning: ARCOpen(): file '%s' was not found under %s in the archive.\n",                                                       \
           path, current_path);

    return FALSE;
  }

  if (!rxEntryHandleIsValid(resolved) || rxNodeIsFolder(nodes[resolved])) {
    return FALSE;
  }

  pOut->parent = (rxArchive*)self;
  pOut->offset = nodes[resolved].file.offset;
  pOut->size = nodes[resolved].file.size;
  return TRUE;
}

BOOL ARCFastOpen(const rxArchive* self, s32 resolved,
                          rxArchiveFile* pOut) {
  const rxNode* nodes = self->mNodes;

  // Although resolve will never return a handle beyond the node count,
  // the user may, so an additional check is needed.
  if (!rxEntryHandleIsValid(resolved) || resolved >= self->mCount ||
      rxNodeIsFolder(nodes[resolved])) {
    return FALSE;
  }

  pOut->parent = (rxArchive*)self;
  pOut->offset = nodes[resolved].file.offset;
  pOut->size = nodes[resolved].file.size;

  return TRUE;
}

// seen in debug builds as a standalone function
inline int __rxPathCompare(const char* lhs, const char* rhs) {
  while (rhs[0] != '\0') {
    if (tolower(*lhs++) != tolower(*rhs++))
      return FALSE;
  }

  if (lhs[0] == '/' || lhs[0] == '\0')
    return TRUE;

  return FALSE;
}

inline u32 __rxPathCopy(char* dst, char* src, u32 capacity) {
  u32 i;
  for (i = capacity; i != 0 && src[0] != '\0'; --i)
    *dst++ = *src++;

  return capacity - i;
}

s32 ARCConvertPathToEntrynum(rxArchive* self, const char* path) {
  s32 name_length;                       // r7
  u32 it = self->mCurrentPath;           // r8
  rxNode* nodes = (rxNode*)self->mNodes; // r9

  while (TRUE) {
    // End of string -> return what we have
    if (path[0] == '\0')
      return it;

    // Ignore initial slash: /Path/File vs Path/File
    if (path[0] == '/') {
      it = 0;
      ++path;
      continue;
    }

    // Handle special cases:
    // -../-, -.., -./-, -.
    if (path[0] == '.') {
      if (path[1] == '.') {
        // Seek to parent ../
        if (path[2] == '/') {
          it = nodes[it].folder.parent;
          path += 3;
          continue;
        }
        // Return parent folder immediately
        if (path[2] == '\0')
          return nodes[it].folder.parent;
        // Malformed: fall through, causing infinite loop
        goto compare;
      }

      // "." directory does nothing
      if (path[1] == '/') {
        path += 2;
        continue;
      }

      // Ignore trailing dot
      if (path[1] == '\0')
        return it;
    }

  compare:
    // We've ensured the directory is not special.
    // Isolate the name of the current item in the path string.
    const char* name_end = path;
    while (name_end[0] != '\0' && name_end[0] != '/')
      ++name_end;

    // If the name was delimited by a '/' rather than truncated.
    // This must be expressed as a ternary, and an enum cannot be used..
    int name_delimited_by_slash = (name_end[0] != '\0') ? 1 : 0;
    name_length = name_end - path;

    // Traverse all children of the parent.
    const u32 anchor = it;
    ++it;
    while (it < nodes[anchor].folder.sibling_next) {
      while (TRUE) {
        if (rxNodeIsFolder(nodes[it]) || name_delimited_by_slash != TRUE) {
          char* name_of_it = ((char*)self->mStrings) + rxNodeGetName(nodes[it]);

          // Skip empty directories
          if (name_of_it[0] == '.' && name_of_it[1] == '\0') {
            ++it;
            continue;
          }

          // Advance to the next item in the path
          if (__rxPathCompare(path, name_of_it) == TRUE) {
            goto descend;
          }
        }

        if (rxNodeIsFolder(nodes[it])) {
          it = nodes[it].folder.sibling_next;
          break;
        }

        ++it;
        break;
      }
    }

    return -1;

  descend:
    // If the path was truncated, there is nowhere else to go
    // These basic blocks have to go here right at the end, accessed via a goto.
    // An odd choice.
    if (!name_delimited_by_slash)
      return it;

    path += name_length + 1;
  }
}

static u32 entryToPath(rxArchive* self, u32 resolved, char* string,
                                 u32 capacity) {
  rxNode* nodes = (rxNode*)self->mNodes;

  if (resolved == 0)
    return 0;

  char* name = ((char*)self->mStrings) + nodes[resolved].name;

  u32 written = entryToPath(self, nodes[resolved].folder.parent,
                                      string, capacity);

  if (written == capacity)
    return written;

  string[written++] = '/';
  return written + __rxPathCopy(string + written, name, capacity - written);
}

inline BOOL __rxMakePath(rxArchive* self, s32 resolved, char* string,
                         u32 capacity) {
  rxNode* nodes = (rxNode*)self->mNodes;

  u32 written = entryToPath(self, resolved, string, capacity);
  if (written == capacity) {
    string[capacity - 1] = '\0';
    return FALSE;
  }

  if (rxNodeIsFolder(nodes[resolved])) {
    if (written == capacity - 1) {
      string[written] = '\0';
      return FALSE;
    }

    string[written++] = '/';
  }

  string[written] = '\0';
  return TRUE;
}

inline BOOL __rxGetCurrentPath(rxArchive* self, char* string, u32 capacity) {
  return __rxMakePath(self, self->mCurrentPath, string, capacity);
}

void* ARCGetStartAddrInMem(const rxArchiveFile* self) {
  return (char*)(self->parent->mHeader) + self->offset;
}

s32 ARCGetStartOffset(const rxArchiveFile* self) { return self->offset; }

u32 ARCGetLength(const rxArchiveFile* self) { return self->size; }

BOOL ARCClose(rxArchiveFile* self) { return TRUE; }

BOOL ARCChangeDir(rxArchive* self, const char* path) {
  const s32 resolved = ARCConvertPathToEntrynum((rxArchive*)self, path);
  rxNode* nodes = (rxNode*)self->mNodes;

  if (!rxEntryHandleIsValid(resolved) || !rxNodeIsFolder(nodes[resolved]))
    return FALSE;

  self->mCurrentPath = resolved;
  return TRUE;
}

BOOL ARCOpenDir(const rxArchive* self, const char* path,
                              rxArchiveFolderRange* pOut) {
  const s32 resolved = ARCConvertPathToEntrynum((rxArchive*)self, path);
  const rxNode* nodes = self->mNodes;

  if (resolved < 0 || (nodes[resolved].packed_type_name & 0xff000000) == 0)
    return FALSE;

  pOut->parent = (rxArchive*)self;
  pOut->path_begin = resolved;
  pOut->path_it = resolved + 1;
  pOut->path_end = nodes[resolved].folder.sibling_next;
  return TRUE;
}

BOOL ARCReadDir(rxArchiveFolderRange* self,
                              rxArchiveEntry* pOut) {
  u32 it;        // regalloc fun!
  rxNode* nodes; // this must not be const lest regalloc change and the function
                 // grow in size

  rxArchive* arc = self->parent;
  nodes = (rxNode*)arc->mNodes;

  it = self->path_it;

  // while (A) produces a nop
  while (TRUE) {
    if (it <= self->path_begin || self->path_end <= it)
      return FALSE;

    pOut->parent = arc;
    pOut->path = it;
    // All non-file entries are folders.
    // Collapse to one specific value.
    pOut->node_type = rxNodeIsFolder(nodes[it]) //
                          ? RX_ARCHIVE_FOLDER
                          : RX_ARCHIVE_FILE;
    pOut->name = arc->mStrings + nodes[it].name;

    // skip '.' directories
    if (pOut->name[0] == '.' && pOut->name[1] == '\0') {
      ++it;
      continue;
    }

    self->path_it = rxNodeIsFolder(nodes[it]) //
                        ? nodes[it].folder.sibling_next
                        : it + 1;
    return TRUE;
  }
}

BOOL ARCCloseDir(rxArchiveFolderRange* self) { return TRUE; }
