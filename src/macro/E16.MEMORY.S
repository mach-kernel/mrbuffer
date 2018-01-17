
; File:  E16.Memory
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;
;

memErr equ $0201 ; error - unable to allocate block
emptyErr equ $0202 ; error - illegal operation, empty handle
notEmptyErr equ $0203 ; error - an empty handle was expected for
; this operation
lockErr equ $0204 ; error - illegal operation on a locked block
purgeErr equ $0205 ; error - attempt to purge an unpurgable bloc
;k
handleErr equ $0206 ; error - an invalid handle was given
idErr equ $0207 ; error - an invalid owner ID was given
attrErr equ $0208 ; error - operation illegal on block with give
;n attributes

attrNoPurge equ $0000 ; Handle Attribute Bits - Not purgeable
attrBank equ $0001 ; Handle Attribute Bits - fixed bank
attrAddr equ $0002 ; Handle Attribute Bits - fixed address
attrPage equ $0004 ; Handle Attribute Bits - page aligned
attrNoSpec equ $0008 ; Handle Attribute Bits - may not use speci
;al memory
attrNoCross equ $0010 ; Handle Attribute Bits - may not cross ba
;nks
attrPurge1 equ $0100 ; Handle Attribute Bits - Purge level 1
attrPurge2 equ $0200 ; Handle Attribute Bits - Purge level 2
attrPurge3 equ $0300 ; Handle Attribute Bits - Purge level 3
attrPurge equ $0300 ; Handle Attribute Bits - test or set both p
;urge bits
attrHandle equ $1000 ; Handle Attribute Bits - block of master p
;ointers
attrSystem equ $2000 ; Handle Attribute Bits - system handle
attrFixed equ $4000 ; Handle Attribute Bits - not movable
attrLocked equ $8000 ; Handle Attribute Bits - locked
