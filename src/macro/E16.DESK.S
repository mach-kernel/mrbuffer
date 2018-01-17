
; File:  E16.Desk
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

daNotFound equ $0510 ; Desk error - desk accessory not found
notSysWindow equ $0511 ; Desk error - not the system window

eventAction equ $0001 ; NDA action code -
runAction equ $0002 ; NDA action code -
undoAction equ $0005 ; NDA action code -
cutAction equ $0006 ; NDA action code -
copyAction equ $0007 ; NDA action code -
pasteAction equ $0008 ; NDA action code -
clearAction equ $0009 ; NDA action code -
cursorAction equ $0003 ; NDAaction code -

undo equ $0001 ; System Edit - edit type
cut equ $0002 ; System Edit - edit type
copy equ $0003 ; System Edit - edit type
paste equ $0004 ; System Edit - edit type
clear equ $0005 ; System Edit - edit type
