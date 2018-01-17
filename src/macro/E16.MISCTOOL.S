
; File:  E16.MiscTool
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

badInputErr equ $0301 ; MiscTool error - bad input parameter
noDevParamErr equ $0302 ; MiscTool error - no device for input p
;arameter
taskInstlErr equ $0303 ; MiscTool error - task already installed
; error
noSigTaskErr equ $0304 ; MiscTool error - no signature in task h
;eader
queueDmgdErr equ $0305 ; MiscTool error - queue has been damaged
; error
taskNtFdErr equ $0306 ; MiscTool error - task was not found erro
;r
firmTaskErr equ $0307 ; MiscTool error - firmware task was unsuc
;cessful
hbQueueBadErr equ $0308 ; MiscTool error - heartbeat queue damag
;ed
unCnctdDevErr equ $0309 ; MT error - attempted to dispatch to un
;connected device
idTagNtAvlErr equ $030B ; MiscTool error - ID tag not available
pdosUnClmdIntErr equ $0001 ;MT- error - ProDOS unclaimed interru
;pt error
divByZeroErr equ $0004 ; MiscTool error - divide by zero error
pdosVCBErr equ $000A ; MiscTool error - ProDOS VCB unusable
pdosFCBErr equ $000B ; MiscTool error - ProDOS FCB unusable
pdosBlk0Err equ $000C ; MT error - ProDOS block zero allocated i
;llegally
pdosIntShdwErr equ $000D ; MT error - ProDOS interrupt w/ shadow
;ing off
segLoader1Err equ $0015 ; MiscTool error - segment loader error
sPackage0Err equ $0017 ; MiscTool error - can't load a package
package1Err equ $0018 ; MiscTool error - can't load a package
package2Err equ $0019 ; MiscTool error - can't load a package
package3Err equ $001A ; MiscTool error - can't load a package
package4Err equ $001B ; MiscTool error - can't load a package
package5Err equ $001C ; MiscTool error - can't load a package
package6Err equ $001D ; MiscTool error - can't load a package
package7Err equ $001E ; MiscTool error - can't load a package
package8Err equ $0020 ; MiscTool error - can't load a package
package9Err equ $0021 ; MiscTool error - can't load a package
package10Err equ $0022 ; MiscTool error - can't load a package
package11Err equ $0023 ; MiscTool error - can't load a package
package12Err equ $0024 ; MiscTool error - can't load a package
outOfMemErr equ $0025 ; MiscTool error - out of memory error
segLoader2Err equ $0026 ; MiscTool error - segment loader error
fMapTrshdErr equ $0027 ; MiscTool error - file map trashed
stkOvrFlwErr equ $0028 ; MiscTool error - stack overflow error
psInstDiskErr equ $0030 ; error - Please Insert Disk (file manag
;er alert)
memMgr1Err equ $0032 ; MiscTool error - memory manager error
memMgr2Err equ $0033 ; MiscTool error - memory manager error
memMgr3Err equ $0034 ; MiscTool error - memory manager error
memMgr4Err equ $0035 ; MiscTool error - memory manager error
memMgr5Err equ $0036 ; MiscTool error - memory manager error
memMgr6Err equ $0037 ; MiscTool error - memory manager error
memMgr7Err equ $0038 ; MiscTool error - memory manager error
memMgr8Err equ $0039 ; MiscTool error - memory manager error
memMgr9Err equ $003A ; MiscTool error - memory manager error
memMgr10Err equ $003B ; MiscTool error - memory manager error
memMgr11Err equ $003C ; MiscTool error - memory manager error
memMgr12Err equ $003D ; MiscTool error - memory manager error
memMgr13Err equ $003E ; MiscTool error - memory manager error
memMgr14Err equ $003F ; MiscTool error - memory manager error
memMgr15Err equ $0040 ; MiscTool error - memory manager error
memMgr16Err equ $0041 ; MiscTool error - memory manager error
memMgr17Err equ $0042 ; MiscTool error - memory manager error
memMgr18Err equ $0043 ; MiscTool error - memory manager error
memMgr19Err equ $0044 ; MiscTool error - memory manager error
memMgr20Err equ $0045 ; MiscTool error - memory manager error
memMgr21Err equ $0046 ; MiscTool error - memory manager error
memMgr22Err equ $0047 ; MiscTool error - memory manager error
memMgr23Err equ $0048 ; MiscTool error - memory manager error
memMgr24Err equ $0049 ; MiscTool error - memory manager error
memMgr25Err equ $004A ; MiscTool error - memory manager error
memMgr26Err equ $004B ; MiscTool error - memory manager error
memMgr27Err equ $004C ; MiscTool error - memory manager error
memMgr28Err equ $004D ; MiscTool error - memory manager error
memMgr29Err equ $004E ; MiscTool error - memory manager error
memMgr30Err equ $004F ; MiscTool error - memory manager error
memMgr31Err equ $0050 ; MiscTool error - memory manager error
memMgr32Err equ $0051 ; MiscTool error - memory manager error
memMgr33Err equ $0052 ; MiscTool error - memory manager error
memMgr34Err equ $0053 ; MiscTool error - memory manager error

