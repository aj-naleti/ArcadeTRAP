Aim_Up:
LDA gamepad
AND #%01000000
BEQ End_Aim_Up

LDA gamepad
AND #%00001000
BEQ End_Aim_Up

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$02
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_Up
JSR ShootProjectile

End_Aim_Up:
RTS