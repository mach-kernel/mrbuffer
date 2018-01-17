
; File:  E16.Window
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

paramLenErr equ $0E01 ; Window error - first word of parameter l
;ist is the wrong size
allocateErr equ $0E02 ; Window error - unable to allocate window
; record
taskMaskErr equ $0E03 ; Window error - bits 12-15 are not clear 
;in WmTaskMask field of WmTaskRec

owNext equ $00 ; GrafPortPtr - WindRec - Pointer to next window 
;Record.
oport equ $04 ; GrafPort - WindRec - Window's port.
owPadding equ $AE ; 16 Bytes - WindRec - Space for possible futu
;re expansion
owStrucRgn equ $BE ; RgnHandle - WindRec - Region of frame plus 
;content.
owContRgn equ $C2 ; RgnHandle - WindRec - Content region.
owUpdateRgn equ $C6 ; RgnHandle - WindRec - Update region.
owControls equ $CA ; CtlRecHndl - WindRec - Window's control lis
;t.
owFrameCtrls equ $CE ; CtlRecHndl - WindRec - Window frame's con
;trol list.
owFrame equ $D2 ; Word - WindRec - Bit flags.

oframeColor equ $00 ; Word - WindColor - Color of window frame.
otitleColor equ $02 ; Word - WindColor - Color of title and bar.
otBarColor equ $04 ; Word - WindColor - Color/pattern of title b
;ar.
ogrowColor equ $06 ; Word - WindColor - Color of grow box.
oinfoColor equ $08 ; Word - WindColor - Color of information bar
;.

oparamLength equ $00 ; Word - ParamList - Parameter to NewWindow
;.
owFrameBits equ $02 ; Word - ParamList - Parameter to NewWindow.
owTitle equ $04 ; Pointer - ParamList - Parameter to NewWindow.
owRefCon equ $08 ; Long - ParamList - Parameter to NewWindow.
owZoom equ $0C ; Rect - ParamList - Parameter to NewWindow.
owColor equ $14 ; WindColorPtr - ParamList - Parameter to NewWin
;dow.
owYOrigin equ $18 ; Integer - ParamList - Parameter to NewWindow
;.
owXOrigin equ $1A ; Integer - ParamList - Parameter to NewWindow
;.
owDataH equ $1C ; Word - ParamList - Parameter to NewWindow.
owDataW equ $1E ; Word - ParamList - Parameter to NewWindow.
owMaxH equ $20 ; Word - ParamList - Parameter to NewWindow.
owMaxW equ $22 ; Word - ParamList - Parameter to NewWindow.
owScrollVer equ $24 ; Word - ParamList - Parameter to NewWindow.
owScrollHor equ $26 ; Word - ParamList - Parameter to NewWindow.
owPageVer equ $28 ; Word - ParamList - Parameter to NewWindow.
owPageHor equ $2A ; Word - ParamList - Parameter to NewWindow.
owInfoRefCon equ $2C ; Long - ParamList - Parameter to NewWindow
;.
owInfoHeight equ $30 ; Word - ParamList - height of information 
;bar
owFrameDefProc equ $32 ; Pointer - ParamList - Parameter to NewW
;indow.
owInfoDefProc equ $36 ; Pointer - ParamList - Parameter to NewWi
;ndow.
owContDefProc equ $3A ; Pointer - ParamList - Parameter to NewWi
;ndow.
owPosition equ $3E ; Rect - ParamList - Parameter to NewWindow.
owPlane equ $46 ; GrafPortPtr - ParamList - Parameter to NewWind
;ow.
owStorage equ $4A ; WindRecPtr - ParamList - Parameter to NewWin
;dow.

owmWhat equ $00 ; Word - WmTaskRec -
owmMessage equ $02 ; Long - WmTaskRec -
owmWhen equ $06 ; Long - WmTaskRec -
owmWhere equ $0A ; Point - WmTaskRec -
owmModifiers equ $0E ; Word - WmTaskRec -
owmTaskData equ $10 ; Long - WmTaskRec - TaskMaster return value
;.
owmTaskMask equ $14 ; Long - WmTaskRec - TaskMaster feature mask
;.

wNoConstraint equ $0000 ; Axis parameter - No constraint on move
;ment.
wHAxisOnly equ $0001 ; Axis parameter - Horizontal axis only.
wVAxisOnly equ $0002 ; Axis parameter - Vertical axis only.

