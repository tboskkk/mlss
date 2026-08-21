	.syntax unified
	.text

	thumb_func_start sub_809D8CC
sub_809D8CC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x18]
	subs r0, #0xCC
	cmp r0, #0x00
	bge _0809D8DA
	movs r0, #0x00
_0809D8DA:
	ldr r2, [r5, #0x28]
	str r0, [r5, #0x18]
	str r0, [r2, #0x20]
	cmp r0, #0x00
	bne _0809D912
	adds r2, #0x7E
	ldrb r1, [r2, #0x00]
	movs r4, #0x39
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x28]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x08
	orrs r4, r0
	strb r4, [r1, #0x00]
	ldr r0, _0809D918 @ =0x0809D7B9
	str r0, [r5, #0x4C]
_0809D912:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809D918: .4byte sub_809D7B8
