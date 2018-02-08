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
            ldy   #0
            ldal  $00C010

; core key event loop

:kloop      clc
            ldal  $00C000
            bit   #%1         ; check strobe bit to make sure a key was pressed
            bmi   :kjump
            jmp   :kloop
:kjump      jsr   keydown
            jsr   drawpos
            jmp   :kloop

keydown     cmp   #$8B        ; up
            beq   up
            cmp   #$8A        ; down
            beq   down
            cmp   #$88        ; left
            beq   left
            cmp   #$95        ; right
            beq   colinc
            cmp   #$FF        ; backspace
            beq   backspace
            cmp   #$8D        ; return
            beq   down
            jsr   drawchar
            jmp   colinc
finkey      ldal  $00C010     ; clear strobe bit
            lda   #0
            rts

up          cpy   #0
            beq   finkey
            dey
            jmp   finkey
down        cpy   #22
            beq   finkey
            iny
            jmp   finkey
left        cpx   #0
            beq   finkey
            dex
            jmp   finkey
colinc      cpx   #39
            beq   :rolcol
            inx
            jmp   finkey
:rolcol     ldx   #0
            jmp   down

backspace   lda   #$A0
            jsr   drawchar
            jmp   left

; $B0 is the start of the char table for numbers
; we start by preserving our registers
drawpos     pha
            phx
                              ; draw the parens and comma
            lda   #"("
            stal  $0007F1
            lda   #$AC
            stal  $0007F4
            lda   #")"
            stal  $0007F7
            txa
            jsr   tencount
            adc   #$B0
            stal  $0007F3
            txa
            adc   #$B0
            stal  $0007F2
            tya
            jsr   tencount
            adc   #$B0
            stal  $0007F6
            txa
            adc   #$B0
            stal  $0007F5
                              ; restore x and original keydown char
            plx
            pla
            rts

drawchar    stal  $000400,X   ; display the character
            rts

tencount    ldx   #0
:substart   clc
            cmp   #10
            bcc   :subout
            sbc   #10
            inx
            jmp   :substart
:subout     rts

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

bufbase     da    #40
































































































