* File:  E16.GSOS
*
* These equates can be used with the GSOS.MACS in the MACRO.LIBRARY
* directory.  You can also copy the data structures at the end of this
* file directly into your own source files.
*
*-----------------------------------------------
* File access - CreateRec, OpenRec access and requestAccess fields

readEnable = $0001 ;read enable bit:
writeEnable = $0002 ;write enable bit:
backupNeeded = $0020 ;backup needed bit:must be '0' in requestAccess field )
renameEnable = $0040 ;rename enable bit:
destroyEnable = $0080 ;read enable  bit:

* base - > setMark = ...

startPlus = $0000 ;base - setMark = displacement
eofMinus = $0001 ;base - setMark = eof - displacement
markPlus = $0002 ;base - setMark = mark + displacement
markMinus = $0003 ;base - setMark = mark - displacement

* cachePriority

noCache = $0000 ;cachePriority - do not cache blocks invloved in this read
cache = $0001 ;cachePriority - cache blocks invloved in this read if possible

*-----------------------------------------------
* GS/OS Error codes

badSystemCall = $0001 ;bad system call number
invalidPcount = $0004 ;invalid parameter count
gsosActive = $0007 ;GS/OS already active
devNotFound = $0010 ;device not found
invalidDevNum = $0011 ;invalid device number
drvrBadReq = $0020 ;bad request or command
drvrBadCode = $0021 ;bad control or status code
drvrBadParm = $0022 ;bad call parameter
drvrNotOpen = $0023 ;character device not open
drvrPriorOpen = $0024 ;character device already open
irqTableFull = $0025 ;interrupt table full
drvrNoResrc = $0026 ;resources not available
drvrIOError = $0027 ;I/O error
drvrNoDevice = $0028 ;device not connected
drvrBusy = $0029 ;call aborted, driver is busy
drvrWrtProt = $002B ;device is write protected
drvrBadCount = $002C ;invalid byte count
drvrBadBlock = $002D ;invalid block address
drvrDiskSwitch = $002E ;disk has been switched
drvrOffLine = $002F ;device off line/ no media present
badPathSyntax = $0040 ;invalid pathname syntax
invalidRefNum = $0043 ;invalid reference number
pathNotFound = $0044 ;subdirectory does not exist
volNotFound = $0045 ;volume not found
fileNotFound = $0046 ;file not found
dupPathname = $0047 ;create or rename with existing name
volumeFull = $0048 ;volume full error
volDirFull = $0049 ;volume directory full
badFileFormat = $004A ;version error (incompatible file format)
badStoreType = $004B ;unsupported (or incorrect) storage type
eofEncountered = $004C ;end-of-file encountered
outOfRange = $004D ;position out of range
invalidAccess = $004E ;access not allowed
buffTooSmall = $004F ;buffer too small
fileBusy = $0050 ;file is already open
dirError = $0051 ;directory error
unknownVol = $0052 ;unknown volume type
paramRangeErr = $0053 ;parameter out of range
outOfMem = $0054 ;out of memory
dupVolume = $0057 ;duplicate volume name
notBlockDev = $0058 ;not a block device
invalidLevel = $0059 ;specifield level outside legal range
damagedBitMap = $005A ;block number too large
badPathNames = $005B ;invalid pathnames for ChangePath
notSystemFile = $005C ;not an executable file
osUnsupported = $005D ;Operating System not supported
stackOverflow = $005F ;too many applications on stack
dataUnavail = $0060 ;Data unavailable
endOfDir = $0061 ;end of directory has been reached
invalidClass = $0062 ;invalid FST call class
resNotFound = $0063 ;file does not contain required resource

*-----------------------------------------------
* FileSysID's

proDOS = $0001 ;ProDOS/SOS
dos33 = $0002 ;DOS 3.3
dos32 = $0003 ;DOS 3.2
dos31 = $0003 ;DOS 3.1
appleIIPascal = $0004 ;Apple II Pascal
mfs = $0005 ;Macintosh (flat file system)
hfs = $0006 ;Macintosh (hierarchical file system)
lisa = $0007 ;Lisa file system
appleCPM = $0008 ;Apple CP/M
charFST = $0009 ;Character FST
msDOS = $000A ;MS/DOS
highSierra = $000B ;High Sierra

*  fileSysID (NEW FOR GSOS 5.0)

ProDOSFSID = $01 ;ProDOS/SOS
dos33FSID = $02 ;DOS 3.3
dos32FSID = $03 ;DOS 3.2
dos31FSID = $03 ;DOS 3.1
appleIIPascalFSID = $04 ;Apple II Pascal
mfsFSID = $05 ;Macintosh (flat file system)
hfsFSID = $06 ;Macintosh (hierarchical file system)
lisaFSID = $07 ;Lisa file system
appleCPMFSID = $08 ;Apple CP/M
charFSTFSID = $09 ;Character FST
msDOSFSID = $0A ;MS/DOS
highSierraFSID = $0B ;High Sierra
ISO9660FSID = $0C ;ISO 9660
AppleShare = $0D ;AppleShare

