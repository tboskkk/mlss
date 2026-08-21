	.syntax unified
	.text

	thumb_func_start sub_80F7984
sub_80F7984:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F79A8
	ldr r0, _080F79A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x08
	b _080F79B8
_080F79A4: .4byte 0x03000FD8
_080F79A8:
	ldr r1, _080F79EC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r3, r0, r1
_080F79B8:
	ldr r0, [r3, #0x28]
	mov r12, r0
	mov r2, r12
	adds r2, #0xD8
	lsls r0, r4, #0x08
	ldr r1, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	str r0, [r2, #0x00]
	adds r2, #0x04
	lsls r0, r5, #0x08
	ldr r1, [r3, #0x3C]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, [sp, #0x00C]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F79EC: .4byte 0x03000FDC
