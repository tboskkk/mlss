	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080D0C74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	ldr r0, [r5, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D0C6A
	ldr r0, [r4, #0x28]
	ldr r1, _080D0C78 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r2, [r5, #0x30]
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x46
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x30]
	adds r0, #0xCA
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x30]
	ldr r1, _080D0C7C @ =0x0413438C
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldr r1, [r5, #0x30]
	ldrh r0, [r1, #0x24]
	adds r0, #0x01
	strh r0, [r1, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D0C30
	ldr r2, _080D0C78 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D0C66
_080D0C30:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D0C38
	adds r1, #0xFF
_080D0C38:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D0C4E
	adds r2, #0xFF
_080D0C4E:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x7D
	movs r3, #0x00
	bl sub_80DF024
_080D0C66:
	ldr r0, _080D0C80 @ =0x080D2D35
	str r0, [r6, #0x4C]
_080D0C6A:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080D0C74: .4byte 0x03000FD8
_080D0C78: .4byte 0x00000111
_080D0C7C: .4byte 0x0413438C
_080D0C80: .4byte sub_80D2D34
