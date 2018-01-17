
;-----------------------------------------------------------
; FILE:  E16.TEXT
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;
;
;
;-----------------------------------------------------------

badDevType equ $0C01 ; TextTool error - not implemented
badDevNum equ $0C02 ; TextTool error - Illegal device number.
badMode equ $0C03 ; TextTool error - Bad mode: illegal operation
;.
unDefHW equ $0C04 ; TextTool error - Undefined hardware error
lostDev equ $0C05 ; TextTool error - Lost device: Device no long
;er on line
lostFile equ $0C06 ; TextTool error - File no longer in diskette
; directory
badTitle equ $0C07 ; TextTool error - Illegal Filename
noRoom equ $0C08 ; TT error - Insufficient space on specified di
;skette
noDevice equ $0C09 ; TextTool error - Volume not online
noFile equ $0C0A ; TextTool error - File not in specifiled direc
;tory
dupFile equ $0C0B ; TextTool error - Filename already exists
notClosed equ $0C0C ; TextTool error - Attempt to open an open f
;ile
notOpen equ $0C0D ; TextTool error - Attempt to close closed fil
;e
badFormat equ $0C0E ; TextTool error - error reading real or int
;eger
ringBuffOFlo equ $0C0F ; TextTool error - Chars arriving too fas
;t
writeProtected equ $0C10 ; TextTool error -
devErr equ $0C40 ; TextTool error - Read or Write failed

input equ $0000 ; deviceNum -
output equ $0001 ; deviceNum -
errorOutput equ $0002 ; deviceNum -
basicType equ $0000 ; deviceType -
pascalType equ $0001 ; deviceType -
ramBased equ $0002 ; deviceType -

noEcho equ $0000 ; echoFlag -
echo equ $0001 ; echoFlag -
