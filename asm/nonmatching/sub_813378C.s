	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bge _081337A8
	b _081338C0
_081337A8:
	movs r6, #0x00
	str r6, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _081338B0
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _081337CE
	adds r0, #0xFF
_081337CE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _081337DC
	adds r0, #0xFF
_081337DC:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	subs r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _081337EA
	adds r0, #0xFF
_081337EA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
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
	movs r5, #0x0F
_08133860:
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
	subs r5, #0x04
	cmp r5, #0x00
	bge _08133860
	ldr r0, _081338AC @ =0x081338CD
	str r0, [r4, #0x4C]
	b _081338C0
_081338AC: .4byte sub_81338CC
_081338B0:
	adds r0, r5, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _081338C8 @ =0x0808750D
	str r0, [r5, #0x4C]
_081338C0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081338C8: .4byte sub_808750C