stupVolMntErr equ $0100 ; can't mount system start up vol.

osecond equ $00 ; byte - TimeRec
ominute equ $01 ; byte - TimeRec
ohour equ $02 ; byte - TimeRec
oyear equ $03 ; byte - TimeRec
oday equ $04 ; byte - TimeRec
omonth equ $05 ; byte - TimeRec
oextra equ $06 ; byte - TimeRec
oweekDay equ $07 ; byte - TimeRec

omouseMode equ $00 ; byte - MouseRec
omouseStatus equ $01 ; byte - MouseRec
oyPos equ $02 ; word - MouseRec
oxPos equ $04 ; word - MouseRec

oyMaxClamp equ $00 ; word - ClampRec
oyMinClamp equ $02 ; word - ClampRec
oxMaxClamp equ $04 ; word - ClampRec
oxMinClamp equ $06 ; word - ClampRec

oyRegExit equ $00 ; word - FWRec
oxRegExit equ $02 ; word - FWRec
oaRegExit equ $04 ; word - FWRec
ostatus equ $06 ; word - FWRec

p1PrntModem equ $0000 ; Battery Ram Parameter Ref Number -
p1LineLnth equ $0001 ; Battery Ram Parameter Ref Number -
p1DelLine equ $0002 ; Battery Ram Parameter Ref Number -
p1AddLine equ $0003 ; Battery Ram Parameter Ref Number -
p1Echo equ $0004 ; Battery Ram Parameter Ref Number -
p1Buffer equ $0005 ; Battery Ram Parameter Ref Number -
p1Baud equ $0006 ; Battery Ram Parameter Ref Number -
p1DtStpBits equ $0007 ; Battery Ram Parameter Ref Number -
p1Parity equ $0008 ; Battery Ram Parameter Ref Number -
p1DCDHndShk equ $0009 ; Battery Ram Parameter Ref Number -
p1DSRHndShk equ $000A ; Battery Ram Parameter Ref Number -
p1XnfHndShk equ $000B ; Battery Ram Parameter Ref Number -
p2PrntModem equ $000C ; Battery Ram Parameter Ref Number -
p2LineLnth equ $000D ; Battery Ram Parameter Ref Number -
p2DelLine equ $000E ; Battery Ram Parameter Ref Number -
p2AddLine equ $000F ; Battery Ram Parameter Ref Number -
p2Echo equ $0010 ; Battery Ram Parameter Ref Number -
p2Buffer equ $0011 ; Battery Ram Parameter Ref Number -
p2Baud equ $0012 ; Battery Ram Parameter Ref Number -
p2DtStpBits equ $0013 ; Battery Ram Parameter Ref Number -
p2Parity equ $0014 ; Battery Ram Parameter Ref Number -
p2DCDHndShk equ $0015 ; Battery Ram Parameter Ref Number -
p2DSRHndShk equ $0016 ; Battery Ram Parameter Ref Number -
p2XnfHndShk equ $0017 ; Battery Ram Parameter Ref Number -
dspColMono equ $0018 ; Battery Ram Parameter Ref Number -
dsp40or80 equ $0019 ; Battery Ram Parameter Ref Number -
dspTxtColor equ $001A ; Battery Ram Parameter Ref Number -
dspBckColor equ $001B ; Battery Ram Parameter Ref Number -
dspBrdColor equ $001C ; Battery Ram Parameter Ref Number -
hrtz50or60 equ $001D ; Battery Ram Parameter Ref Number -
userVolume equ $001E ; Battery Ram Parameter Ref Number -
bellVolume equ $001F ; Battery Ram Parameter Ref Number -
sysSpeed equ $0020 ; Battery Ram Parameter Ref Number -
slt1intExt equ $0021 ; Battery Ram Parameter Ref Number -
slt2intExt equ $0022 ; Battery Ram Parameter Ref Number -
slt3intExt equ $0023 ; Battery Ram Parameter Ref Number -
slt4intExt equ $0024 ; Battery Ram Parameter Ref Number -
slt5intExt equ $0025 ; Battery Ram Parameter Ref Number -
slt6intExt equ $0026 ; Battery Ram Parameter Ref Number -
slt7intExt equ $0027 ; Battery Ram Parameter Ref Number -
startupSlt equ $0028 ; Battery Ram Parameter Ref Number -
txtDspLang equ $0029 ; Battery Ram Parameter Ref Number -
kybdLang equ $002A ; Battery Ram Parameter Ref Number -
kyBdBuffer equ $002B ; Battery Ram Parameter Ref Number -
kyBdRepSpd equ $002C ; Battery Ram Parameter Ref Number -
kyBdRepDel equ $002D ; Battery Ram Parameter Ref Number -
dblClkTime equ $002E ; Battery Ram Parameter Ref Number -
flashRate equ $002F ; Battery Ram Parameter Ref Number -
shftCpsLCas equ $0030 ; Battery Ram Parameter Ref Number -
fstSpDelKey equ $0031 ; Battery Ram Parameter Ref Number -
dualSpeed equ $0032 ; Battery Ram Parameter Ref Number -
hiMouseRes equ $0033 ; Battery Ram Parameter Ref Number -
dateFormat equ $0034 ; Battery Ram Parameter Ref Number -
clockFormat equ $0035 ; Battery Ram Parameter Ref Number -
rdMinRam equ $0036 ; Battery Ram Parameter Ref Number -
rdMaxRam equ $0037 ; Battery Ram Parameter Ref Number -
langCount equ $0038 ; Battery Ram Parameter Ref Number -
lang1 equ $0039 ; Battery Ram Parameter Ref Number -
lang2 equ $003A ; Battery Ram Parameter Ref Number -
lang3 equ $003B ; Battery Ram Parameter Ref Number -
lang4 equ $003C ; Battery Ram Parameter Ref Number -
lang5 equ $003D ; Battery Ram Parameter Ref Number -
lang6 equ $003E ; Battery Ram Parameter Ref Number -
lang7 equ $003F ; Battery Ram Parameter Ref Number -
lang8 equ $0040 ; Battery Ram Parameter Ref Number -
layoutCount equ $0041 ; Battery Ram Parameter Ref Number -
layout1 equ $0042 ; Battery Ram Parameter Ref Number -
layout2 equ $0043 ; Battery Ram Parameter Ref Number -
layout3 equ $0044 ; Battery Ram Parameter Ref Number -
layout4 equ $0045 ; Battery Ram Parameter Ref Number -
layout5 equ $0046 ; Battery Ram Parameter Ref Number -
layout6 equ $0047 ; Battery Ram Parameter Ref Number -
layout7 equ $0048 ; Battery Ram Parameter Ref Number -
layout8 equ $0049 ; Battery Ram Parameter Ref Number -
layout9 equ $004A ; Battery Ram Parameter Ref Number -
layout10 equ $004B ; Battery Ram Parameter Ref Number -
layout11 equ $004C ; Battery Ram Parameter Ref Number -
layout12 equ $004D ; Battery Ram Parameter Ref Number -
layout13 equ $004E ; Battery Ram Parameter Ref Number -
layout14 equ $004F ; Battery Ram Parameter Ref Number -
layout15 equ $0050 ; Battery Ram Parameter Ref Number -
layout16 equ $0051 ; Battery Ram Parameter Ref Number -
aTalkNodeNo equ $0080 ; Battery Ram Parameter Ref Number -

