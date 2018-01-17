
; File:  E16.NoteSyn
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

; Note Syn errors
nsAlreadyInit equ $1901 ; Note Syn error - Note Syn already init
;ialized
nsSndNotInit equ $1902 ; Note Syn error - Sound Tools not initia
;lized
nsNotAvail equ $1921 ; Note Syn error - generator not available
nsBadGenNum equ $1922 ; Note Syn error - bad generator number
nsNotInit equ $1923 ; Note Syn error - Note Syn not initialized
nsGenAlreadyOn equ $1924 ; Note Syn error - generator already on

ost1BkPt equ $00 ; Envelope -      [Byte]
ost1Increment equ $01 ; Envelope -      [Word]
ost2BkPt equ $03 ; Envelope -      [Byte]
ost2Increment equ $04 ; Envelope -      [Word]
ost3BkPt equ $06 ; Envelope -      [Byte]
ost3Increment equ $07 ; Envelope -      [Word]
ost4BkPt equ $09 ; Envelope -      [Byte]
ost4Increment equ $0A ; Envelope -      [Word]
ost5BkPt equ $0C ; Envelope -      [Byte]
ost5Increment equ $0D ; Envelope -      [Word]
ost6BkPt equ $0F ; Envelope -      [Byte]
ost6Increment equ $10 ; Envelope -      [Word]
ost7BkPt equ $12 ; Envelope -      [Byte]
ost7Increment equ $13 ; Envelope -      [Word]
ost8BkPt equ $15 ; Envelope -      [Byte]
ost8Increment equ $16 ; Envelope -      [Word]

otheEnvelope equ $00 ; Instrument -      [Envelope]
oreleaseSegment equ $18 ; Instrument -      [Byte]
opriorityIncrement equ $19 ; Instrument -      [Byte]
opitchBendRange equ $1A ; Instrument -      [Byte]
ovibratoDepth equ $1B ; Instrument -      [Byte]
ovibratoSpeed equ $1C ; Instrument -      [Byte]
oinSpare equ $1D ; Instrument -      [Byte]
oaWaveCount equ $1E ; Instrument -      [Byte]
obWaveCount equ $1F ; Instrument -      [Byte]

owfTopKey equ $0 ; Waveform -      [Byte]
owfWaveAddress equ $01 ; Waveform -      [Byte]
owfWaveSize equ $02 ; Waveform -      [Byte]
owfDOCMode equ $03 ; Waveform -      [Byte]
owfRelPitch equ $04 ; Waveform -      [Word]
