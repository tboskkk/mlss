	.syntax unified
	.text

	thumb_func_start sub_809A09C
sub_809A09C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809A0E4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809A0C2
	adds r1, #0xFF
_0809A0C2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809A0CC
	adds r2, #0xFF
_0809A0CC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809A0D6
	adds r3, #0xFF
_0809A0D6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809A0EC @ =0x00000D26
	bl sub_80DF024
	ldr r0, _0809A0F0 @ =0x0809A0F5
	str r0, [r4, #0x4C]
_0809A0E4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809A0EC: .4byte 0x00000D26
_0809A0F0: .4byte sub_809A0F4
