	.syntax unified
	.text

	thumb_func_start sub_80F7D80
sub_80F7D80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r3, [r4, #0x00]
	cmp r3, #0x07
	bgt _080F7DA4
	ldr r0, _080F7DA0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F7DB4
	.byte 0x00, 0x00
_080F7DA0: .4byte 0x03000FD8
_080F7DA4:
	ldr r1, _080F7DF8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F7DB4:
	ldr r7, [r4, #0x04]
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _080F7DBE
	adds r1, #0xFF
_080F7DBE:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x08]
	adds r6, r1, r0
	ldr r1, [r2, #0x3C]
	cmp r1, #0x00
	bge _080F7DCC
	adds r1, #0xFF
_080F7DCC:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x0C]
	adds r5, r1, r0
	ldr r3, [r2, #0x40]
	cmp r3, #0x00
	bge _080F7DDA
	adds r3, #0xFF
_080F7DDA:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
	str r2, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_80DF024
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7DF8: .4byte 0x03000FDC
