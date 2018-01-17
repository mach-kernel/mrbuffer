
; File:  E16.List
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

omemPtr equ $0 ; Pointer - MemRec - Pointer to string, or custom
omemFlag equ $4 ; Byte - MemRec - Bit Flag

olistFrameClr equ $00 ; Word - LColorTable - Frame color
olistNorTextClr equ $2 ; Word - LColorTable - Unhighlighted text
; color
olistSelTextClr equ $4 ; Word - LColorTable - Highlighted text c
;olor
olistNorBackClr equ $6 ; Word - LColorTable - Unhighlighted back
;ground color
olistSelBackClr equ $8 ; Word - LColorTable - Highlighted backgr
;aound color

; Front of ListCtlRec matches CtlRec
octlMemDraw equ $28 ; Pointer - ListCtlRec - Address of routine 
;to draw mem
octlMemHeight equ $2C ; Word - ListCtlRec - Member's Height in P
;ixels
octlMemSize equ $2E ; Word - ListCtlRec - Bytes in member record
octlList equ $30 ; MemRecPtr - ListCtlRec - Adress of first memb
;er record in array
octlListBar equ $34 ; CtlRecHndl - ListCtlRec - Handle of list c
;ontrlo's scroll bar control

olistRect equ $0 ; Rect - ListRec - Enclosing Rectangle
olistSize equ $8 ; Word - ListRec - Number of List Members
olistView equ $A ; Word - ListRec - Max Viewable members
olistType equ $C ; Word - ListRec - Bit Flag
olistStart equ $E ; Word - ListRec - First member in view
olistCtl equ $10 ; CtlRecHndl - ListRec - List control's handle
olistDraw equ $14 ; Pointer - ListRec - Adress of Custum drawing
; routine
olistMemHeight equ $18 ; Word - ListRec - Height of list members
olistMemSize equ $1A ; Word - ListRec - Size of Member Records
olistPointer equ $1C ; MemRecPtr - ListRec - Pointer to first el
;ement in MemRec[]
olistRefCon equ $20 ; Long - ListRec - becomes Control's refCon
olistScrollClr equ $24 ; BarColorsPtr - ListRec - Color table fo
;r list's scroll bar

cString equ $0001 ; ListType bit mask - null terminated string t
;ype
LIST_STRG equ $0001 ; ListType bit mask - null terminated string
; type
selectOnlyOne equ $0002 ; ListType bit mask - only one selection
; allowed
LIST_SELECT equ $0002 ; ListType bit mask - single selection onl
;y

memDisabled equ $40 ; memFlag - Sets member flag to disabled
memSelected equ $80 ; memFlag - Sets member flag to selected
