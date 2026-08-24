	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x38]
	cmp r5, r0
	beq _08113EB4
	movs r0, #0x01
	b _08113F18
_08113EB4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x7D
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _08113ED4
	ldr r0, _08113ED0 @ =0x08032012
	b _08113ED6
_08113ED0: .4byte 0x08032012
_08113ED4:
	ldr r0, _08113F20 @ =0x08032013
_08113ED6:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	adds r1, r6, #0x0
	adds r1, #0xB8
	movs r2, #0x00
	ldr r0, _08113F24 @ =0x00001B58
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r3, #0x01
	str r3, [r0, #0x00]
	str r2, [r6, #0x4C]
	str r2, [r6, #0x54]
	ldr r0, [r6, #0x28]
	ldr r1, _08113F28 @ =0x081140C1
	str r1, [r0, #0x54]
	str r2, [r0, #0x5C]
	ldr r1, _08113F2C @ =0x00000113
	adds r0, r0, r1
	strb r3, [r0, #0x00]
	movs r0, #0xD5
	bl stop_sfx_80195A8
	movs r0, #0x90
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
_08113F18:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08113F20: .4byte 0x08032013
_08113F24: .4byte 0x00001B58
_08113F28: .4byte sub_81140C0
_08113F2C: .4byte 0x00000113