irqIntFlag equ $0000 ; GetAddr Param Ref No -
irqDataReg equ $0001 ; GetAddr Param Ref No -
irqSerial1 equ $0002 ; GetAddr Param Ref No -
irqSerial2 equ $0003 ; GetAddr Param Ref No -
irqAplTlkHi equ $0004 ; GetAddr Param Ref No -
tickCnt equ $0005 ; GetAddr Param Ref No -
irqVolume equ $0006 ; GetAddr Param Ref No -
irqActive equ $0007 ; GetAddr Param Ref No -
irqSndData equ $0008 ; GetAddr Param Ref No -
brkVar equ $0009 ; GetAddr Param Ref No -
evMgrData equ $000A ; GetAddr Param Ref No -
mouseSlot equ $000B ; GetAddr Param Ref No -
mouseClamps equ $000C ; GetAddr Param Ref No -
absClamps equ $000D ; GetAddr Param Ref No -
sccIntFlag equ $000E ; GetAddr Param Ref No -

ExtVGCInt equ $01 ; Hardware Interrupt Status - Returned by GetI
;RQEnable
ScanLineInt equ $02 ; Hardware Interrupt Status - Returned by Ge
;tIRQEnable
ADTBDataInt equ $04 ; Hardware Interrupt Status - Returned by Ge
;tIRQEnable
OneSecInt equ $10 ; Hardware Interrupt Status - Returned by GetI
;RQEnable
QuartSecInt equ $20 ; Hardware Interrupt Status - Returned by Ge
;tIRQEnable
VBInt equ $40 ; Hardware Interrupt Status - Returned by GetIRQEn
;able
KbdInt equ $80 ; Hardware Interrupt Status - Returned by GetIRQE
;nable

