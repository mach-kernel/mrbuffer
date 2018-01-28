            rel
            typ   $B3
            dsk   main.l

                              ; ensure 16-bit mode (unnecessary?)
            clc
            xce
            rep   #$30

            phk
            plb

; half bank for accumulator, you don't want to toggle them on then back off, right?

            sep   #$30

; toggle the softswitches; they don't take any values. some are only triggered
; by writes, $C054 can be triggered by a read
            stal  $00C000     ; disable 80 column store?

            stal  $00C00C     ; disable 80 column hardware?!
            stal  $00C050     ; set standard apple ii gfx mode
            stal  $00C051     ; select text mode only. "only"?
            ldal  $00C054     ; select text page 1 (there are 2)
            ldal  $00C056     ; select "low res" graphics

; ok, we are done toggling switches, let's go make a string
            rep   #$30

            phk
            pld

hithere     strl  "hello world"
            ldx   #2
:loopy      nop
            lda   hithere,x
            stal  $000400
            cpx   hithere
            inx
            bcs   outbrk
            jmp   :loopy

outbrk      brk

; y u no work
*            ldx   hithere+2
*            ldy   #$0400
*            lda   hithere

*            mvp   #$02,       #$00

*            brk

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






























































































































































































































































































































