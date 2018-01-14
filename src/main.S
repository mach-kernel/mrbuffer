SPEAKER     EQU   $E0C030

PONGENTRY   EQU   $2000
            ORG   PONGENTRY
beep        LDA   SPEAKER
            RTL
            END



