	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08067E64
	b _08067F6C
_08067E64:
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08067E78
	adds r1, #0xFF
_08067E78:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08067E82
	adds r2, #0xFF
_08067E82:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08067E8C
	adds r3, #0xFF
_08067E8C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08067F78 @ =0x000010B5
	bl sub_80DF024
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067EA0
	adds r0, #0xFF
_08067EA0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x12
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08067EAE
	adds r3, #0xFF
_08067EAE:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067EB8
	adds r0, #0xFF
_08067EB8:
	asrs r0, r0, #0x08
	adds r0, #0x04
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067F7C @ =0x00004107
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	movs r1, #0x77
	adds r1, r1, r5
	mov r12, r1
	adds r6, r5, #0x0
	adds r6, #0x74
	adds r7, r5, #0x0
	adds r7, #0xA0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x00
	beq _08067EF6
_08067EF0:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _08067EF0
_08067EF6:
	str r4, [r0, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08067F80 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08067F84 @ =0x08068059
	str r0, [r4, #0x58]
	ldr r0, _08067F88 @ =0x0806800D
	str r0, [r4, #0x5C]
	ldrb r1, [r6, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08067F8C @ =0x08068075
	str r0, [r4, #0x4C]
	ldr r0, [r7, #0x00]
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _08067F90 @ =0x08067F95
	str r0, [r5, #0x4C]
_08067F6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067F78: .4byte 0x000010B5
_08067F7C: .4byte 0x00004107
_08067F80: .4byte sub_8087540
_08067F84: .4byte sub_8068058
_08067F88: .4byte sub_806800C
_08067F8C: .4byte sub_8068074
_08067F90: .4byte sub_8067F94
