	.syntax unified
	.text

	thumb_func_start sub_81DCF98
sub_81DCF98:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r3, #0x06
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	add sp, #0x00C
	pop {r4, r5, pc}
