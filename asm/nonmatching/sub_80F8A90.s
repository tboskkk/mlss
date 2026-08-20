	.syntax unified
	.text

	thumb_func_start sub_80F8A90
sub_80F8A90:
	push {lr}
	ldr r1, [r2, #0x04]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x2C]
	adds r0, r0, r1
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F8AA6
	cmp r2, #0x01
	beq _080F8AB4
	b _080F8AC2
_080F8AA6:
	movs r1, #0xF4
	lsls r1, r1, #0x03
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	b _080F8AC0
_080F8AB4:
	movs r1, #0xF4
	lsls r1, r1, #0x03
	adds r2, r0, r1
	ldrh r1, [r2, #0x00]
	ldr r0, _080F8AC8 @ =0x0000FFFB
	ands r0, r1
_080F8AC0:
	strh r0, [r2, #0x00]
_080F8AC2:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F8AC8: .4byte 0x0000FFFB
