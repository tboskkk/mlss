	.syntax unified
	.text

	thumb_func_start sub_80EA778
sub_80EA778:
	push {lr}
	adds r2, r1, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080EA792
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EA798 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
_080EA792:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080EA798: .4byte 0x0000FFEF
