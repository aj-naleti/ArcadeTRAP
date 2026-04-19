TXA
STA temp

GetActionStep temp
CMP #$07
BNE +notHurt
    RTS
+notHurt

; =====================
; AIM CHECK
; =====================
LDA gamepad
AND #%01000000
BNE AimRight

; =====================
; NORMAL MOVE
; =====================
StartMoving temp, #RIGHT

ChangeFacingDirection temp, #FACE_RIGHT
RTS

; =====================
; AIM MODE
; =====================
AimRight:
ChangeFacingDirection temp, #FACE_RIGHT
RTS