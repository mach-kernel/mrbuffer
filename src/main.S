            rel
            typ   $B3
            dsk   main.l

            mx    %00
            phk
            plb

            mx    %11
            sta   $E0
            pha
            pha
            plb
            pld
            sta   $C000
            sta   $C054

            mx    %00

; load a char and write it to the 40 char text buffer
bois        lda   "B"
            sta   $E00400
            sta   $E00401
            sta   $E00402
            jmp   bois

; Important locations
SPEAKER     equ   $E0C030
PRODOS16    equ   $E100A8

            jsl   PRODOS16
                              ; This exit code is "device busy", why is it the only one
                              ; that works?!
            da    $29
            adrl  QP
            bcs   ERROR

ERROR       brk

QP          adrl  $0000
            da    $00







































































































