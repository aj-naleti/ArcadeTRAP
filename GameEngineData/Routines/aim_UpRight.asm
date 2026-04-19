Aim_UpRight:
LDA gamepad
AND #%01000000
BEQ End_Aim_UR

LDA gamepad
AND #%00001000      ; Up
BEQ End_Aim_UR

LDA gamepad
AND #%00000001      ; Right
BEQ End_Aim_UR

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$04
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_UR
JSR ShootProjectile

End_Aim_UR:
RTS