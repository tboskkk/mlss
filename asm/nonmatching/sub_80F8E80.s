	.syntax unified
	.text

	thumb_func_start sub_80F8E80
sub_80F8E80:
	push {lr}
	add sp, #-0x008
	adds r3, r1, #0x0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #0x01
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	ldr r2, [r0, #0x2C]
	lsls r1, r3, #0x08
	adds r1, r1, r2
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	strh r2, [r1, #0x00]
	ldr r1, [r0, #0x2C]
	mov r2, sp
	bl sub_80F8984
	add sp, #0x008
	pop {r0}
	bx r0
	.byte 0x00, 0x00
