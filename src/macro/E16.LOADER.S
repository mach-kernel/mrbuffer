
; File:  E16.Loader
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

idNotFound equ $1101 ; Loader error - segment/application/entry 
;not found
idNotLoadFile equ $1104 ; Loader error - file is not a load file
idBusyErr equ $1105 ; Loader error - system loader is busy
idFilVersErr equ $1107 ; Loader error - file version error
idUserIDErr equ $1108 ; Loader error - user ID error
idSequenceErr equ $1109 ; Loader error - segnum out of sequence
idBadRecordErr equ $110A ; Loader error - illegal load record fo
;und
idForeignSegErr equ $110B ; Loader error - segment is foreign

ouserID equ $00 ; Word - InitialLoadOutputRec/RestartRec -
ostartAddr equ $02 ; Pointer - InitialLoadOutputRec/RestartRec -
odPageAddr equ $06 ; Word - InitialLoadOutputRec/RestartRec -
obuffSize equ $08 ; Word - InitialLoadOutputRec/RestartRec -

osegAddr equ $00 ; Pointer - LoadSegNameOut -
ofileNum equ $04 ; Word - LoadSegNameOut -
osegNum equ $06 ; Word - LoadSegNameOut -

ousUserID equ $00 ; Word - UnloadSegOutRec -
ousFileNum equ $02 ; Word - UnloadSegOutRec -
ousSegNum equ $04 ; Word - UnloadSegOutRec -
