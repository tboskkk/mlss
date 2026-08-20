	.syntax unified
	.text

	thumb_func_start sub_80F8C60
sub_80F8C60:
	push {lr}
	adds r2, r1, #0x0
	ldr r0, [r0, #0x2C]
	ldr r1, _080F8C84 @ =0x00001788
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	ands r0, r1
	cmp r0, #0x00
	beq _080F8C80
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8C88 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2, #0x00]
_080F8C80:
	pop {r0}
	bx r0
_080F8C84: .4byte 0x00001788
_080F8C88: .4byte 0x0000FDFF
