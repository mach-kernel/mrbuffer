
; File:  E16.LineEdit
;
;
; Copyright Apple Computer, Inc. 1986, 1987
; All Rights Reserved
;

leDupStrtUpErr equ $1401 ; LineEdit error - duplicate LEStartup 
;call
leResetErr equ $1402 ; LineEdit error - can't reset Line Edit
leNotActiveErr equ $1403 ; LineEdit error - Line Edit not active
leScrapErr equ $1404 ; LineEdit error - desk scrap too big to co
;py

oleLineHandle equ $00 ; Handle - LERec -
oleLength equ $04 ; Integer - LERec -
oleMaxLength equ $06 ; Integer - LERec -
oleDestRect equ $08 ; Rect - LERec -
oleViewRect equ $10 ; Rect - LERec -
olePort equ $18 ; GrafPortPtr - LERec -
oleLineHite equ $1C ; Integer - LERec -
oleBaseHite equ $1E ; Integer - LERec -
oleSelStart equ $20 ; Integer - LERec -
oleSelEnd equ $22 ; Integer - LERec -
oleActFlg equ $24 ; Word - LERec -
oleCarAct equ $26 ; Word - LERec -
oleCarOn equ $28 ; Word - LERec -
oleCarTime equ $2A ; Longint - LERec -
oleHiliteHook equ $2E ; Pointer - LERec -
oleCaretHook equ $32 ; Pointer - LERec -

leJustLeft equ $0000 ; Justification -
leJustCenter equ $0001 ; Justification -
leJustFill equ $0002 ; Justification -
leJustRight equ $FFFF ; Justification -
