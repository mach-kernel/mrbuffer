            rel
            typ   $B3
            dsk   main.l

SPEAKER     equ   $00C030
PRODOS16    equ   $E100A8

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
            beq   right
            cmp   #$FF        ; backspace
            beq   backspace
            cmp   #$8D        ; return
            beq   return
            jsr   drawchar
            jmp   colinc
finkey      ldal  $00C010     ; clear strobe bit
            lda   #0
            rts

up          cpy   #0
            beq   ping
            dey
            jmp   finkey
down        cpy   #22
            beq   ping
            iny
            jmp   finkey
left        cpx   #0
            beq   ping
            dex
            jmp   finkey
right       cpx   #39
            beq   ping
            jmp   *+2
colinc      cpx   #39
            beq   :rolcol
            inx
            jmp   finkey
:rolcol     ldx   #0
            jmp   down
return      ldx   #0
            jmp   down
backspace   lda   #$A0
            cpx   #0
            beq   :contbs
            dex
:contbs     jsr   drawchar
            jmp   finkey


ping        pha
            ldal  SPEAKER
            pla
            jmp   finkey

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

drawchar    cpy   #0
            beq   :row0
            cpy   #1
            beq   :row1
            cpy   #2
            beq   :row2
            cpy   #3
            beq   :row3
            cpy   #4
            beq   :row4
            cpy   #5
            beq   :row5
            cpy   #6
            beq   :row6
            cpy   #7
            beq   :row7
            cpy   #8
            beq   :row8
            cpy   #9
            beq   :row9
            cpy   #10
            beq   :row10
            cpy   #11
            beq   :row11
            cpy   #12
            beq   :row12
            cpy   #13
            beq   :row13
            cpy   #14
            beq   :row14
            cpy   #15
            beq   :row15
            cpy   #16
            beq   :row16
            cpy   #17
            beq   :row17
            cpy   #18
            beq   :row18
            cpy   #19
            beq   :row19
            cpy   #20
            beq   :row20
            cpy   #21
            beq   :row21
            cpy   #22
            beq   :row22
            rts
:row0       stal  $000400,X
            rts
:row1       stal  $000480,X
            rts
:row2       stal  $000500,X
            rts
:row3       stal  $000580,X
            rts
:row4       stal  $000600,X
            rts
:row5       stal  $000680,X
            rts
:row6       stal  $000700,X
            rts
:row7       stal  $000780,X
            rts
:row8       stal  $000428,X
            rts
:row9       stal  $0004A8,X
            rts
:row10      stal  $000528,X
            rts
:row11      stal  $0005A8,X
            rts
:row12      stal  $000628,X
            rts
:row13      stal  $0006A8,X
            rts
:row14      stal  $000728,X
            rts
:row15      stal  $0007A8,X
            rts
:row16      stal  $000450,X
            rts
:row17      stal  $0004D0,X
            rts
:row18      stal  $000550,X
            rts
:row19      stal  $0005D0,X
            rts
:row20      stal  $000650,X
            rts
:row21      stal  $0006D0,X
            rts
:row22      stal  $000750,X
            rts

tencount    ldx   #0
:substart   clc
            cmp   #10
            bcc   :subout
            sbc   #10
            inx
            jmp   :substart
:subout     rts

            jsl   PRODOS16













