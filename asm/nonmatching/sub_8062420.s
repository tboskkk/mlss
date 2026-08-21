	.syntax unified
	.text

	thumb_func_start sub_8062420
sub_8062420:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062472
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806243A
	adds r1, #0xFF
_0806243A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062444
	adds r2, #0xFF
_08062444:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806244E
	adds r3, #0xFF
_0806244E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806247C @ =0x00000E92
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062480 @ =0x08062489
	str r0, [r4, #0x4C]
	ldr r0, _08062484 @ =0x00000127
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08062472:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806247C: .4byte 0x00000E92
_08062480: .4byte sub_8062488
_08062484: .4byte 0x00000127
