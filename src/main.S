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

            rep   #$30
            sep   #$20

; show the current char on screen
; read keyboard then hit strobe to reset
            ldx   #0
            ldal  $00C010

inloop      clc
            ldal  $00C000
            bit   #%1
            bmi   keybranch
            jmp   inloop
keybranch   jsr   keydown
            jmp   inloop

keydown     nop
            cmp   #$8B        ; up
            beq   up
            cmp   #$8A        ; down
            beq   down
            cmp   #$88        ; left
            beq   left
            cmp   #$95        ; right
            beq   right
            jmp   dispchar

up          clc
            cpx   #1488
            beq   rtsout
            rep   #$30
            pha
            txa
            sbc   #128
            tax
            pla
            sep   #$20
            jmp   rtsout
down        clc
            cpx   #1488
            beq   rtsout
            rep   #$30
            pha
            txa
            adc   #128
            tax
            pla
            sep   #$20
            jmp   rtsout

left        clc
            cpx   #0
            beq   rtsout
            dex
            jmp   rtsout

right       clc
            cpx   #39
            beq   rtsout
            inx
            jmp   rtsout

dispchar    stal  $000400,X
            inx
            jmp   rtsout

rtsout      ldal  $00C010
            lda   #0
            rts

; working text blit
*            ldx   #hithere+2 ; strl, first two bytes are strlen, # denotes immediate addr val
*            ldy   #$0400     ; start of text buffer on 00
*            ldal  hithere
*            dec

*            mvn   $02,        $00
*            brk

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

hithere     strl  "this was excruciating"
brkboi      brk





























































































































































































