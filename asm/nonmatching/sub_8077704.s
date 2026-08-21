	.syntax unified
	.text

	thumb_func_start sub_8077704
sub_8077704:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807776A
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807776A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077744
	adds r1, #0xFF
_08077744:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807774E
	adds r2, #0xFF
_0807774E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077758
	adds r3, #0xFF
_08077758:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077774 @ =0x00002983
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x00]
	ldr r0, _08077778 @ =0x0807777D
	str r0, [r4, #0x4C]
_0807776A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077774: .4byte 0x00002983
_08077778: .4byte sub_807777C
