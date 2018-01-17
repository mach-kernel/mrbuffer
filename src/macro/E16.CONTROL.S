
; File: E16.Control
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

obarOutline equ $00 ; Word - BarColors - color for outlining bar
;, arrows, and thumb
obarNorArrow equ $02 ; Word - BarColors - color of arrows when n
;ot highlighted
obarSelArrow equ $04 ; Word - BarColors - color of arrows when h
;ighlighted
obarArrowBack equ $06 ; Word - BarColors - color of arrow box's 
;background
obarNorThumb equ $08 ; Word - BarColors - color of thumb's backg
;round when not highlighted
obarSelThumb equ $0A ; Word - BarColors - color of thumb's backg
;round when highlighted
obarPageRgn equ $0C ; Word - BarColors - color and pattern page 
;region: high byte - 1= dither, 0 = solid
obarInactive equ $0E ; Word - BarColors - color of scroll bar's 
;interior when inactive

oboxReserved equ $00 ; Word - BoxColors - reserved
oboxNor equ $02 ; Word - BoxColors - color of box when not check
;ed
oboxSel equ $04 ; Word - BoxColors - color of box when checked
oboxTitle equ $06 ; Word - BoxColors - color of check box's titl
;e

obttnOutline equ $00 ; Word - BttnColors - color of outline
obttnNorBack equ $02 ; Word - BttnColors - color of background w
;hen not selected
obttnSelBack equ $04 ; Word - BttnColors - color of background w
;hen selected
obttnNorText equ $06 ; Word - BttnColors - color of title's text
; when not selected
obttnSelText equ $08 ; Word - BttnColors - color of title's text
; when selected

oradReserved equ $00 ; Word - RadioColors - reserved
oradNor equ $02 ; Word - RadioColors - color of radio button whe
;n off
oradSel equ $04 ; Word - RadioColors - color of radio button whe
;n on
oradTitle equ $06 ; Word - RadioColors - color of radio button's
; title text

octlNext equ $00 ; CtlRecHndl - CtlRec - Handle of next control.
octlOwner equ $04 ; GrafPortPtr - CtlRec - Pointer to control's 
;window.
octlRect equ $08 ; Rect - CtlRec - Enclosing rectangle.
octlFlag equ $10 ; Byte - CtlRec - Bit flags.
octlHilite equ $11 ; Byte - CtlRec - Highlighted part.
octlValue equ $12 ; Integer - CtlRec - Control's value.
octlProc equ $14 ; Pointer - CtlRec - Control's definition proce
;dure.
octlAction equ $18 ; Pointer - CtlRec - Control's action procedu
;re.
octlData equ $1C ; Longint - CtlRec - Reserved for CtrlProc's us
;e.
octlRefCon equ $20 ; Longint - CtlRec - Reserved for application
;'s use.
octlColor equ $24 ; Pointer - CtlRec - Pointer to appropriate co
;lor table.

oboundRect equ $00 ; Rect - LimitBlk - Drag bounds.
oslopRect equ $08 ; Rect - LimitBlk - Cursor bounds.
oaxisParam equ $10 ; Word - LimitBlk - Movement constrains.
odragPatt equ $12 ; Pointer - LimitBlk - Pointer to 32 byte Patt
;ern for drag outline.

noConstraint equ $0000 ; Axis Parameter - No constraint on movem
;ent.
hAxisOnly equ $0001 ; Axis Parameter - Horizontal axis only.
vAxisOnly equ $0002 ; Axis Parameter - Vertical axis only.

simpRound equ $0000 ; CtlFlag - Simple button flag
upFlag equ $0001 ; CtlFlag - Scroll bar flag.
boldButton equ $0001 ; CtlFlag - Bold round cornered outlined bu
;tton.
simpBRound equ $0001 ; CtlFlag - Simple button flag
downFlag equ $0002 ; CtlFlag - Scroll bar flag.
simpSquare equ $0002 ; CtlFlag - Simple button flag
simpDropSquare equ $0003 ; CtlFlag - Simple button flag
leftFlag equ $0004 ; CtlFlag - Scroll bar flag.
rightFlag equ $0008 ; CtlFlag - Scroll bar flag.
dirScroll equ $0010 ; CtlFlag - Scroll bar flag.
horScroll equ $0010 ; CtlFlag - Scroll bar flag.
family equ $007F ; CtlFlag - Mask for radio button family number
ctlInVis equ $0080 ; CtlFlag - invisible mask for any type of co
;ntrol

simpleProc equ $00000000 ; CtlProc -
checkProc equ $02000000 ; CtlProc -
radioProc equ $04000000 ; CtlProc -
scrollProc equ $06000000 ; CtlProc -
growProc equ $08000000 ; CtlProc -

drawCtl equ $0000 ; DefProc - Draw control command.
calcCRect equ $0001 ; DefProc - Compute drag RECT command.
testCtl equ $0002 ; DefProc - Hit test command.
initCtl equ $0003 ; DefProc - Initialize command.
dispCtl equ $0004 ; DefProc - Dispose command.
posCtl equ $0005 ; DefProc - Move indicator command.
thumbCtl equ $0006 ; DefProc - Compute drag parameters command.
dragCtl equ $0007 ; DefProc - Drag command.
autoTrack equ $0008 ; DefProc - Action command.
newValue equ $0009 ; DefProc - Set new value command.
setParams equ $000A ; DefProc - Set new parameters command.
moveCtl equ $000B ; DefProc - Move command.
recSize equ $000C ; DefProc - Return record size command.

noHilite equ $0000 ; hiliteState - Param to HiliteControl
inactiveHilite equ $00FF ; hiliteState - Param to HiliteControl

noPart equ $0000 ; PartCode -
simpleButton equ $0002 ; PartCode -
checkBox equ $0003 ; PartCode -
radioButton equ $0004 ; PartCode -
upArrow equ $0005 ; PartCode -
downArrow equ $0006 ; PartCode -
pageUp equ $0007 ; PartCode -
pageDown equ $0008 ; PartCode -
growBox equ $000A ; PartCode -
thumb equ $0081 ; PartCode -
