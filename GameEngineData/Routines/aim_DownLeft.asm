Aim_DownLeft:
LDA gamepad
AND #%01000000
BEQ End_Aim_DL

LDA gamepad
AND #%00000100
BEQ End_Aim_DL

LDA gamepad
AND #%00000010
BEQ End_Aim_DL

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$07
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_DL
JSR ShootProjectile

End_Aim_DL:
RTS