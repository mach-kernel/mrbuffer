
; File:  E16.Sound
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

noDOCFndErr equ $0810 ; Sound error - no DOC chip found
docAddrRngErr equ $0811 ; Sound error - DOC address range error
noSAppInitErr equ $0812 ; Sound error - no SAppInit call made
invalGenNumErr equ $0813 ; Sound error - invalid generator numbe
;r
synthModeErr equ $0814 ; Sound error - synthesizer mode error
genBusyErr equ $0815 ; Sound error - generator busy error
mstrIRQNotAssgnErr equ $0817 ; Sound error - master IRQ not assi
;gned
sndAlreadyStrtErr equ $0818 ; Sound error - sound tools already 
;started

owaveStart equ $00 ; Pointer - SoundParamBlock - starting addres
;s of wave
owaveSize equ $04 ; Word - SoundParamBlock - waveform size in pa
;ges
ofreqOffset equ $06 ; Word - SoundParamBlock -
odocBuffer equ $08 ; Word - SoundParamBlock - DOC buffer start a
;ddress, low byte = 0
obufferSize equ $0A ; Word - SoundParamBlock - DOC buffer start 
;address, low byte = 0
onextWavePtr equ $0C ; SoundPBPtr - SoundParamBlock - Pointer to
; start of next wave's parameter block
ovolSetting equ $10 ; Word - SoundParamBlock - DOC volume settin
;g. High byte = 0

ffSynthMode equ $0001 ; channelGenMode - Free form synthesizer m
;ode
noteSynthMode equ $0002 ; channelGenMode - Note synthesizer mode
;.

gen0off equ $0001 ; genMask - param to FFStopSound
gen1off equ $0002 ; genMask - param to FFStopSound
gen2off equ $0004 ; genMask - param to FFStopSound
gen3off equ $0008 ; genMask - param to FFStopSound
gen4off equ $0010 ; genMask - param to FFStopSound
gen5off equ $0020 ; genMask - param to FFStopSound
gen6off equ $0040 ; genMask - param to FFStopSound
gen7off equ $0080 ; genMask - param to FFStopSound
gen8off equ $0100 ; genMask - param to FFStopSound
gen9off equ $0200 ; genMask - param to FFStopSound
gen10off equ $0400 ; genMask - param to FFStopSound
gen11off equ $0800 ; genMask - param to FFStopSound
gen12off equ $1000 ; genMask - param to FFStopSound
gen13off equ $2000 ; genMask - param to FFStopSound
gen14off equ $4000 ; genMask - param to FFStopSound

genAvail equ $0000 ; genStatus - Generator available status
ffSynth equ $0100 ; genStatus - Free Form Synthesizer status
noteSynth equ $0200 ; genStatus - Note Synthesizer status
lastBlock equ $8000 ; genStatus - Last block of wave

readRegister equ $00 ; Jump Table Offset - Read Register routine
writeRegister equ $04 ; Jump Table Offset - Write Register routi
;ne
readRam equ $08 ; Jump Table Offset - Read Ram routine
writeRam equ $0C ; Jump Table Offset - Write Ram routine
readNext equ $10 ; Jump Table Offset - Read Next routine
writeNext equ $14 ; Jump Table Offset - Write Next routine
oscTable equ $18 ; Jump Table Offset - Pointer to Oscillator tab
;le
genTable equ $1C ; Jump Table Offset - Pointer to generator tabl
;e
gcbAddrTable equ $20 ; Jump Table Offset - Pointer to GCB addres
;s table
disableInc equ $24 ; Jump Table Offset - Disable Increment routi
;ne
