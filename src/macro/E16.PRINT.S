
; File:  E16.Print
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

MemFullErr equ $FF80 ; Print error -
IOAbort equ $FFE5 ; Print error -
PrAbort equ $80 ; Print error -

missingDriver equ $1301 ; specified driver not in system/drivers
portNotOn equ $1302 ; specified port not selected in ctl panel
noPrintRecord equ $1303 ; no print record was given
badLaserPrep equ $1304 ; laser prep in laser writer incompatible
badLPFile equ $1305 ; laser prep in system/drivers incompatible
papConnNotOpen equ $1306 ; cannot connect to laser writer
papReadWriteErr equ $1307 ; apple talk PAPRead or PAPWrite error
startUpAlreadyMade equ $1321 ; low level startup already made
invalidCtlVal equ $1322 ; invalid control value has been spec'd

oiDev equ $0 ; Word - PrInfoRec - reserved for internal use
oiVRes equ $2 ; Word - PrInfoRec - vertical resolution of printe
;r
oiHRes equ $4 ; Word - PrInfoRec - horizontal resolution of prin
;ter
orPage equ $6 ; Rect - PrInfoRec - defining page rectangle

oiFstPage equ $0 ; Word - PrJobRec - first page to print
oiLstPage equ $2 ; Word - PrJobRec - last page to print
oiCopies equ $4 ; Word - PrJobRec - number of copies
obJDocLoop equ $6 ; Byte - PrJobRec - printing method
ofFromUser equ $7 ; Byte - PrJobRec - used internally
opIdleProc equ $9 ; Word - PrJobRec - background procedure
opFileName equ $D ; Pointer - PrJobRec - spool file name
oiFileVol equ $11 ; Word - PrJobRec - spool file volume referenc
;e number
obFileVers equ $13 ; Byte - PrJobRec - spool file version number
obJobX equ $14 ; Byte - PrJobRec - used internally

oprVersion equ $0 ; Word - PrRec - print manager version
oprInfo equ $2 ; PrInfoRec - PrRec - printer infomation subrecor
;d
orPaper equ $10 ; Rect - PrRec - Defining paper rectangle
oprStl equ $18 ; PrStyleRec - PrRec - style subrecord
oprInfoPT equ $2A ; Byte[14] - PrRec - reserved for internal use
oprXInfo equ $38 ; Byte[24] - PrRec - reserved for internal use
oprJob equ $50 ; PrJobRec - PrRec - job subrecord
oprintX equ $64 ; Byte[38] - PrRec - reserved for future use
oiReserved equ $8A ; Word - PrRec - reserved for internal use

oiTotPages equ $0 ; Word - PrStatusRec - number of pages in spoo
;l file
oiCurPage equ $2 ; Word - PrStatusRec - page being printed
oiTotCopes equ $4 ; Word - PrStatusRec - number of copies reques
;ted
oiCurCopy equ $6 ; Word - PrStatusRec - copy being printed
oiTotBands equ $8 ; Word - PrStatusRec - reserved for internal u
;se
oiCurBand equ $A ; Word - PrStatusRec - reserved for internal us
;e
ofPgDirty equ $C ; Boolean - PrStatusRec - TRUE if started print
;ing page
ofImaging equ $E ; Word - PrStatusRec - reserved for internal us
;e
ohPrint equ $10 ; PrRecHndl - PrStatusRec - handle of print reco
;rd
opPrPort equ $14 ; GrafPortPtr - PrStatusRec - pointer to grafpo
;rt being use for printing
ohPic equ $18 ; Word - PrStatusRec - reserved for internal use

owDev equ $0 ; Word - PrStyleRec - output quality information
ointernA equ $2 ; Word[3] - PrStyleRec - for internal use
ofeed equ $8 ; Word - PrStyleRec - paper feed type
opaperType equ $A ; Word - PrStyleRec - paper type
ocrWidth equ $C ; Word - PrStyleRec - carriage Width for image w
;riter
ovSizing equ $C ; Word - PrStyleRec - vertical sizing for lazer 
;writer
oreduction equ $E ; Word - PrStyleRec - % reduction, laser write
;r only
ointernB equ $10 ; Word - PrStyleRec - for internal use

reset equ $0001 ; LLDControl - Printer control value - reset pri
;nter
formFeed equ $0002 ; LLDControl - Printer control value - form f
;eed
lineFeed equ $0003 ; LLDControl - Printer control value - line f
;eed