* FSTInfo.attributes

characterFST = $4000 ;character FST
ucFST = $8000 ;SCM should upper case pathnames before
; passing them to the FST
* QuitRec.flags

onStack = $8000 ;place state information about quitting
; program on the quit return stack
restartable = $4000 ;the quitting program is capable of being
; restarted from its dormant memory
* StorageType

seedling = $0001 ;standard file with seedling structure
standardFile = $01 ;standard file type (no resource fork)
sapling = $0002 ;standard file with sapling structure
tree = $0003 ;standard file with tree structure
pascalRegion = $0004 ;UCSD Pascal region on a partitioned disk
extendedFile = $0005 ;extended file type (with resource fork)
directoryFile = $000D ;volume directory or subdirectory file

* version

minorRelNum = $00FF ;version - minor release number
majorRelNum = $7F00 ;version - major release number
finalRel = $8000 ;version - final release

isFileExtended = $8000

*-----------------------------------------------
*  GSOS Call ID numbers, as is for class '0'
*
*  'OR' these numbers with $2000 for class '1'
*     See the macros iGSOS and sGSOS.
*
*  NOTE: The v4.0 and v5.0 calls are identical with
*        the exception that the APW v5.0 macros have
*        'GS' appended to the end of each call name.

_Create = $0001
_Destroy = $0002
_OSShutdown = $2003 ;class '1' only
_ChangePath = $0004
_SetFileInfo = $0005
_GetFileInfo = $0006
_Volume = $0008
_SetPrefix = $0009
_GetPrefix = $000A
_ClearBackupBit = $000B
_SetSysPrefs = $200C ;class '1' only
_Null = $200D ;class '1' only
_ExpandPath = $200E ;class '1' only
_GetSysPrefs = $200F ;class '1' only
_Open = $0010
_Newline = $0011
_Read = $0012
_Write = $0013
_Close = $0014
_Flush = $0015
_SetMark = $0016
_GetMark = $0017
_SetEOF = $0018
_GetEOF = $0019
_SetLevel = $001A
_GetLevel = $001B
_GetDirEntry = $001C
_BeginSession = $201D ;class '1' only
_EndSession = $201E ;class '1' only
_SessionStatus = $201F ;class '1' only
_GetDevNumber = $0020
_GetLastDev = $0021
_ReadBlock = $0022 ;class '0' only
_WriteBlock = $0023 ;class '0' only
_Format = $0024
_EraseDisk = $0025
_ResetCache = $2026 ;class '1' only
_GetName = $0027
_GetBootVol = $0028
_Quit = $0029
_GetVersion = $002A
_GetFSTInfo = $202B ;class '1' only
_DInfo = $002C
_DStatus = $202D ;class '1' only
_DControl = $202E ;class '1' only
_DRead = $202F ;class '1' only
_DWrite = $2030 ;class '1' only
_AllocInterrupt = $0031 ;P16 call
_BindInt = $2031 ;GS/OS call
_DeallocInterrupt = $0032 ;P16 call
_UnbindInt = $2032 'GS/OS call
_AddNotifyProc = $2034 ;class '1' only
_DelNotifyProc = $2035 ;class '1' only
_DRename = $2036 ;class '1' only
_GetStdRefNum = $2037 ;class '1' only
_GetRefNum = $2038 ;class '1' only
_GetRefInfo = $2039 ;class '1' only


*===============================================
* Class 1 parameter tables.
* (partial listing for reference only.)
* (also refer to the class_1 help file)

 DUM 0 ; Currently set so the following doesn't
; generate any code if you include this
; entire file in your source file with
; a PUT or USE.

ChangePathRec DA 0 ;pCount
 ADRL 0 ;pathname
 ADRL 0 ;newPathname

CreateRec DA 0 ;pCount
 ADRL 0 ;pathname
 DA 0 ;access
 DA 0 ;fileType
 ADRL 0 ;auxType
 DA 0 ;storageType
 ADRL 0 ;eof
 ADRL 0 ;resourceEOF

DAccessRec DA 0 ;pCount
 DA 0 ;devNum
 DA 0 ;code
 ADRL 0 ;list
 ADRL 0 ;requestCount
 ADRL 0 ;transferCount

DevNumRec DA 0 ;pCount
 ADRL 0 ;devName
 DA 0 ;devNum

