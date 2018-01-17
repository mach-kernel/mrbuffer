
; File:  E16.Menu
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

omenuID equ $00 ; Word - MenuRec - Menu's ID number.
omenuWidth equ $02 ; Word - MenuRec - Width of menu.
omenuHeight equ $04 ; Word - MenuRec - Height of menu.
omenuProc equ $06 ; Pointer - MenuRec - Menu's definition proced
;ure.
omenuFlag equ $0A ; Byte - MenuRec - Bit flags.
omenuRes equ $0B ; Byte - MenuRec -
ofirstItem equ $0C ; Byte - MenuRec -
onumOfItems equ $0D ; Byte - MenuRec -
otitleWidth equ $0E ; Word - MenuRec - Width of menu's title.
otitleName equ $10 ; Pointer - MenuRec - Menu's title.

mDrawMsg equ $0000 ; MenuDefProcCodes -
mChooseMsg equ $0001 ; MenuDefProcCodes -
mSizeMsg equ $0002 ; MenuDefProcCodes -
mDrawTitle equ $0003 ; MenuDefProcCodes -
mDrawMItem equ $0004 ; MenuDefProcCodes -
mGetMItemID equ $0005 ; MenuDefProcCodes -

mInvis equ $0004 ; MenuFlag -
mCustom equ $0010 ; MenuFlag -
mXor equ $0020 ; MenuFlag -
mSelected equ $0040 ; MenuFlag -
mDisabled equ $0080 ; MenuFlag -

customMenu equ $0010 ; MenuFlagMasks -
xorMItemHilite equ $0020 ; MenuFlagMasks -
xorTitleHilite equ $0020 ; MenuFlagMasks -
underMItem equ $0040 ; MenuFlagMasks -
disableMenu equ $0080 ; MenuFlagMasks -
enableMenu equ $FF7F ; MenuFlagMasks -
noUnderMItem equ $FFBF ; MenuFlagMasks -
colorMItemHilite equ $FFDF ; MenuFlagMasks -
colorTitleHilite equ $FFDF ; MenuFlagMasks -
colorReplace equ $FFDF ; MenuFlagMasks -
standardMenu equ $FFEF ; MenuFlagMasks -
