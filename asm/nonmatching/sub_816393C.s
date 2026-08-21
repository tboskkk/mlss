	.syntax unified
	.text

	thumb_func_start sub_816393C
sub_816393C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, [sp, #0x01C]
	add r0, sp, #0x020
	add r4, sp, #0x024
	ldrb r0, [r0, #0x00]
	ldrb r4, [r4, #0x00]
	mov r12, sp
	mov r7, r12
	strb r0, [r7, #0x00]
	adds r0, r5, #0x0
	bl sub_81638C4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x018]
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	bl sub_81627B4
	adds r0, r5, #0x0
	movs r1, #0x04
	adds r2, r6, #0x0
	bl sub_816391C
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
