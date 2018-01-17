            rel
            typ   $B3
            dsk   main.l

                              ; this doesn't actually modeset the cpu
            mx    %00
            phk
            plb

; we're going to enter into emulation mode, so we can toggle softswitches
; doing so clobbers our stack pointer and supposedly other things so let's 
; save the state of as many things as we can. 

ncpui       da
nstack      da

; cpu status register first
            php
            pla
            sta   ncpui

; the stack pointer too            
            tsc
            sta   nstack

; enable emulation mode, tell merlin we did so
            sec
            xce
            sep   #$30
            mx    %11

; the manuals all seem to use zero page addresses, so we'll oblige and slide
; the DP offset all the way up and go to bank 00
            lda   $0000
            pha
            pld
            lda   $00
            pha
            plb

; toggle the softswitches; they don't take any values. some are only triggered
; by writes, $C054 can be triggered by a read
            sta   $C000       ; disable 80 column store?
            sta   $C00C       ; disable 80 column hardware?!
*            sta   $C050       ; set standard apple ii gfx mode
            sta   $C051       ; select text mode only. "only"?
            lda   $C054       ; select text page 1 (there are 2)
*            lda   $C056       ; select "low res" graphics


            lda   $CF
            sta   $0400
            sta   $0480


*; let's write more interesting (broken)
*mood        asc   "this is excruciating"
*nult        db
*            lda   $00
*            sta   nult        ; i.e null terminator

*loop        clc
*            ldx   #0
*            lda   mood,x
*            cmp   $00

*            sta   $040,x

*            inx
*            bcc   loop

*            brk

*EPOC2

*            clc
*            xce
*            rep   #$30
*; disable emulation mode

*            mx    %00
*            brk

*; load a char and write it to the 40 char text buffer
*bois        lda   "B"
*            sta   $E00400
*            sta   $E00401
*            sta   $E00402
*            jmp   bois

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


































































































































































