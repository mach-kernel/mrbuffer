*-----------------------------------------------------------
* FILE:  E16.SANE
*
* Copyright Apple Computer, Inc. 1986, 1987
* All Rights Reserved
*
* These equates give assembly language access to 65816 SANE.
*-----------------------------------------------------------

*-----------------------------------------------------------
* Tool Set and Function Numbers.
*-----------------------------------------------------------
SANEtsNum = $A ; SANE tool set number

FPNum = $9 ; Function number for Arithmetic
DecStrNum = $A ; Function number for Scanner/Formatter
ElemNum = $B ; Function no. for Elementary functions

*-----------------------------------------------------------
* Operation code masks.
*-----------------------------------------------------------
FOADD = $00 ; add
FOSUB = $02 ; subtract
FOMUL = $04 ; multiply
FODIV = $06 ; divide
FOCMP = $08 ; compare, no exception from unordered
FOCPX = $0A ; compare, signal invalid if unordered
FOREM = $0C ; remainder
FOZ2X = $0E ; convert to extended
FOX2Z = $10 ; convert from extended
FOSQRT = $12 ; square root
FORTI = $14 ; round to integral value
FOTTI = $16 ; truncate to integral value
FOSCALB = $18 ; binary scale
FOLOGB = $1A ; binary log
FOCLASS = $1C ; classify
FONEXT = $1E ; next-after

FOSETENV = $01 ; set environment
FOGETENV = $03 ; get environment
FOSETHV = $05 ; set halt vector
FOGETHV = $07 ; get halt vector
FOD2B = $09 ; convert decimal to binary
FOB2D = $0B ; convert binary to decimal
FONEG = $0D ; negate
FOABS = $0F ; absolute value
FOCPYSGN = $11 ; copy sign
; UNDEFINED     =     $13
FOSETXCP = $15 ; set exception
FOPROCENTRY = $17 ; procedure-entry
FOPROCEXIT = $19 ; procedure-exit
FOTESTXCP = $1B ; test exception
; UNDEFINED     =     $1D
; UNDEFINED     =     $1F

*-----------------------------------------------------------
* Operand format masks.
*-----------------------------------------------------------
FFEXT = $000 ; extended -- 80-bit float
FFDBL = $100 ; double   -- 64-bit float
FFSGL = $200 ; single   -- 32-bit float
FFLNG = $300 ; longint  -- 32-bit integer
FFINT = $400 ; integer  -- 16-bit integer
FFCOMP = $500 ; comp     -- 64-bit integer
; UNDEFINED     =     $600
; UNDEFINED     =     $700

*-----------------------------------------------------------
* Class and sign inquiries.
*-----------------------------------------------------------
FCSNAN = $FC ; -4: signaling NAN
FCQNAN = $FD ; -3: quiet NAN
FCINF = $FE ; -2: infinite
FCZERO = $FF ; -1: zero
FCNORM = $00 ;  0: normal
FCDENORM = $01 ;  1: denormal

*-----------------------------------------------------------
* Exceptions.
*-----------------------------------------------------------
FBINVALID = $1
FBUFLOW = $2
FBOFLOW = $4
FBDIVZER = $8
FBINEXACT = $10

*-----------------------------------------------------------
* Elementary function operation code masks.
*-----------------------------------------------------------
FOLNX = $00 ; base-e log
FOLOG2X = $02 ; base-2 log
FOLN1X = $04 ; ln (1 + x)
FOLOG21X = $06 ; log2 (1 + x)
FOEXPX = $08 ; base-e exponential
FOEXP2X = $0A ; base-2 exponential
FOEXP1X = $0C ; exp (x) - 1
FOEXP21X = $0E ; exp2 (x) - 1
FOXPWRI = $10 ; integer exponentiation
FOXPWRY = $12 ; general exponentiation
FOCOMPOUND = $14 ; compound
FOANNUITY = $16 ; annuity
FOATANX = $18 ; arctangent
FOSINX = $1A ; sine
FOCOSX = $1C ; cosine
FOTANX = $1E ; tangent
FORANDX = $20 ; random

*-----------------------------------------------------------
* Scanner and formatter operation code masks.
*-----------------------------------------------------------
FOPSTR2DEC = 0 ; Pascal string to decimal record
FOCSTR2DEC = 2 ; C string (char stream) to dec. record
FODEC2STR = 1 ; decimal record to (Pascal) string

*-----------------------------------------------------------
* NaN codes.
*-----------------------------------------------------------
NANSQRT = 1 ; Invalid square root such as sqrt(-1)
NANADD = 2 ; Invalid addition such as +INF - +INF
NANDIV = 4 ; Invalid division such as 0/0
NANMUL = 8 ; Invalid multiply such as 0 * INF
NANREM = 9 ; Invalid rem or mod such as x REM 0
NANASCBIN = 17 ; Conversion of invalid ASCII string
NANCOMP = 20 ; Comp NaN converted to floating
NANZERO = 21 ; Attempt to create a NaN with zero code
NANTRIG = 33 ; Invalid argument to trig routine
NANINVTRIG = 34 ; Invalid arg to inverse trig routine
NANLOG = 36 ; Invalid argument to log routine
NANPOWER = 37 ; Invalid argument to x^i or x^y routine
NANFINAN = 38 ; Invalid argument to financial function
