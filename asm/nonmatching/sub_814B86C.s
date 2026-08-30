	.syntax unified
	.text

	thumb_func_start sub_814B86C
sub_814B86C:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	movs r3, #0xF2
	lsls r3, r3, #0x01
	adds r0, r6, r3
	adds r3, #0x04
	adds r4, r6, r3
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	bl sub_8047F60
	ldr r0, _0814B8C4 @ =0x0814BD09
	str r0, [r5, #0x00]
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0814B8C4: .4byte sub_814BD08
