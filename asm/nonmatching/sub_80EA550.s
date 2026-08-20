	.syntax unified
	.text

	thumb_func_start sub_80EA550
sub_80EA550:
	push {lr}
	adds r3, r1, #0x0
	adds r0, r3, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080EA56C
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EA580 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
_080EA56C:
	movs r1, #0x00
	str r1, [r3, #0x0C]
	str r1, [r3, #0x08]
	adds r0, r3, #0x0
	adds r0, #0xA5
	strb r1, [r0, #0x00]
	subs r0, #0x03
	strh r1, [r0, #0x00]
	pop {r0}
	bx r0
_080EA580: .4byte 0x0000FFFB
