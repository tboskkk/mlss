	.syntax unified
	.text

	thumb_func_start sub_80A0844
sub_80A0844:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x20
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A086C
	adds r1, #0xFF
_080A086C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A0876
	adds r2, #0xFF
_080A0876:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A0880
	adds r3, #0xFF
_080A0880:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080A08A0 @ =0x00002AC7
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r0, _080A08A4 @ =0x0809FF4D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080A08A0: .4byte 0x00002AC7
_080A08A4: .4byte sub_809FF4C
