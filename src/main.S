            REL
            TYP   $B3
            DSK   main.l

            MX    %00         ; enable 16-bit mode

; Important locations

SPEAKER     EQU   $E0C030
PRODOS16    EQU   $E100A8

            PHK
            PLB

* Beep code freezes
*beep        LDA   SPEAKER
*            LDY   #1000
*            LDX   #1000
*loop        DEX
*            BNE   loop
*            DEY
*            BNE   beep

            JSL   PRODOS16
                              ; This exit code is "device busy", why is it the only one
                              ; that works?!
            DA    $29
            ADRL  QP
            bcs   ERROR

ERROR       BRK

QP          adrl  $0000
            DA    $00





