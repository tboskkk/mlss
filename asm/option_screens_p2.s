	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start option_screen_set_ok_button
option_screen_set_ok_button:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	movs r5, #0x0F
	subs r5, r5, r0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsrs r0, r2, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	movs r4, #0x0A
	subs r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r7, #0x0
	adds r0, #0x48
	ldr r1, [r7, #0x40]
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x000]
	mov r3, r8
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x004]
	movs r2, #0xC8
	lsls r2, r2, #0x08
	str r2, [sp, #0x008]
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl generate_window_bg_8051B98
	lsls r5, r5, #0x03
	lsls r6, r6, #0x02
	adds r5, r5, r6
	subs r5, #0x10
	adds r0, r7, #0x0
	adds r0, #0x44
	strb r5, [r0, #0x00]
	add r4, r8
	lsls r4, r4, #0x03
	subs r4, #0x16
	adds r0, #0x01
	strb r4, [r0, #0x00]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
