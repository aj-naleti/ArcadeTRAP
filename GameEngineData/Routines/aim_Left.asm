Aim_Left:
LDA gamepad
AND #%01000000
BEQ End_Aim_Left

LDA gamepad
AND #%00000010      ; Left
BEQ End_Aim_Left

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$01
STA aimDir

LDA gamepad
AND #%10000000
BEQ End_Aim_Left
JSR ShootProjectile

End_Aim_Left:
RTS