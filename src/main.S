            rel
            typ   $B3
            dsk   main.l

                              ; ensure 16-bit mode (unnecessary?)
            clc
            xce
            rep   #$30

            phk
            plb
;;;;;

; we're going to need this 
entrydp     dw

            phd
            pla
            sta   entrydp

;;;;;;;;;

            sep   #$30        ; a, m, x half bank

            lda   #$00
            pha
            plb

; slide direct page up

            lda   #$0000
            pha
            pld


; toggle the softswitches; they don't take any values. some are only triggered
; by writes, $C054 can be triggered by a read

            sta   $C000       ; disable 80 column store?

            sta   $C00C       ; disable 80 column hardware?!
            sta   $C050       ; set standard apple ii gfx mode
            sta   $C051       ; select text mode only. "only"?
            lda   $C054       ; select text page 1 (there are 2)
            lda   $C056       ; select "low res" graphics

; ok, we are done toggling switches, let's go make a string

            rep   #$30

            phk
            plb
            lda   entrydp
            pha
            pld

; the first byte of the str is its length, we'll use that for cmp
            ldx   #1

atxt        str   "O SHIT"
loopy       nop
            clc
            cpx   #4          ; compare with length, bail if too long
            bcs   outbrk
            ldy   atxt,x

            lda   #$00
            pha
            plb

            lda   #$0000
            pha
            pld

            sty   $04,x

            phk
            plb
            lda   entrydp
            pha
            pld

            inx

            jmp   loopy

outbrk      lda   #37
            brk

*            lda   #"H"
*            sta   $0400
*            lda   #"e"
*            sta   $0401
*            lda   #"l"
*            sta   $0402
*            lda   #"l"
*            sta   $0403
*            lda   #"o"
*            sta   $0404
*            lda   #" "
*            sta   $0405
*            lda   #"W"
*            sta   $0406
*            lda   #"o"
*            sta   $0407
*            lda   #"r"
*            sta   $0408
*            lda   #"l"
*            sta   $0409
*            lda   #"d"
*            sta   $040A
            brk



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










































































































































































































