	.syntax unified
	.text

	thumb_func_start sub_80F79F0
sub_80F79F0:
	push {r4, lr}
	adds r4, r2, #0x0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F7A14
	ldr r0, _080F7A10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F7A24
	.byte 0x00, 0x00
_080F7A10: .4byte 0x03000FD8
_080F7A14:
	ldr r1, _080F7A4C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F7A24:
	ldr r0, [r2, #0x28]
	mov r12, r0
	mov r1, r12
	adds r1, #0xD8
	lsls r0, r4, #0x08
	str r0, [r2, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	lsls r0, r3, #0x08
	str r0, [r2, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x08
	str r0, [r2, #0x18]
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F7A4C: .4byte 0x03000FDC
