	.syntax unified
	.text

	thumb_func_start sub_809CAF0
sub_809CAF0:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809CB04
	b _0809CC1E
_0809CB04:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809CB2C
	adds r1, #0xFF
_0809CB2C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809CB36
	adds r2, #0xFF
_0809CB36:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809CB40
	adds r3, #0xFF
_0809CB40:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809CC28 @ =0x00001E47
	bl sub_80DF024
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0809CB54
	adds r0, #0xFF
_0809CB54:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x15
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0809CB62
	adds r0, #0xFF
_0809CB62:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0809CB6E
	adds r0, #0xFF
_0809CB6E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0809CC2C @ =0x0000410C
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_807FA50
	str r0, [r4, #0x04]
	ldr r1, [r4, #0x08]
	str r1, [r0, #0x04]
	adds r1, r4, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, #0x78
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x26
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	ldr r2, [r4, #0x40]
	bl sub_807FABC
	ldr r1, [r4, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r4, #0x0C]
	ldr r0, _0809CC30 @ =0x0809CC39
	str r0, [r4, #0x4C]
	ldr r0, _0809CC34 @ =0x0809D275
	str r0, [r5, #0x4C]
_0809CC1E:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809CC28: .4byte 0x00001E47
_0809CC2C: .4byte 0x0000410C
_0809CC30: .4byte sub_809CC38
_0809CC34: .4byte sub_809D274
