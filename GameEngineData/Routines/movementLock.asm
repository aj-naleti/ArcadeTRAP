; =========================
; CHECK B BUTTON (AIM MODE)
; =========================

LDA gamepad
AND #%01000000      ; B button
BEQ NotAiming

; ---- AIM MODE ON ----
LDA #$01
STA aiming

; Kill movement by zeroing velocity
LDA #$00
STA Object_h_speed
STA Object_v_speed

; =====================
; READ AIM DIRECTION
; =====================

LDA #$FF
STA aimDir   ; default = no direction

; Check UP
LDA gamepad
AND #%00001000
BEQ CheckDown

; UP pressed
LDA gamepad
AND #%00000001
BNE AimUpRight

LDA gamepad
AND #%00000010
BNE AimUpLeft

LDA #$02        ; Up
STA aimDir
JMP AimDone

CheckDown:
LDA gamepad
AND #%00000100
BEQ CheckLeft

; DOWN pressed
LDA gamepad
AND #%00000001
BNE AimDownRight

LDA gamepad
AND #%00000010
BNE AimDownLeft

LDA #$03        ; Down
STA aimDir
JMP AimDone

CheckLeft:
LDA gamepad
AND #%00000010
BEQ CheckRight

LDA #$01        ; Left
STA aimDir
JMP AimDone

CheckRight:
LDA gamepad
AND #%00000001
BEQ AimDone

LDA #$00        ; Right
STA aimDir
JMP AimDone

; ---- DIAGONALS ----
AimUpRight:
LDA #$04
STA aimDir
JMP AimDone

AimUpLeft:
LDA #$05
STA aimDir
JMP AimDone

AimDownRight:
LDA #$06
STA aimDir
JMP AimDone

AimDownLeft:
LDA #$07
STA aimDir

AimDone:

; =====================
; SHOOT (A BUTTON)
; =====================

LDA gamepad
AND #%10000000      ; A button
BEQ EndInput

; Call your shooting routine here
; You’ll use aimDir inside that script
JSR ShootProjectile

JMP EndInput


; =========================
; NORMAL MOVEMENT
; =========================
NotAiming:

LDA #$00
STA aiming

; Call default inOut movement
JSR HandleInputMovement   ; <-- your existing movement script

EndInput: