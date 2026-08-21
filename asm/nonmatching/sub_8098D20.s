	.syntax unified
	.text

	thumb_func_start sub_8098D20
sub_8098D20:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098E30
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08098D5A
	adds r1, #0xFF
_08098D5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08098D64
	adds r2, #0xFF
_08098D64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08098D6E
	adds r3, #0xFF
_08098D6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08098E38 @ =0x000028C6
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08098D82
	adds r0, #0xFF
_08098D82:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x32
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08098D90
	adds r3, #0xFF
_08098D90:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08098D9A
	adds r0, #0xFF
_08098D9A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08098E3C @ =0x0000403C
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, #0x9C
	movs r4, #0x00
	str r4, [r0, #0x00]
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x0C
	str r1, [r0, #0x08]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x78
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x14]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	movs r4, #0x07
_08098DE2:
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x3C]
	ldr r2, [r5, #0x40]
	bl sub_807FABC
	ldr r1, [r5, #0x0C]
	str r1, [r0, #0x00]
	str r0, [r5, #0x0C]
	subs r4, #0x04
	cmp r4, #0x00
	bge _08098DE2
	ldr r0, _08098E40 @ =0x08098E49
	str r0, [r5, #0x4C]
	ldr r0, _08098E44 @ =0x0809900D
	str r0, [r6, #0x4C]
_08098E30:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08098E38: .4byte 0x000028C6
_08098E3C: .4byte 0x0000403C
_08098E40: .4byte sub_8098E48
_08098E44: .4byte sub_809900C
