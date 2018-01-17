
; File:  E16.Quickdraw
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

alreadyInitialized equ $0401 ; Quickdraw error - Quickdraw alrea
;dy initialized
cannotReset equ $0402 ; Quickdraw error - never used
notInitialized equ $0403 ; Quickdraw error - Quickdraw not initi
;alized
screenReserved equ $0410 ; Quickdraw error - screen reserved
badRect equ $0411 ; Quickdraw error - bad rectangle
notEqualChunkiness equ $0420 ; Quickdraw error - Chunkiness is n
;ot equal
rgnAlreadyOpen equ $0430 ; Quickdraw error - region is already o
;pen
rgnNotOpen equ $0431 ; Quickdraw error - region is not open
rgnScanOverflow equ $0432 ; Quickdraw error - region scan overfl
;ow
rgnFull equ $0433 ; Quickdraw error - region is full
polyAlreadyOpen equ $0440 ; Quickdraw error - poly is already op
;en
polyNotOpen equ $0441 ; Quickdraw error - poly is not open
polyTooBig equ $0442 ; Quickdraw error - poly is too big
badTableNum equ $0450 ; Quickdraw error - bad table number
badColorNum equ $0451 ; Quickdraw error - bad color number
badScanLine equ $0452 ; Quickdraw error - bad scan line
notImplemented equ $04FF ; Quickdraw error - not implemented

omaxWidth equ $0 ; Word - BufDimRec -
otextBufHeight equ $2 ; Word - BufDimRec -
otextBufferWords equ $4 ; Word - BufDimRec -
ofontWidth equ $6 ; Word - BufDimRec -

ooffseToMF equ $00 ; Word - Font - fully defined front of the Fo
;nt record.
ofamily equ $02 ; Word - Font -
ostyle equ $04 ; TextStyle - Font -
osize equ $06 ; Word - Font -
oversion equ $08 ; Word - Font -
ofbrExtent equ $0A ; Word - Font -

ofgFontID equ $00 ; Word - FontGlobalsRecord - currently 12 byte
;s long, but may be expanded
ofgStyle equ $02 ; TextStyle - FontGlobalsRecord -
ofgSize equ $04 ; Word - FontGlobalsRecord -
ofgVersion equ $06 ; Word - FontGlobalsRecord -
ofgWidMax equ $08 ; Word - FontGlobalsRecord -
ofgFBRExtent equ $0A ; Word - FontGlobalsRecord -

oascent equ $00 ; Integer - FontInfoRecord -
odescent equ $02 ; Integer - FontInfoRecord -
owidMax equ $04 ; Integer - FontInfoRecord -
oleading equ $06 ; Integer - FontInfoRecord -

oportInfo equ $00 ; LocInfo - GrafPort -
oportRect equ $10 ; Rect - GrafPort - PortRect
oclipRgn equ $18 ; RgnHandle - GrafPort - Clip Rgn. Pointer
ovisRgn equ $1C ; RgnHandle - GrafPort - Vis. Rgn. Pointer
obkPat equ $20 ; Pattern - GrafPort - BackGround Pattern
opnLoc equ $40 ; Point - GrafPort - Pen Location
opnSize equ $44 ; Point - GrafPort - Pen Size
opnMode equ $48 ; Word - GrafPort - Pen Mode
opnPat equ $4A ; Pattern - GrafPort - Pen Pattern
opnMask equ $6A ; Mask - GrafPort - Pen Mask
opnVis equ $72 ; Word - GrafPort - Pen Visable
ofontHandle equ $74 ; FontHndl - GrafPort -
ofontID equ $78 ; FontID - GrafPort - Font ID
ofontFlags equ $7C ; Word - GrafPort - FontFlags
otxSize equ $7E ; Integer - GrafPort - Text Size
otxFace equ $80 ; TextStyle - GrafPort - Text Face
otxMode equ $82 ; Word - GrafPort - Text Mode
ospExtra equ $84 ; Fixed - GrafPort - Fixed Point Value
ochExtra equ $88 ; Fixed - GrafPort - Fixed Point Value
ofgColor equ $8C ; Word - GrafPort - ForeGround Color
obgColor equ $8E ; Word - GrafPort - BackGround Color
opicSave equ $90 ; Handle - GrafPort - PicSave
orgnSave equ $94 ; Handle - GrafPort - RgnSave
opolySave equ $98 ; Handle - GrafPort - PolySave
ografProcs equ $9C ; QdProcsPtr - GrafPort -
oarcRot equ $A0 ; Integer - GrafPort - ArcRot
ouserField equ $A2 ; Longint - GrafPort - UserField
osysField equ $A6 ; Longint - GrafPort - SysField

oportSCB equ $00 ; AnSCBByte - LocInfo -
oreserved equ $01 ; Byte - LocInfo -
optrToPixImage equ $02 ; Pointer - LocInfo - ImageRef
owidth equ $06 ; Word - LocInfo - Width
oboundsRect equ $08 ; Rect - LocInfo - BoundsRect

optrToSourceLocInfo equ $00 ; LocInfoPtr - PaintParam -
optrToDestLocInfo equ $04 ; LocInfoPtr - PaintParam -
optrToSourceRect equ $08 ; RectPtr - PaintParam -
optrToDestPoint equ $0C ; PointPtr - PaintParam -
omode equ $10 ; Word - PaintParam -
omaskHandle equ $12 ; Handle - PaintParam - clip region

