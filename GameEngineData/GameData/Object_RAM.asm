;; *************** Object_RAM.asm ***************
;; Object RAM export. Saturday, April 18, 2026 1:20:47 AM

TOTAL_MAX_OBJECTS = #$08

Object_status .dsb 8
Object_x_lo .dsb 8
Object_x_hi .dsb 8
Object_screen .dsb 8
Object_y_lo .dsb 8
Object_y_hi .dsb 8
Object_h_speed_lo .dsb 8
Object_h_speed_hi .dsb 8
Object_v_speed_lo .dsb 8
Object_v_speed_hi .dsb 8
Object_id .dsb 8
Object_type .dsb 8
Object_frame .dsb 8
Object_direction .dsb 8
Object_animation_timer .dsb 8
Object_action_timer .dsb 8
Object_flags .dsb 8
Object_health .dsb 8
Object_vulnerability .dsb 8
;;;aiming .dsb 8
;;;aimDir .dsb 8
