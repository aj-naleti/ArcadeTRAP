Aim_UpLeft:
LDA gamepad
AND #%01000000
BEQ End_Aim_UL

LDA gamepad
AND #%00001000
BEQ End_Aim_UL

LDA gamepad
AND #%00000010
BEQ End_Aim_UL

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$05
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_UL
JSR ShootProjectile

End_Aim_UL:
RTS