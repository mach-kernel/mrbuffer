
; File:  E16.Font
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

fmDupStartUpErr equ $1B01 ; Font error - duplicate FMStartUp cal
;l
fmResetErr equ $1B02 ; Font error - can't reset the Font Manager
fmNotActiveErr equ $1B03 ; Font error - Font Manager not active
fmFamNotFndErr equ $1B04 ; Font error - family not found
fmFontNtFndErr equ $1B05 ; Font error - font not found
fmFontMemErr equ $1B06 ; Font error - font not in memory
fmSysFontErr equ $1B07 ; Font error - system font cannot be purg
;eable
fmBadFamNumErr equ $1B08 ; Font error - illegal family number
fmBadSizeErr equ $1B09 ; Font error - illegal size
fmBadNameErr equ $1B0A ; Font error - illegal name length
fmMenuErr equ $1B0B ; Font error - fix font menu never called
fmScaleSizeErr equ $1B0C ; Font error - scaled size of font exee
;ds limits

ofamNum equ $00 ; Word - FontID -
ofontStyle equ $02 ; Byte - FontID -
ofontSize equ $03 ; Byte - FontID -

oresultID equ $00 ; FontID - FontStatRec -
oresultStats equ $04 ; Word - FontStatRec -

newYork equ $0002 ; Family Number -
geneva equ $0003 ; Family Number -
monaco equ $0004 ; Family Number -
venice equ $0005 ; Family Number -
london equ $0006 ; Family Number -
athens equ $0007 ; Family Number -
sanFran equ $0008 ; Family Number -
toronto equ $0009 ; Family Number -
cairo equ $000B ; Family Number -
losAngeles equ $000C ; Family Number -
times equ $0014 ; Family Number -
helvetica equ $0015 ; Family Number -
courier equ $0016 ; Family Number -
symbol equ $0017 ; Family Number -
taliesin equ $0018 ; Family Number -
shaston equ $FFFE ; Family Number -

baseOnlyBit equ $0020 ; FamSpecBits -
notBaseBit equ $0020 ; FamStatBits -
memOnlyBit equ $0001 ; FontSpecBits -
realOnlyBit equ $0002 ; FontSpecBits -
anyFamBit equ $0004 ; FontSpecBits -
anyStyleBit equ $0008 ; FontSpecBits -
anySizeBit equ $0010 ; FontSpecBits -
memBit equ $0001 ; FontStatBits -
unrealBit equ $0002 ; FontStatBits -
apFamBit equ $0004 ; FontStatBits -
apVarBit equ $0008 ; FontStatBits -
purgeBit equ $0010 ; FontStatBits -
notDiskBit equ $0020 ; FontStatBits -
notFoundBit equ $8000 ; FontStatBits -
dontScaleBit equ $0001 ; Scale Word -
