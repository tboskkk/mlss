	.syntax unified
	.text

	thumb_func_start sub_8137A4C
sub_8137A4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [r6, #0x0C]
	cmp r1, #0x00
	bge _08137A68
	adds r1, #0xFF
_08137A68:
	asrs r1, r1, #0x08
	movs r5, #0xE2
	lsls r5, r5, #0x01
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _08137A7A
	adds r0, #0xFF
_08137A7A:
	asrs r0, r0, #0x08
	movs r5, #0xE3
	lsls r5, r5, #0x01
	adds r1, r6, r5
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137A90
	adds r1, #0xFF
_08137A90:
	asrs r1, r1, #0x08
	movs r5, #0xE4
	lsls r5, r5, #0x01
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08137AA6
	ldr r0, [r6, #0x0C]
	adds r2, r2, r0
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
_08137AA6:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r6, r5
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r5, #0x10
	adds r0, r6, r5
	str r3, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08137AD2
	adds r0, #0x03
_08137AD2:
	asrs r0, r0, #0x02
	ldr r1, _08137B74 @ =0x00000242
	adds r1, r1, r6
	mov r8, r1
	strh r0, [r1, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x10]
	subs r1, r3, r0
	cmp r1, #0x00
	bge _08137AEE
	adds r1, #0x03
_08137AEE:
	asrs r1, r1, #0x02
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r7, r6, r3
	strh r1, [r7, #0x00]
	ldr r5, _08137B78 @ =0x000002DA
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	ldr r5, _08137B7C @ =0x03001038
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	movs r2, #0x00
	ldsh r1, [r7, r2]
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r0, _08137B80 @ =0x0819832C
	ldr r1, _08137B84 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	ldr r5, _08137B88 @ =0x0000023E
	adds r0, r6, r5
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, r4, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x02
	adds r5, #0xA2
	adds r1, r6, r5
	strh r0, [r1, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r0, r6, r1
	lsls r4, r4, #0x02
	str r4, [r0, #0x00]
	ldr r2, _08137B8C @ =0x000002DE
	adds r1, r6, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r7, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08137B90
	movs r5, #0x00
	ldsh r0, [r3, r5]
	movs r2, #0x00
	ldsh r1, [r7, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08137B92
_08137B74: .4byte 0x00000242
_08137B78: .4byte 0x000002DA
_08137B7C: .4byte 0x03001038
_08137B80: .4byte 0x0819832C
_08137B84: .4byte 0x08198220
_08137B88: .4byte 0x0000023E
_08137B8C: .4byte 0x000002DE
_08137B90:
	movs r0, #0xFF
_08137B92:
	strb r0, [r6, #0x02]
	mov r2, r9
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
