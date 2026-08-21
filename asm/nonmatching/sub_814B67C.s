	.syntax unified
	.text

	thumb_func_start sub_814B67C
sub_814B67C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814B6C4 @ =0x0000020E
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814B6C8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x0C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B6C4: .4byte 0x0000020E
_0814B6C8: .4byte sub_813B1E8
