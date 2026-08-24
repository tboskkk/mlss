	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F766
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3A
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805F72C
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F700
	adds r0, #0xFF
_0805F700:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F70E
	adds r0, #0xFF
_0805F70E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F71C
	adds r0, #0xFF
_0805F71C:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F728 @ =0x00000DCE
	bl sub_80DF024
	b _0805F762
_0805F728: .4byte 0x00000DCE
_0805F72C:
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F73C
	adds r0, #0xFF
_0805F73C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F74A
	adds r0, #0xFF
_0805F74A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F758
	adds r0, #0xFF
_0805F758:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F770 @ =0x00000E1F
	bl sub_80DF024
_0805F762:
	ldr r0, _0805F774 @ =0x0805F779
	str r0, [r4, #0x4C]
_0805F766:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F770: .4byte 0x00000E1F
_0805F774: .4byte sub_805F778
