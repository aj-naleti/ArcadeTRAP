TXA
STA temp

GetActionStep temp
CMP #$07
BNE +notHurt
    RTS
+notHurt

LDA gamepad
AND #%01000000
BNE AimLeft

StartMoving temp, #LEFT
ChangeFacingDirection temp, #FACE_LEFT
RTS

AimLeft:
ChangeFacingDirection temp, #FACE_LEFT
RTS