kybdEnable equ $0000 ; Interrupt Ref Number - Parameter to IntSo
;urce
kybdDisable equ $0001 ; Interrupt Ref Number - Parameter to IntS
;ource
vblEnable equ $0002 ; Interrupt Ref Number - Parameter to IntSou
;rce
vblDisable equ $0003 ; Interrupt Ref Number - Parameter to IntSo
;urce
qSecEnable equ $0004 ; Interrupt Ref Number - Parameter to IntSo
;urce
qSecDisable equ $0005 ; Interrupt Ref Number - Parameter to IntS
;ource
oSecEnable equ $0006 ; Interrupt Ref Number - Parameter to IntSo
;urce
oSecDisable equ $0007 ; Interrupt Ref Number - Parameter to IntS
;ource
adbEnable equ $000A ; Interrupt Ref Number - Parameter to IntSou
;rce
adbDisable equ $000B ; Interrupt Ref Number - Parameter to IntSo
;urce
scLnEnable equ $000C ; Interrupt Ref Number - Parameter to IntSo
;urce
scLnDisable equ $000D ; Interrupt Ref Number - Parameter to IntS
;ource
exVCGEnable equ $000E ; Interrupt Ref Number - Parameter to IntS
;ource
exVCGDisable equ $000F ; Interrupt Ref Number - Parameter to Int
;Source

mouseOff equ $0000 ; Mouse Mode Value -
transparent equ $0001 ; Mouse Mode Value -
transParnt equ $0001 ; Mouse Mode Value -  (old name)
moveIntrpt equ $0003 ; Mouse Mode Value -
bttnIntrpt equ $0005 ; Mouse Mode Value -
bttnOrMove equ $0007 ; Mouse Mode Value -
mouseOffVI equ $0008 ; Mouse Mode Value -
transParntVI equ $0009 ; Mouse Mode Value - (old name)
transparentVI equ $0009 ; Mouse Mode Value -
moveIntrptVI equ $000B ; Mouse Mode Value -
bttnIntrptVI equ $000D ; Mouse Mode Value -
bttnOrMoveVI equ $000F ; Mouse Mode Value -

toolLoc1 equ $0000 ; Vector Ref Number -
toolLoc2 equ $0001 ; Vector Ref Number -
usrTLoc1 equ $0002 ; Vector Ref Number -
usrTLoc2 equ $0003 ; Vector Ref Number -
intrptMgr equ $0004 ; Vector Ref Number -
copMgr equ $0005 ; Vector Ref Number -
abortMgr equ $0006 ; Vector Ref Number -
sysFailMgr equ $0007 ; Vector Ref Number -
aTalkIntHnd equ $0008 ; Vector Ref Number -
sccIntHnd equ $0009 ; Vector Ref Number -
scLnIntHnd equ $000A ; Vector Ref Number -
sndIntHnd equ $000B ; Vector Ref Number -
vblIntHnd equ $000C ; Vector Ref Number -
mouseIntHnd equ $000D ; Vector Ref Number -
qSecIntHnd equ $000E ; Vector Ref Number -
kybdIntHnd equ $000F ; Vector Ref Number -
adbRBIHnd equ $0010 ; Vector Ref Number -
adbSRQHnd equ $0011 ; Vector Ref Number -
deskAccHnd equ $0012 ; Vector Ref Number -
flshBufHnd equ $0013 ; Vector Ref Number -
kybdMicHnd equ $0014 ; Vector Ref Number -
oneSecHnd equ $0015 ; Vector Ref Number -
extVCGHnd equ $0016 ; Vector Ref Number -
otherIntHnd equ $0017 ; Vector Ref Number -
crsrUpdtHnd equ $0018 ; Vector Ref Number -
incBsyFlag equ $0019 ; Vector Ref Number -
decBsyFlag equ $001A ; Vector Ref Number -
bellVector equ $001B ; Vector Ref Number -
breakVector equ $001C ; Vector Ref Number -
traceVector equ $001D ; Vector Ref Number -
stepVector equ $001E ; Vector Ref Number -
ctlYVector equ $0028 ; Vector Ref Number -
proDOSVctr equ $002A ; Vector Ref Number -
osVector equ $002B ; Vector Ref Number -
msgPtrVctr equ $002C ; Vector Ref Number -
