Aim_Right:
LDA gamepad
AND #%01000000      ; B
BEQ End_Aim_Right

LDA gamepad
AND #%00000001      ; Right
BEQ End_Aim_Right

LDA #$01
STA aiming

LDA #$00
STA Object_h_speed
STA Object_v_speed

LDA #$00
STA aimDir

; Shoot if A pressed
LDA gamepad
AND #%10000000
BEQ End_Aim_Right
JSR ShootProjectile

End_Aim_Right:
RTS