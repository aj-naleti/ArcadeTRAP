TXA
STA temp

GetActionStep temp
CMP #$07
BNE +notHurt
    RTS
+notHurt

LDA gamepad
AND #%01000000
BNE AimDown

StartMoving temp, #DOWN
ChangeFacingDirection temp, #FACE_DOWN
RTS

AimDown:
ChangeFacingDirection temp, #FACE_DOWN
RTS
