TXA
STA temp

GetActionStep temp
CMP #$07
BNE +notHurt
    RTS
+notHurt

LDA gamepad
AND #%01000000
BNE AimUp

StartMoving temp, #UP
ChangeFacingDirection temp, #FACE_UP
RTS

AimUp:
ChangeFacingDirection temp, #FACE_UP
RTS