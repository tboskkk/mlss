	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08069EAE
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069E04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _08069E10
_08069E04:
	ldr r2, _08069EB8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_08069E10:
	movs r0, #0x40
	mov r8, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r3, [r1, #0x00]
	adds r0, #0xDC
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08069E30
	adds r0, #0xFF
_08069E30:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069E40
	adds r0, #0xFF
_08069E40:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x08
	subs r6, r3, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	subs r5, r5, r0
	ldr r2, _08069EBC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08069E72
	ldr r1, _08069EC0 @ =0x000003FF
	adds r0, r0, r1
_08069E72:
	asrs r7, r0, #0x0A
	lsrs r1, r0, #0x1F
	adds r1, r7, r1
	asrs r1, r1, #0x01
	mov r2, r8
	lsls r0, r2, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08069E8E
	movs r0, #0x02
_08069E8E:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08069EC4 @ =0x08069EC9
	str r0, [r4, #0x4C]
_08069EAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069EB8: .4byte 0x0000204D
_08069EBC: .4byte 0x03001038
_08069EC0: .4byte 0x000003FF
_08069EC4: .4byte sub_8069EC8
