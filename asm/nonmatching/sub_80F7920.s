	.syntax unified
	.text

	thumb_func_start sub_80F7920
sub_80F7920:
	push {r4, lr}
	adds r4, r2, #0x0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F7944
	ldr r0, _080F7940 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F7954
	.byte 0x00, 0x00
_080F7940: .4byte 0x03000FD8
_080F7944:
	ldr r1, _080F7980 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r1, r0, r2
_080F7954:
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _080F795C
	adds r0, #0xFF
_080F795C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	bge _080F7968
	adds r0, #0xFF
_080F7968:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bge _080F7974
	adds r0, #0xFF
_080F7974:
	asrs r1, r0, #0x08
	ldr r0, [sp, #0x008]
	strh r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080F7980: .4byte 0x03000FDC