DInfoRec DA 0 ;pCount
 DA 0 ;devNum
 ADRL 0 ;devName
 DA 0 ;characteristics
 ADRL 0 ;totalBlocks
 DA 0 ;slotNum
 DA 0 ;unitNum
 DA 0 ;version
 DA 0 ;deviceID
 DA 0 ;headLink
 DA 0 ;forwardLink

DIORec DA 0 ;pCount
 DA 0 ;devNum
 ADRL 0 ;buffer
 ADRL 0 ;requestCount
 ADRL 0 ;startingBlock
 DA 0 ;blockSize
 ADRL 0 ;transferCount

DirEntryRec DA 0 ;pCount
 DA 0 ;refNum
 DA 0 ;flags
 DA 0 ;base
 DA 0 ;displacement
 ADRL 0 ;name
 DA 0 ;entryNum
 DA 0 ;fileType
 ADRL 0 ;eof
 ADRL 0 ;blockCount
 DS 8 ;createDateTime
 DS 8 ;modDateTime
 DA 0 ;access
 ADRL 0 ;auxType
 DA 0 ;fileSysID
 ADRL 0 ;optionList
 ADRL 0 ;resourceEof
 ADRL 0 ;resourceBlocks

ExpandPathRec DA 0 ;pCount
 ADRL 0 ;inputPath
 ADRL 0 ;outputPath
 DA 0 ;flags

FileInfoRec DA 0 ;pCount
 ADRL 0 ;pathname
 DA 0 ;access
 DA 0 ;fileType
 ADRL 0 ;auxType
 DA 0 ;null/storageType
 DS 8 ;createDateTime
 DS 8 ;modDateTime
 ADRL 0 ;optionList
 ADRL 0 ;null/eof
 ADRL 0 ;null/blocksUsed
 ADRL 0 ;null/resourceEOF
 ADRL 0 ;null/resourceBlocks

FormatRec DA 0 ;pCount
 ADRL 0 ;devName
 ADRL 0 ;volName
 DA 0 ;fileSysID

FSTInfoRec DA 0 ;pCount
 DA 0 ;fstNum
 DA 0 ;fileSysId
 ADRL 0 ;fstName
 DA 0 ;version
 DA 0 ;attributes
 DA 0 ;blockSize
 ADRL 0 ;maxVolSize
 ADRL 0 ;maxFileSize

InterruptRec DA 0 ;pCount
 DA 0 ;intNum
 DA 0 ;vrn
 ADRL 0 ;intCode

IORec DA 0 ;pCount
 DA 0 ;refNum
 ADRL 0 ;dataBuffer
 ADRL 0 ;requestCount
 ADRL 0 ;transferCount
 DA 0 ;cachePriority

LevelRec DA 0 ;pCount
 DA 0 ;level

NameRec DA 0 ;pCount
 ADRL 0 ;pathname

NewlineRec DA 0 ;pCount
 DA 0 ;refNum
 DA 0 ;enableMask
 DA 0 ;numChars
 ADRL 0 ;newlineTable

OpenRec DA 0 ;pCount
 DA 0 ;refNum
 ADRL 0 ;pathname
 DA 0 ;requestAccess
 DA 0 ;resourceNumber
 DA 0 ;access
 DA 0 ;fileType
 ADRL 0 ;auxType
 DA 0 ;storageType
 DS 8 ;createDateTime
 DS 8 ;modDateTime
 ADRL 0 ;optionList
 ADRL 0 ;eof
 ADRL 0 ;blocksUsed
 ADRL 0 ;resourceEOF
 ADRL 0 ;resourceBlocks

PositionRec DA 0 ;pCount
 DA 0 ;refNum
 ADRL 0 ;position

PrefixRec DA 0 ;pCount
 DA 0 ;prefixNum
 ADRL 0 ;prefix

QuitRec DA 0 ;pCount
 ADRL 0 ;pathname
 DA 0 ;flags

RefNumRec DA 0 ;pCount
 DA 0 ;refNum

SetPositionRec DA 0 ;pCount
 DA 0 ;refNum
 DA 0 ;base
 ADRL 0 ;displacement

ShutdownRec DA 0 ;pCount
 DA 0 ;flag

TimeRec DB 0 ;second
 DB 0 ;minute
 DB 0 ;hour
 DB 0 ;year
 DB 0 ;day
 DB 0 ;month
 DB 0 ;extra
 DB 0 ;weekDay

VersionRec DA 0 ;pCount
 DA 0 ;version

VolumeRec DA 0 ;pCount
 ADRL 0 ;devName
 ADRL 0 ;volName
 ADRL 0 ;totalBlocks
 ADRL 0 ;freeBlocks
 DA 0 ;fileSysID
 DA 0 ;blockSize

 DEND ; End of dummy section...
