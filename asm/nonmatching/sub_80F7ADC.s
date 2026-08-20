	.syntax unified
	.text

	thumb_func_start sub_80F7ADC
sub_80F7ADC:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0x07
	bgt _080F7B00
	ldr r0, _080F7AFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F7B10
	.byte 0x00, 0x00
_080F7AFC: .4byte 0x03000FD8
_080F7B00:
	ldr r1, _080F7B18 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F7B10:
	adds r0, #0xC5
	strb r2, [r0, #0x00]
	pop {r0}
	bx r0
_080F7B18: .4byte 0x03000FDC
