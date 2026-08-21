	.syntax unified
	.text

	thumb_func_start sub_809B0A8
sub_809B0A8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B100
	ldr r2, _0809B108 @ =0x000040BE
	adds r0, r4, #0x0
	movs r1, #0x04
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
	bge _0809B0DE
	adds r1, #0xFF
_0809B0DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809B0E8
	adds r2, #0xFF
_0809B0E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809B0F2
	adds r3, #0xFF
_0809B0F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809B10C @ =0x000011B8
	bl sub_80DF024
	ldr r0, _0809B110 @ =0x0809A8A1
	str r0, [r4, #0x4C]
_0809B100:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809B108: .4byte 0x000040BE
_0809B10C: .4byte 0x000011B8
_0809B110: .4byte sub_809A8A0
