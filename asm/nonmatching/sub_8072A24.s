	.syntax unified
	.text

	thumb_func_start sub_8072A24
sub_8072A24:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r7, #0x00
	ldsh r1, [r1, r7]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r7, #0x00
	ldsh r1, [r1, r7]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r7, #0xC0
	lsls r7, r7, #0x06
	adds r0, r0, r7
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08072B5A
	movs r5, #0x01
	negs r5, r5
	movs r0, #0xCC
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AD8
	adds r0, #0xFF
_08072AD8:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AE6
	adds r0, #0xFF
_08072AE6:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08072AF4
	adds r0, #0xFF
_08072AF4:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08072B2C @ =0x0000226E
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08072B0E
	adds r2, #0xFF
_08072B0E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08072B18
	adds r3, #0xFF
_08072B18:
	asrs r3, r3, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, r5
	beq _08072B30
	movs r0, #0x13
	b _08072B32
	.byte 0x00, 0x00
_08072B2C: .4byte 0x0000226E
_08072B30:
	movs r0, #0x12
_08072B32:
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x1E
	str r0, [r1, #0x00]
	ldr r0, _08072B64 @ =0x0807438D
	str r0, [r6, #0x4C]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
_08072B5A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08072B64: .4byte sub_807438C
