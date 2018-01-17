* This file is converted from the original source designed for 
* APW by the Merlin-converter program, written by Brian Fox. 
* 
* Converter version 7.11 
* 
* Additional editing will be necessary, in addition to running 
* the Merlin 16 MACGEN utility. 
* 
 XC 
 XC 
 MX %00 ; Full 65816 mode for Merlin 
************************************************************** 

; File:  E16.Locator
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

toolNotFoundErr equ $0001 ; Locator error -
funcNotFoundErr equ $0002 ; Locator error -
toolVersionErr equ $0010 ; Locator error -
sysStrtMtErr equ $0100 ; Locator error - can't mount system star
;tup volume
messNotFoundErr equ $0111 ; Locator error -

addMessage equ $0001 ; Message Center -
getMessage equ $0002 ; Message Center -
deleteMessage equ $0003 ; Message Center -

fileInfoType equ $0001 ; MessageCenter - Message type parameter

mvReturn equ $0001 ; TLMountVolume - like ok for dialogs
mvEscape equ $0002 ; TLMountVolume - like cancel for dialogs

sysTool equ $0000 ; Tool Set Spec -
userTool equ $8000 ; Tool Set Spec -

