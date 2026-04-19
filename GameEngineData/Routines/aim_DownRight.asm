Aim_DownRight:
LDA gamepad
AND #%01000000
BEQ End_Aim_DR

LDA gamepad
AND #%00000100
BEQ End_Aim_DR

LDA gamepad
AND #%00000001
BEQ End_Aim_DR

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$06
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_DR
JSR ShootProjectile

End_Aim_DR:
RTS