FromDesk equ $00 ; Desktop Command - Subtract region from deskto
;p
ToDesk equ $1 ; Desktop Command - Add region to desktop
GetDesktop equ $2 ; Desktop Command - Get Handle of Desktop regi
;on
SetDesktop equ $3 ; Desktop Command - Set Handle of Desktop regi
;on
GetDeskPat equ $4 ; Desktop command - Address of  pattern or dra
;wing routine
SetDeskPat equ $5 ; Desktop command - Change Address of  pattern
; or drawing routine
GetVisDesktop equ $6 ; Desktop command - Get destop region less 
;visible windows.
BackGroundRgn equ $7 ; Desktop command - For drawing directly on
; desktop.

toBottom equ -2 ; SendBehind value - To send window to bottom.
topMost equ -1 ; SendBehind value - To make window top.
bottomMost equ $0000 ; SendBehind value - To make window bottom.

tmMenuKey equ $0001 ; Task Mask -
tmUpdate equ $0002 ; Task Mask -
tmFindW equ $0004 ; Task Mask -
tmMenuSel equ $0008 ; Task Mask -
tmOpenNDA equ $0010 ; Task Mask -
tmSysClick equ $0020 ; Task Mask -
tmDragW equ $0040 ; Task Mask -
tmContent equ $0080 ; Task Mask -
tmClose equ $0100 ; Task Mask -
tmZoom equ $0200 ; Task Mask -
tmGrow equ $0400 ; Task Mask -
tmScroll equ $0800 ; Task Mask -
tmSpecial equ $1000 ; Task Mask -
tmCRedraw equ $2000 ; Task Mask -
tmInactive equ $4000 ; Task Mask -
tmInfo equ $8000 ; Task Mask -

wNoHit equ $0000 ; TaskMaster codes - retained for back compatib
;ility.
inNull equ $0000 ; TaskMaster codes - retained for back compatib
;ility
inKey equ $0003 ; TaskMaster codes - retained for back compatibi
;lity
inButtDwn equ $0001 ; TaskMaster codes - retained for back compa
;tibility
inUpdate equ $0006 ; TaskMaster codes - retained for back compat
;ibility
wInDesk equ $0010 ; TaskMaster codes - On Desktop
wInMenuBar equ $0011 ; TaskMaster codes - On system menu bar
wClickCalled equ $0012 ; TaskMaster codes - system click called
wInContent equ $0013 ; TaskMaster codes - In content region
wInDrag equ $0014 ; TaskMaster codes - In drag region
wInGrow equ $0015 ; TaskMaster codes - In grow region, active wi
;ndow only
wInGoAway equ $0016 ; TaskMaster codes - In go-away region, acti
;ve window only
wInZoom equ $0017 ; TaskMaster codes - In zoom region, active wi
;ndow only
wInInfo equ $0018 ; TaskMaster codes - In information bar
wInSpecial equ $0019 ; TaskMaster codes - Item ID selected was 2
;50 - 255
wInDeskItem equ $001A ; TaskMaster codes - Item ID selected was 
;1 - 249
wInFrame equ $1B ; TaskMaster codes - in Frame, but not on anyth
;ing else
wInactMenu equ $1C ; TaskMaster codes - "selection" of inactive 
;menu item
wInSysWindow equ $8000 ; TaskMaster codes - hi bit set for syste
;m windows

wDraw equ $00 ; VarCode - Draw window frame command.
wHit equ $01 ; VarCode - Hit test command.
wCalcRgns equ $02 ; VarCode - Compute regions command.
wNew equ $03 ; VarCode - Initialization command.
wDispose equ $04 ; VarCode - Dispose command.

fHilited equ $0001 ; WFrame - Window is highlighted.
fZoomed equ $0002 ; WFrame - Window is zoomed.
fAllocated equ $0004 ; WFrame - Window record was allocated.
fCtlTie equ $0008 ; WFrame - Window state tied to controls.
fInfo equ $0010 ; WFrame - Window has an information bar.
fVis equ $0020 ; WFrame - Window is visible.
fQContent equ $0040 ; WFrame -
fMove equ $0080 ; WFrame - Window is movable.
fZoom equ $0100 ; WFrame - Window is zoomable.
fFlex equ $0200 ; WFrame -
fGrow equ $0400 ; WFrame - Window has grow box.
fBScroll equ $0800 ; WFrame - Window has horizontal scroll bar.
fRScroll equ $1000 ; WFrame - Window has vertical scroll bar.
fAlert equ $2000 ; WFrame -
fClose equ $4000 ; WFrame - Window has a close box.
fTitle equ $8000 ; WFrame - Window has a title bar.

windSize equ $145 ; WindRec - Size of WindRec.
wmTaskRecSize equ $16 ; WmTaskRec - Size of WmTaskRec.
