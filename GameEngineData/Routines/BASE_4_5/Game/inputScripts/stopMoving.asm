TXA
STA temp

GetActionStep temp
CMP #$07
BNE +notHurt
    RTS
+notHurt

; =====================
; DON'T STOP IF AIMING
; =====================
LDA gamepad
AND #%01000000
BNE SkipStop

StopMoving temp, #$FF, #$00

SkipStop:
RTS