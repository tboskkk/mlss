	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r5, [r6, #0x2C]
	bl sub_8087CE4
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809F052
	ldr r0, [r6, #0x28]
	ldr r7, [r0, #0x34]
	movs r4, #0x01
	negs r4, r4
	movs r0, #0xAD
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	beq _0809F00A
	movs r0, #0x13
	b _0809F00C
_0809F00A:
	movs r0, #0x12
_0809F00C:
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r5, #0x0
	adds r1, #0xB8
	ldr r0, _0809F05C @ =0x00000193
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809F02A
	adds r1, #0xFF
_0809F02A:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809F034
	adds r2, #0xFF
_0809F034:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _0809F03E
	adds r3, #0xFF
_0809F03E:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809F060 @ =0x00002659
	bl sub_80DF024
	ldr r0, [r6, #0x08]
	bl sub_807FB64
	ldr r0, _0809F064 @ =0x0809F069
	str r0, [r6, #0x4C]
_0809F052:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809F05C: .4byte 0x00000193
_0809F060: .4byte 0x00002659
_0809F064: .4byte sub_809F068
