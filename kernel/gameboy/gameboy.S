.arm
.text
.global main
 
.macro plot_pixel x, y, color
    mov r0, #0x6000000
    mov r1, \color
    ldr r2, =(\x+\y*240)*2
    strh r1, [r0, r2]
.endm
 
main:
    mov r0, #0x4000000
    mov r1, #0x400
    add r1, r1, #3
    str r1, [r0]
 
    plot_pixel 115, 80, #0x1F
    plot_pixel 120, 80, #0x03E0
    plot_pixel 125, 80, #0x7C00
 
infin:
    b infin
