
; File: E16.ADB
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

cmndIncomplete equ $0910 ; ADB error - Command not completed.
cantSync equ $0911 ; ADB error - Can't synchronize
adbBusy equ $0982 ; ADB error - Busy  (command pending)
devNotAtAddr equ $0983 ; ADB error - Device not present at address

srqListFull equ $0984 ; ADB error - List full

orcRepeatDelay equ $0000 ; Byte - ReadConfigRec - Output byte:
;Repeat Delay/Rate
orcLayoutOrLang equ $0001 ; Byte - ReadConfigRec - Output byte: 
;Layout/Lang
orcADBAddr equ $0002 ; Byte - ReadConfigRec - Output byte: ADB 
;address - keyboard and mouse.

oxDivide equ $0000 ; Word - ScaleRec -
oyDivide equ $0002 ; Word - ScaleRec -
oxOffset equ $0004 ; Word - ScaleRec -
oyOffset equ $0006 ; Word - ScaleRec -
oxMultiply equ $0008 ; Word - ScaleRec -
oyMultiply equ $000A ; Word - ScaleRec -

oscADBAddr equ $0000 ; Byte - SetConfigRec - keyboard and mouse
oscLayoutOrLang equ $0001 ; Byte - SetConfigRec -
oscRepeatDelay equ $0002 ; Byte - SetConfigRec -

osynchMode equ $0000 ; Byte - SynchRec -
osynchKybdMouseAddr equ $0001 ; Byte - SynchRec -
osynchLayoutOrLang equ $0002 ; Byte - SynchRec -
osynchRepeatDelay equ $0003 ; Byte - SynchRec -

readModes equ $000A ; ReadKeyMicroData -
readConfig equ $000B ; ReadKeyMicroData -
readADBError equ $000C ; ReadKeyMicroData -
readVersionNum equ $000D ; ReadKeyMicroData -

readMicroMem equ $0009 ; ReadKeyMicroMem -

abort equ $0001 ; SendInfo - command
resetKbd equ $0002 ; SendInfo - command
flushKbd equ $0003 ; SendInfo - command
setModes equ $0004 ; SendInfo - 2nd param is pointer to mode byte
clearModes equ $0005 ; SendInfo - 2nd param is pointer to mode Byte
setConfig equ $0006 ; SendInfo - 2nd param is pointer to SetConfigRec
synch equ $0007 ; SendInfo - 2nd param is pointer to SynchRec
writeMicroMem equ $0008 ; SendInfo - 2nd param is pointer to MicroControlMemRec
resetSys equ $0010 ; SendInfo - command
keyCode equ $0011 ; SendInfo - 2nd param is pointer to key code byte.
resetADB equ $0040 ; SendInfo - command
transmitADBBytes equ $0047 ; SendInfo - add number of bytes to this
enableSRQ equ $0050 ; SendInfo - command - ADB address in low nibble
flushADBDevBuf equ $0060 ; SendInfo - command - ADB address in low nibble
disableSRQ equ $0070 ; SendInfo - command - ADB address in low nibble
transmit2ADBBytes equ $0080 ; SendInfo - add ADB address to this
listen equ $0080 ; SendInfo - adbCommand = listen + ( 16 * reg) +
; (adb address)
talk equ $00C0 ; SendInfo - adbCommand = talk + ( 16 * reg) +
; (adb address)
