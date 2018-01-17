
; File: E16.IntMath
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

imBadInptParam equ $0B01 ; IntMath error - bad input parameter
imIllegalChar equ $0B02 ; IntMath error - Illegal character in s
;tring
imOverflow equ $0B03 ; IntMath error - integer or long integer o
;verflow
imStrOverflow equ $0B04 ; IntMath error - string overflow

minLongint equ $80000000 ; Limit - minimum negative signed long 
;integer
minFrac equ $80000000 ; Limit - pinned value for negative Frac o
;verflow
minFixed equ $80000000 ; Limit - pinned value for negative Fixed
; overflow
minInt equ $8000 ; Limit - minimum negative signed integer
maxInt equ $7FFF ; Limit - maximum positive signed integer
maxUInt equ $FFFF ; Limit - maximum unsigned integer
maxLongint equ $7FFFFFFF ; Limit - maximum positive signed Longi
;nt
maxFrac equ $7FFFFFFF ; Limit - pinned value for positive Frac o
;verflow
maxFixed equ $7FFFFFFF ; Limit - pinned value for positive Fixed
; overflow
maxULong equ $FFFFFFFF ; Limit - maximum unsigned Long

unsignedFlag equ $0000 ; SignedFlag -
signedFlag equ $0001 ; SignedFlag -
