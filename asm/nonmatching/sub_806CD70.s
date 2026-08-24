	.syntax unified
	.text

	thumb_func_start sub_806CD70
sub_806CD70:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806CDEA
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x80
	ble _0806CDBC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CD98
	adds r1, #0xFF
_0806CD98:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CDA2
	adds r2, #0xFF
_0806CDA2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CDAC
	adds r3, #0xFF
_0806CDAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CDB8 @ =0x000020F5
	bl sub_80DF024
	b _0806CDE2
_0806CDB8: .4byte 0x000020F5
_0806CDBC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CDC4
	adds r1, #0xFF
_0806CDC4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CDCE
	adds r2, #0xFF
_0806CDCE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CDD8
	adds r3, #0xFF
_0806CDD8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CE24 @ =0x000020EC
	bl sub_80DF024
_0806CDE2:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_0806CDEA:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r3, r0, #0x0
	cmp r1, #0x00
	beq _0806CE2C
	ldr r2, _0806CE28 @ =0x08198584
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r2, r1, #0x0
	cmp r0, #0x00
	bge _0806CE10
	adds r0, #0x3F
_0806CE10:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r0, r1
	b _0806CE54
	.byte 0x00, 0x00
_0806CE24: .4byte 0x000020EC
_0806CE28: .4byte word_8198584 @ =0x08198584
_0806CE2C:
	ldr r2, _0806CEA4 @ =0x08198584
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r2, r1, #0x0
	cmp r0, #0x00
	bge _0806CE44
	adds r0, #0x3F
_0806CE44:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r5, #0xC0
	lsls r5, r5, #0x06
	adds r0, r0, r5
_0806CE54:
	str r0, [r4, #0x10]
	ldr r1, _0806CEA8 @ =0x08198504
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0806CE68
	adds r1, #0x3F
_0806CE68:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0806CE96
	cmn r1, r0
	bge _0806CEC4
_0806CE96:
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	beq _0806CEAC
	movs r0, #0xF0
	lsls r0, r0, #0x07
	b _0806CEB0
_0806CEA4: .4byte word_8198584 @ =0x08198584
_0806CEA8: .4byte word_8198504 @ =0x08198504
_0806CEAC:
	movs r0, #0xB0
	lsls r0, r0, #0x07
_0806CEB0:
	str r0, [r4, #0x10]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x2D
	strh r0, [r1, #0x00]
	ldr r0, _0806CECC @ =0x0806D391
	str r0, [r4, #0x4C]
_0806CEC4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806CECC: .4byte sub_806D390