opsPnLoc equ $00 ; Point - PenState -
opsPnSize equ $04 ; Point - PenState -
opsPnMode equ $08 ; Word - PenState -
opsPnPat equ $0A ; Pattern - PenState -
opsPnMask equ $2A ; Mask - PenState -

ostdText equ $00 ; Pointer - QDProcs -
ostdLine equ $04 ; Pointer - QDProcs -
ostdRect equ $08 ; Pointer - QDProcs -
ostdRRect equ $0C ; Pointer - QDProcs -
ostdOval equ $10 ; Pointer - QDProcs -
ostdArc equ $14 ; Pointer - QDProcs -
ostdPoly equ $18 ; Pointer - QDProcs -
ostdRgn equ $1C ; Pointer - QDProcs -
ostdPixels equ $20 ; Pointer - QDProcs -
ostdComment equ $24 ; Pointer - QDProcs -
ostdTxMeas equ $28 ; Pointer - QDProcs -
ostdTxBnds equ $2C ; Pointer - QDProcs -
ostdGetPic equ $30 ; Pointer - QDProcs -
ostdPutPic equ $34 ; Pointer - QDProcs -

orfFamNum equ $00 ; Word - RomFontRec -
orfFamStyle equ $02 ; Word - RomFontRec -
orfSize equ $04 ; Word - RomFontRec -
orfFontHandle equ $06 ; FontHndl - RomFontRec -
orfNamePtr equ $0A ; Pointer - RomFontRec -
orfFBRExtent equ $0E ; Word - RomFontRec -

colorTable equ $0F ; AnSCBByte - Mask for SCB color table
scbReserved equ $10 ; AnSCBByte - Mask for SCB reserved bit
scbFill equ $20 ; AnSCBByte - Mask for SCB fill bit
scbInterrupt equ $40 ; AnSCBByte - Mask for SCB interrupt bit
scbColorMode equ $80 ; AnSCBByte - Mask for SCB color mode bit

table320 equ $32 ; ColorData -  (val=size)
table640 equ $32 ; ColorData -  (val=size)
maskSize equ $08 ; GrafPort - Mask Size (val=size)
locSize equ $10 ; GrafPort - Loc Size (val=size)
patsize equ $20 ; GrafPort - Pattern Size (val=size)
pnStateSize equ $32 ; GrafPort - Pen State Size (Val=size)
portSize equ $AA ; GrafPort - Size of GrafPort

blueMask equ $000F ; ColorValue - Mask for Blue nibble
greenMask equ $00F0 ; ColorValue - Mask for green nibble
redMask equ $0F00 ; ColorValue - Mask for red nibble

widMaxSize equ $0001 ; FontFlags -
zeroSize equ $0002 ; FontFlags -

black equ $000 ; MasterColors - These work in 320 and 640 mode
blue equ $00F ; MasterColors - These work in 320 and 640 mode
darkGreen320 equ $080 ; MasterColors - These work in 320 mode
green320 equ $0E0 ; MasterColors - These work in 320 mode
green640 equ $0F0 ; MasterColors - These work in 640 mode
lightBlue320 equ $4DF ; MasterColors - These work in 320 mode
purple320 equ $72C ; MasterColors - These work in 320 mode
darkGray320 equ $777 ; MasterColors - These work in 320 mode
periwinkleBlue320 equ $78F ; MasterColors - These work in 320 mo
;de
brown320 equ $841 ; MasterColors - These work in 320 mode
lightGray320 equ $0CCC ; MasterColors - These work in 320 mode
red320 equ $0D00 ; MasterColors - These work in 320 mode
lilac320 equ $0DAF ; MasterColors - These work in 320 mode
red640 equ $0F00 ; MasterColors - These work in 640 mode
orange320 equ $0F70 ; MasterColors - These work in 320 mode
flesh320 equ $0FA9 ; MasterColors - These work in 320 mode
yellow equ $0FF0 ; MasterColors - These work in 320 and 640 mode
white equ $0FFF ; MasterColors - These work in 320 and 640 mode

modeCopy equ $0000 ; PenModeDATA -
modeOR equ $0001 ; PenModeDATA -
modeXOR equ $0002 ; PenModeDATA -
modeBIC equ $0003 ; PenModeDATA -
modeForeCopy equ $0004 ; PenModeDATA -
modeForeOR equ $0005 ; PenModeDATA -
modeForeXOR equ $0006 ; PenModeDATA -
modeForeBIC equ $0007 ; PenModeDATA -
modeNOT equ $8000 ; PenModeDATA -
notCopy equ $8000 ; PenModeDATA -
notOR equ $8001 ; PenModeDATA -
notXOR equ $8002 ; PenModeDATA -
notBIC equ $8003 ; PenModeDATA -
notForeCOPY equ $8004 ; PenModeDATA -
notForeOR equ $8005 ; PenModeDATA -
notForeXOR equ $8006 ; PenModeDATA -
notForeBIC equ $8007 ; PenModeDATA -

mode320 equ $0000 ; QDStartup - Argument to QDStartup
mode640 equ $0080 ; QDStartup - Argument to QDStartup

boldMask equ $0001 ; TextStyle - Mask for bold bit
italicMask equ $0002 ; TextStyle - Mask for italic bit
underlineMask equ $0004 ; TextStyle - Mask for underline bit
outlineMask equ $0008 ; TextStyle - Mask for outline bit
shadowMask equ $0010 ; TextStyle - Mask for shadow bit
