
; File:  E16.SHELL
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

; GET/SET_ LINFO parameter block

osfile equ $00 ;   address of source file name
odfile equ $04 ;   address of output file name
oparms equ $08 ;   address of paramter list
oistring equ $0C ;   address of language specific input string
omerr equ $10 ;   max error level allowed
omerrf equ $11 ;   max error level found
olops equ $12 ;   operations flag
okflag equ $13 ;   KEEP flag
omflags equ $14 ;   set of letters selected with '-'
opflags equ $18 ;   set of letters selected with '+'
oorg equ $1C ;   abs start address of non-relloc load file
