	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r7, [r6, #0x30]
	cmp r7, #0x00
	bne _08061E68
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r1, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08061DD4
	adds r3, #0xFF
_08061DD4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08061E70 @ =0x00000C95
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	ldr r1, _08061E74 @ =0x00004011
	ldr r2, [r5, #0x00]
	ldr r3, [r4, #0x00]
	ldr r4, [r6, #0x40]
	str r4, [sp, #0x000]
	ldr r4, [r6, #0x08]
	ldrb r4, [r4, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _08061E78 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	str r7, [r4, #0x6C]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08061E7C @ =0x0808750D
	str r0, [r6, #0x4C]
_08061E68:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08061E70: .4byte 0x00000C95
_08061E74: .4byte 0x00004011
_08061E78: .4byte sub_8087540
_08061E7C: .4byte sub_808750C
