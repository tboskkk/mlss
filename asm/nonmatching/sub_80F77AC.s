	.syntax unified
	.text

	thumb_func_start sub_80F77AC
sub_80F77AC:
	push {r4, lr}
	add sp, #-0x008
	ldr r4, _080F77FC @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r2, r0, #0x0
	adds r2, #0xF4
	ldrb r3, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r2, [r1, #0x00]
	adds r0, #0xE8
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldr r1, [r2, #0x2C]
	lsls r0, r3, #0x08
	adds r0, r0, r1
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x2C]
	adds r0, r2, #0x0
	mov r2, sp
	bl sub_80F8984
	ldr r1, [r4, #0x00]
	ldr r2, _080F7800 @ =0x000002BF
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
_080F77FC: .4byte 0x03000FD8
_080F7800: .4byte 0x000002BF
