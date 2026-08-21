	.syntax unified
	.text

	thumb_func_start sub_810F904
sub_810F904:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0810F9EC
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810F974
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F93C
	adds r0, #0xFF
_0810F93C:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x2A
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F94E
	adds r0, #0xFF
_0810F94E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F95C
	adds r0, #0xFF
_0810F95C:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, _0810F970 @ =0x0810FC71
	b _0810F9B0
	.byte 0x00, 0x00
_0810F970: .4byte sub_810FC70
_0810F974:
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F980
	adds r0, #0xFF
_0810F980:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x22
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F992
	adds r0, #0xFF
_0810F992:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F9A0
	adds r0, #0xFF
_0810F9A0:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, _0810F9F4 @ =0x0810FC35
_0810F9B0:
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	movs r0, #0x89
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0810F9F8 @ =0x0810FBC5
	str r0, [r4, #0x60]
_0810F9EC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0810F9F4: .4byte sub_810FC34
_0810F9F8: .4byte sub_810FBC4
