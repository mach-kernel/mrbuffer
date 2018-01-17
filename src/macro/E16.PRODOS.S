
; File:  E16.ProDOS
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

; ProDOS errors
invalidCallNum equ $01 ; ProDOS error - invalid call number
unclaimedIntErr equ $01 ; ProDOS error - fatal error - unclaimed
; interrupt
badPBlockPtr equ $05 ; ProDOS error - call pointer out of bounds
pdosActiveErr equ $06 ; ProDOS error - ProDOS is active
vcbUnusable equ $0A ; ProDOS error - fatal error - VCB unusable
fcbUnusable equ $0B ; ProDOS error - fatal error - FCB unusable
badBlockZero equ $0C ; ProDOS error - fatal error - block zero a
;llocated illegally
shdwInterruptErr equ $0D ; ProDOS error - fatal error - interrup
;t occured while I/O shadowing off
devNotFound equ $10 ; ProDOS error - device not found
badDevRefNum equ $11 ; ProDOS error - invalid device reference n
;umber
badReqCode equ $20 ; ProDOS error - invalid request code
intTableFull equ $25 ; ProDOS error - interrupt table full
invalidOperation equ $26 ; ProDOS error - invalid operation
ioError equ $27 ; ProDOS error - I/O error
noDevConnect equ $28 ; ProDOS error - no device connected
writeProtectErr equ $2B ; ProDOS error - write protect error
diskSwitchErr equ $2E ; ProDOS error - disk switched error
badPathname equ $40 ; ProDOS error - invalid pathname syntax
fcbFullErr equ $42 ; ProDOS error - FCB full error
badFileRefNum equ $43 ; ProDOS error - invalid file reference nu
;mber
pathNotFound equ $44 ; ProDOS error - path not found
volumeNotFound equ $45 ; ProDOS error - volume not found
fileNotFound equ $46 ; ProDOS error - file not found
dupFileName equ $47 ; ProDOS error - duplicate file name
volumeFullErr equ $48 ; ProDOS error - volume full error
dirFullErr equ $49 ; ProDOS error - directory full error
versionErr equ $4A ; ProDOS error - version error (incompatible 
;file format)
badStoreType equ $4B ; ProDOS error - unsupported (or incorrect)
; storage type
eofEncountered equ $4C ; ProDOS error - end-of-file encountered
positionRangeErr equ $4D ; ProDOS error - position out of range
accessErr equ $4E ; ProDOS error - access not allowed
fileOpenErr equ $50 ; ProDOS error - file is open
dirDamaged equ $51 ; ProDOS error - directory structure is damag
;ed
badVolType equ $52 ; ProDOS error - unsupported volume type
paramRangeErr equ $53 ; ProDOS error - parameter out of range
memoryFullErr equ $54 ; ProDOS error - out of memory
vcbFullErr equ $55 ; ProDOS error - VCB full error
dupVolumeErr equ $57 ; ProDOS error - duplicate volume error
notBlkDevErr equ $58 ; ProDOS error - not a blocked device
invalidLevel equ $59 ; ProDOS error - invalid level
blkNumRangeErr equ $5A ; ProDOS error - block number out of rang
;e
notSameVolErr equ $5B ; ProDOS error - different volumes found o
;n ChangePath call
notExecSysFile equ $5C ; ProDOS error - not an executable system
; file

oblockDevNum equ $00 ; BlockRec -      [Word]
oblockDataBuffer equ $02 ; BlockRec -      [Ptr]
oblockNum equ $06 ; BlockRec -      [Longint]

odevName equ $00 ; DevNumRec -      [Ptr]
odevNum equ $04 ; DevNumRec -      [Word]

oeofRefNum equ $00 ; EofRec -      [Word]
oeofPosition equ $02 ; EofRec -      [Longint]

ofileRefNum equ $00 ; FileIORec -      [Word]
odataBuffer equ $02 ; FileIORec -      [Ptr]
orequestCount equ $06 ; FileIORec -      [Longint]
otransferCount equ $0A ; FileIORec -      [Longint]

ofrPathname equ $00 ; FileRec -      [Ptr]
ofrAccess equ $04 ; FileRec -       [Word]
ofrFileType equ $06 ; FileRec -      [Word]
ofrAuxType equ $08 ; FileRec -      [Longint]
ofrStorageType equ $0A ; FileRec -      [Word]
ofrCreateDate equ $0C ; FileRec -      [Word]
ofrCreateTime equ $0E ; FileRec -      [Word]
ofrModDate equ $10 ; FileRec -      [Word]
ofrModTime equ $12 ; FileRec -      [Word]
ofrBlocksUsed equ $14 ; FileRec -      [Long]

;odevName         GEQU $00 ; FormatRec/EraseDiskRec- device name
; pointer  [pointer]
ovolName equ $04 ; FormatRec/EraseDiskRec - device name pointer 
; [pointer]
ofileSysID equ $08 ; FormatRec/EraseDiskRec - file system ID  [w
;ord]

ointNum equ $00 ; InterruptRec -      [Word]
ointCode equ $02 ; InterruptRec -      [Ptr]

olevel equ $00 ; LevelRec -      [Word]

omarkRefNum equ $00 ; MarkRec -      [Word]
oposition equ $02 ; MarkRec -      [Long]

onewLRefNum equ $00 ; NewlineRec -      [Word]
oenableMask equ $02 ; NewlineRec -      [Word]
onewlineChar equ $04 ; NewlineRec -      [Word]

oopenRefNum equ $00 ; OpenRec -      [Word]
oopenPathname equ $02 ; OpenRec -      [Ptr]
oioBuffer equ $06 ; OpenRec -      [Handle]

;opathname        GEQU $00 ; PathNameRec -      [Ptr]
onewPathname equ $04 ; PathNameRec -      [Ptr]

oprefixNum equ $00 ; PrefixRec -      [Word]
oprefix equ $02 ; PrefixRec -      [Ptr]

opdVersion equ $00 ; VersionRec -      [Word]

ovrDeviceName equ $00 ; VolumeRec -      [Ptr]
ovrVolName equ $04 ; VolumeRec -      [Ptr]
ovrTotalBlocks equ $08 ; VolumeRec -      [Long]
ovrFreeBlocks equ $0C ; VolumeRec -      [Long]
ovrFileSysID equ $10 ; VolumeRec -      [Word]

odiDevNum equ $00 ; DInfoRec -    [Word]
odiDevName equ $02 ; DInfoRec -  [Ptr]

odeRefNum equ $00 ; DirEntryRec - [Word]
odeReserved equ $02 ; DirEntryRec - [Word]
odeBase equ $04 ; DirEntryRec - [Word]
odeDisplacement equ $06 ; DirEntryRec - [Word]
odeNameBuffer equ $08 ; DirEntryRec - [Ptr]
odeEntryNum equ $0C ; DirEntryRec - [Word]
odeFileType equ $0E ; DirEntryRec - [Word]
odeEOF equ $10 ; DirEntryRec - [Long]
odeBlockCount equ $14 ; DirEntryRec - [Long]
odeCreateTime equ $18 ; DirEntryRec - [TimeRec]
odeModTime equ $20 ; DirEntryRec - [TimeRec]
odeAccess equ $28 ; DirEntryRec - [Word]
odeAuxType equ $2A ; DirEntryRec - [Long]
odeFileSysID equ $2E ; DirEntryRec - [Word]
