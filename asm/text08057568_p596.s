	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8146AFC
sub_8146AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r6, r5, r2
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08146B68
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146B68
	ldr r2, _08146C3C @ =0x03001038
	ldr r0, _08146C40 @ =0x0819832C
	ldr r1, _08146C44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
_08146B68:
	ldr r1, _08146C48 @ =0x00000242
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, _08146C4C @ =0x0000020F
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08146BCE
	ldr r2, _08146C50 @ =0x00000216
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08146BCE
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08146BCE
	movs r2, #0xCE
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08146C68
_08146BCE:
	ldr r2, _08146C3C @ =0x03001038
	ldr r0, _08146C40 @ =0x0819832C
	ldr r1, _08146C44 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _08146C54 @ =0x0000020D
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146C58 @ =0x0813B1E9
	str r0, [r7, #0x00]
	ldr r0, _08146C5C @ =0x08146005
	str r0, [r7, #0x0C]
	mov r0, r9
	adds r1, r5, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08146C64
	ldr r0, _08146C60 @ =0x0814616D
	b _08146C66
_08146C3C: .4byte 0x03001038
_08146C40: .4byte 0x0819832C
_08146C44: .4byte 0x08198220
_08146C48: .4byte 0x00000242
_08146C4C: .4byte 0x0000020F
_08146C50: .4byte 0x00000216
_08146C54: .4byte 0x0000020D
_08146C58: .4byte sub_813B1E8
_08146C5C: .4byte sub_8146004
_08146C60: .4byte sub_814616C
_08146C64:
	ldr r0, _08146C74 @ =0x08146E41
_08146C66:
	str r0, [r7, #0x08]
_08146C68:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08146C74: .4byte sub_8146E40
	thumb_func_start sub_8146C78
sub_8146C78:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08146D3A
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r3, #0xEB
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146CD4
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _08146CD0 @ =0x00000242
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	ldsh r1, [r0, r3]
	b _08146CF0
	.byte 0x00, 0x00
_08146CD0: .4byte 0x00000242
_08146CD4:
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	negs r0, r0
	ldr r2, _08146D1C @ =0x00000242
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	movs r3, #0x00
	ldsh r1, [r1, r3]
_08146CF0:
	ldr r0, [r4, #0x0C]
	adds r0, r0, r1
	str r0, [r4, #0x0C]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x01
	bls _08146D30
	movs r3, #0xBF
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08146D20
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	b _08146D24
	.byte 0x00, 0x00
_08146D1C: .4byte 0x00000242
_08146D20:
	movs r0, #0x04
	orrs r0, r1
_08146D24:
	strb r0, [r2, #0x00]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r5, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146D30:
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
_08146D3A:
	ldr r3, _08146DBC @ =0x000002DE
	adds r1, r4, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08146DB6
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _08146DC0 @ =0x0000020D
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	subs r3, #0x95
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	subs r3, #0x20
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x06]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	ldr r0, _08146DC4 @ =0x08145E8D
	str r0, [r6, #0x00]
_08146DB6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08146DBC: .4byte 0x000002DE
_08146DC0: .4byte 0x0000020D
_08146DC4: .4byte sub_8145E8C
