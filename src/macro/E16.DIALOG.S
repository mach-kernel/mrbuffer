
; File:  E16.Dialog
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

badItemType equ $150A ; Dialog error -
newItemFailed equ $150B ; Dialog error -
itemNotFound equ $150C ; Dialog error -
notModalDialog equ $150D ; Dialog error -

oatBoundsRect equ $00 ; Rect - AlertTemplate -
oatAlertID equ $08 ; Word - AlertTemplate -
oatStage1 equ $0A ; Byte - AlertTemplate -
oatStage2 equ $0B ; Byte - AlertTemplate -
oatStage3 equ $0C ; Byte - AlertTemplate -
oatStage4 equ $0D ; Byte - AlertTemplate -
oatItemList equ $0E ; ItemTempPtr - AlertTemplate - Null termina
;ted array

odtBoundsRect equ $00 ; Rect - DialogTemplate -
odtVisible equ $08 ; Boolean - DialogTemplate -
odtRefCon equ $0A ; Long - DialogTemplate -
odtItemList equ $0E ; ItemTempPtr - DialogTemplate - Null termin
;ated array

oiconRect equ $00 ; Rect - IconRecord -
oiconImage equ $08 ; Byte - IconRecord -

oitemID equ $00 ; Word - ItemTemplate -
oitemRect equ $02 ; Rect - ItemTemplate -
oitemType equ $0A ; Word - ItemTemplate -
oitemDescr equ $0C ; Pointer - ItemTemplate -
oitemValue equ $10 ; Word - ItemTemplate -
oitemFlag equ $12 ; Word - ItemTemplate -
oitemColor equ $14 ; CtlColorTablePtr - ItemTemplate -

odefProcParm equ $00 ; Longint - UserCtlItemPB -
otitleParm equ $04 ; Pointer - UserCtlItemPB -
oparam2 equ $08 ; Word - UserCtlItemPB -
oparam1 equ $0A ; Word - UserCtlItemPB -

getInitView equ $0001 ; Command -
getInitTotal equ $0002 ; Command -
getInitValue equ $0003 ; Command -
scrollLineUp equ $0004 ; Command -
scrollLineDown equ $0005 ; Command -
scrollPageUp equ $0006 ; Command -
scrollPageDown equ $0007 ; Command -
scrollThumb equ $0008 ; Command -

buttonItem equ $000A ; Item Type -
checkItem equ $000B ; Item Type -
radioItem equ $000C ; Item Type -
scrollBarItem equ $000D ; Item Type -
userCtlItem equ $000E ; Item Type -
statText equ $000F ; Item Type -
longStatText equ $0010 ; Item Type -
editLine equ $0011 ; Item Type -
iconItem equ $0012 ; Item Type -
picItem equ $0013 ; Item Type -
userItem equ $0014 ; Item Type -
userCtlItem2 equ $0015 ; Item Type -
longStatText2 equ $0016 ;  Item Type -
itemDisable equ $8000 ; Item Type -

minItemType equ $000A ; Item Type Range -
maxItemType equ $0016 ; Item Type Range -

ok equ $0001 ; ItemID -
cancel equ $0002 ; ItemID -

inButton equ $0002 ; ModalDialog2 - Part code
inCheckBox equ $0003 ; ModalDialog2 - Part code
inRadioButton equ $0004 ; ModalDialog2 - Part code
inUpArrow equ $0005 ; ModalDialog2 - Part code
inDownArrow equ $0006 ; ModalDialog2 - Part code
inPageUp equ $0007 ; ModalDialog2 - Part code
inPageDown equ $0008 ; ModalDialog2 - Part code
inStatText equ $0009 ; ModalDialog2 - Part code
inGrow equ $000A ; ModalDialog2 - Part code
inEditLine equ $000B ; ModalDialog2 - Part code
inUserItem equ $000C ; ModalDialog2 - Part code
inLongStatText equ $000D ; ModalDialog2 - Part code
inIconItem equ $000E ; ModalDialog2 - Part code
inLongStatText2 equ $000F ; ModalDialog2 -
inThumb equ $0081 ; ModalDialog2 - Part code

okDefault equ $0000 ; Stage Bit Vector -
cancelDefault equ $0040 ; Stage Bit Vector -
alertDrawn equ $0080 ; Stage Bit Vector -
