
;-----------------------------------------------------------
; FILE:  E16.STDFILE
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;
;
;
;-----------------------------------------------------------

ogood equ $00 ; Boolean - SFReplyRec - TRUE for open; FALSE for 
;cancel
ofileType equ $02 ; Word - SFReplyRec - ProDOS file type
oauxFileType equ $04 ; Word - SFReplyRec - ProDOS aux file type
ofilename equ $06 ; Byte - SFReplyRec - Name of file in prefix 0
ofullPathname equ $22 ; Byte - SFReplyRec - The full pathname of
; the selected file.

noDisplay equ $0000 ; filterProc result - file not to be display
;ed
noSelect equ $0001 ; filterProc result - file displayed, but not
; selectable
displaySelect equ $0002 ; filterProc result - file displayed and
; selectable
