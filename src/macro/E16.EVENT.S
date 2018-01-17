
; File:  E16.Event
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

emDupStrtUpErr equ $0601 ; error - duplicate EMStartup Call
emResetErr equ $0602 ; error - can't reset error the Event Manag
;er
emNotActErr equ $0603 ; error - event manager not active
emBadEvtCodeErr equ $0604 ; error - illegal event code
emBadBttnNoErr equ $0605 ; error - illegal button number
emQSiz2LrgErr equ $0606 ; error - queue size too large
emNoMemQueueErr equ $0607 ; error - not enough memory for queue
emBadEvtQErr equ $0681 ; error - fatal sys error - event queue d
;amaged
emBadQHndlErr equ $0682 ; error - fatal sys error - queue handle
; damaged

owhat equ $00 ; Word - EventRecord - event code
omessage equ $02 ; Long - EventRecord - event message
owhen equ $06 ; Long - EventRecord - ticks since startup
owhere equ $0A ; Point - EventRecord - mouse location
omodifiers equ $0E ; Word - EventRecord - modifier flags

nullEvt equ $0000 ; Event Code -
mouseDownEvt equ $0001 ; Event Code -
mouseUpEvt equ $0002 ; Event Code -
keyDownEvt equ $0003 ; Event Code -
autoKeyEvt equ $0005 ; Event Code -
updateEvt equ $0006 ; Event Code -
activateEvt equ $0008 ; Event Code -
switchEvt equ $0009 ; Event Code -
deskAccEvt equ $000A ; Event Code -
driverEvt equ $000B ; Event Code -
app1Evt equ $000C ; Event Code -
app2Evt equ $000D ; Event Code -
app3Evt equ $000E ; Event Code -
app4Evt equ $000F ; Event Code -

mDownMask equ $0002 ; Event Masks -
mUpMask equ $0004 ; Event Masks -
keyDownMask equ $0008 ; Event Masks -
autoKeyMask equ $0020 ; Event Masks -
updateMask equ $0040 ; Event Masks -
activeMask equ $0100 ; Event Masks -
switchMask equ $0200 ; Event Masks -
deskAccMask equ $0400 ; Event Masks -
driverMask equ $0800 ; Event Masks -
app1Mask equ $1000 ; Event Masks -
app2Mask equ $2000 ; Event Masks -
app3Mask equ $4000 ; Event Masks -
app4Mask equ $8000 ; Event Masks -
everyEvent equ $FFFF ; Event Masks -

jcTickCount equ $00 ; Journal Code - TickCount call
jcGetMouse equ $01 ; Journal Code - GetMouse call
jcButton equ $02 ; Journal Code - Button call
jcEvent equ $04 ; Journal Code - GetNextEvent and EventAvail cal
;ls

activeFlag equ $0001 ; Modifier Flags - set if window being acti
;vated
changeFlag equ $0002 ; Modifier Flags - set if active wind. chan
;ged state
btn1State equ $0040 ; Modifier Flags - set if button 1 up
btn0State equ $0080 ; Modifier Flags - set if button 0 up
appleKey equ $0100 ; Modifier Flags - set if Apple key down
shiftKey equ $0200 ; Modifier Flags - set if shift key down
capsLock equ $0400 ; Modifier Flags - set if caps lock key down
optionKey equ $0800 ; Modifier Flags - set if option key down
controlKey equ $1000 ; Modifier Flags - set if Control key down
keyPad equ $2000 ; Modifier Flags - set if keypress from key pad
