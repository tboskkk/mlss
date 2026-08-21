	.syntax unified
	.text

	thumb_func_start sub_80A08A8
sub_80A08A8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x18
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A08CC
	adds r1, #0xFF
_080A08CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A08D6
	adds r2, #0xFF
_080A08D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A08E0
	adds r3, #0xFF
_080A08E0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080A08F8 @ =0x00002AAF
	bl sub_80DF024
	ldr r0, _080A08FC @ =0x0809F1ED
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A08F8: .4byte 0x00002AAF
_080A08FC: .4byte sub_809F1EC
