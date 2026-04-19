Aim_Down:
LDA gamepad
AND #%01000000
BEQ End_Aim_Down

LDA gamepad
AND #%00000100
BEQ End_Aim_Down

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$03
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_Down
JSR ShootProjectile

End_Aim_Down:
RTS