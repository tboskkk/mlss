	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8086A18
sub_8086A18:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08086AE0 @ =0x084FB814
	ldrh r2, [r0, #0x0A]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08086A38
	adds r2, #0x01
_08086A38:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r6, r4, #0x0
	adds r6, #0xA8
	movs r0, #0x03
	str r0, [r6, #0x00]
	ldr r0, _08086AE4 @ =0x03001038
	mov r8, r0
	ldr r1, _08086AE8 @ =0x0819832C
	ldr r0, _08086AEC @ =0x08198220
	subs r5, r1, r0
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r2, r0, r5
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	ldr r0, [r4, #0x38]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08086A78
	adds r0, #0xFF
_08086A78:
	asrs r0, r0, #0x08
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r3, r8
	ldr r0, [r3, #0x00]
	adds r2, r0, r5
	ldr r1, [r4, #0x28]
	adds r1, #0xDC
	ldr r0, [r4, #0x3C]
	lsls r0, r0, #0x01
	ldr r1, [r1, #0x00]
	adds r0, r1, r0
	cmp r0, #0x00
	bge _08086A9A
	adds r0, #0xFF
_08086A9A:
	asrs r0, r0, #0x08
	movs r1, #0x03
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08086ABC
	adds r2, #0xFF
_08086ABC:
	asrs r2, r2, #0x08
	adds r2, #0x18
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldr r0, [r6, #0x00]
	subs r0, #0x01
	str r0, [r6, #0x00]
	ldr r0, _08086AF0 @ =0x08086AF5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08086AE0: .4byte 0x084FB814
_08086AE4: .4byte 0x03001038
_08086AE8: .4byte 0x0819832C
_08086AEC: .4byte 0x08198220
_08086AF0: .4byte sub_8086AF4
	thumb_func_start sub_8086AF4
sub_8086AF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08086BB0
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r5, [r7, #0x00]
	cmp r5, #0x00
	beq _08086BA8
	ldr r0, _08086B9C @ =0x03001038
	mov r10, r0
	ldr r1, _08086BA0 @ =0x0819832C
	ldr r0, _08086BA4 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r3, r0, r1
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	subs r6, r5, #0x1
	ldr r0, [r4, #0x38]
	adds r2, r0, #0x0
	muls r2, r6
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08086B40
	adds r0, #0xFF
_08086B40:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r3
	mov r9, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r1, [r4, #0x3C]
	muls r1, r6
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08086B64
	adds r0, #0xFF
_08086B64:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08086B86
	adds r2, #0xFF
_08086B86:
	asrs r2, r2, #0x08
	adds r2, #0x14
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldr r0, [r7, #0x00]
	subs r0, #0x01
	str r0, [r7, #0x00]
	b _08086BB0
_08086B9C: .4byte 0x03001038
_08086BA0: .4byte 0x0819832C
_08086BA4: .4byte 0x08198220
_08086BA8:
	movs r0, #0x14
	str r0, [r7, #0x00]
	ldr r0, _08086BC0 @ =0x080872A9
	str r0, [r4, #0x4C]
_08086BB0:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08086BC0: .4byte sub_80872A8
	thumb_func_start sub_8086BC4
sub_8086BC4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08086C56
	ldr r5, [r4, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08086BE4
	adds r0, #0xFF
_08086BE4:
	asrs r1, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08086BF2
	adds r0, #0xFF
_08086BF2:
	asrs r2, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08086C00
	adds r0, #0xFF
_08086C00:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	ldr r2, _08086C60 @ =0x0000204F
	cmp r1, r0
	bne _08086C2C
	subs r2, #0x4D
_08086C2C:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_08086C56:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08086C60: .4byte 0x0000204F
	thumb_func_start sub_8086C64
sub_8086C64:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	cmp r2, #0x03
	bne _08086CF0
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08086C8E
	ldr r0, [r4, #0x6C]
	cmp r0, #0x00
	beq _08086C8E
	ldrb r1, [r0, #0x09]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08086CF0
_08086C8E:
	movs r0, #0x2A
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r3, #0x01
	negs r3, r3
	cmp r0, r3
	bne _08086CBA
	ldr r0, _08086CEC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086CBA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08086CDC
	ldr r0, _08086CEC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086CDC:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r3
	bne _08086CFC
	b _08086CF4
	.byte 0x00, 0x00
_08086CEC: .4byte 0x03000FD8
_08086CF0:
	movs r0, #0x01
	b _08086D72
_08086CF4:
	ldr r0, _08086CF8 @ =0x04021010
	b _08086CFE
_08086CF8: .4byte 0x04021010
_08086CFC:
	ldr r0, _08086D60 @ =0x04021011
_08086CFE:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	cmp r0, #0x00
	bgt _08086D72
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _08086D70
	movs r2, #0x00
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r4, r0
	beq _08086D3A
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	beq _08086D36
	cmp r4, r0
	beq _08086D3A
_08086D2A:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	beq _08086D36
	cmp r4, r0
	bne _08086D2A
	movs r2, #0x01
_08086D36:
	cmp r2, #0x00
	beq _08086D70
_08086D3A:
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08086D64 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08086D68 @ =0x000002F9
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	beq _08086D6C
	str r5, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_8095028
	movs r0, #0x01
	negs r0, r0
	b _08086D72
	.byte 0x00, 0x00
_08086D60: .4byte 0x04021011
_08086D64: .4byte 0x03000FD8
_08086D68: .4byte 0x000002F9
_08086D6C:
	ldr r0, _08086D7C @ =0x08087525
	str r0, [r4, #0x4C]
_08086D70:
	movs r0, #0x00
_08086D72:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08086D7C: .4byte sub_8087524
	thumb_func_start sub_8086D80
sub_8086D80:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x38]
	cmp r5, r0
	beq _08086D92
	movs r0, #0x01
	b _08086E82
_08086D92:
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08086D9A
	adds r0, #0xFF
_08086D9A:
	asrs r6, r0, #0x08
	ldr r0, [r5, #0x18]
	negs r0, r0
	cmp r0, #0x00
	bge _08086DA6
	adds r0, #0xFF
_08086DA6:
	asrs r4, r0, #0x08
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08086DB0
	adds r0, #0xFF
_08086DB0:
	asrs r2, r0, #0x08
	ldr r0, [r3, #0x18]
	negs r0, r0
	cmp r0, #0x00
	bge _08086DBC
	adds r0, #0xFF
_08086DBC:
	asrs r1, r0, #0x08
	subs r0, r2, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08086E24 @ =0x03001038
	ldr r0, _08086E28 @ =0x0819832C
	ldr r1, _08086E2C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	negs r0, r0
	lsls r0, r0, #0x08
	movs r1, #0xB4
	lsls r1, r1, #0x01
	bl _call_via_r2
	adds r2, r0, #0x0
	ldr r3, _08086E30 @ =0x0000FFFF
	ands r2, r3
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086E0C
	movs r0, #0x80
	lsls r0, r0, #0x08
	adds r4, r4, r0
	ands r4, r3
_08086E0C:
	cmp r4, r2
	bge _08086E12
	adds r4, r4, r3
_08086E12:
	subs r1, r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _08086E34
	movs r0, #0x01
	negs r0, r0
	b _08086E82
	.byte 0x00, 0x00
_08086E24: .4byte 0x03001038
_08086E28: .4byte 0x0819832C
_08086E2C: .4byte 0x08198220
_08086E30: .4byte 0x0000FFFF
_08086E34:
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
	bne _08086E5E
	ldr r0, _08086E88 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086E5E:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08086E80
	ldr r0, _08086E88 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_08086E80:
	movs r0, #0x00
_08086E82:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08086E88: .4byte 0x03000FD8
	thumb_func_start sub_8086E8C
sub_8086E8C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	ldr r2, [r4, #0x30]
	cmp r2, #0x00
	beq _08086EBA
	movs r5, #0x08
_08086E9A:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086EB4
	ldr r1, [r2, #0x08]
	ldrh r0, [r1, #0x0E]
	ldrh r6, [r3, #0x0E]
	cmp r0, r6
	bcs _08086EB4
	adds r3, r1, #0x0
_08086EB4:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086E9A
_08086EBA:
	ldr r5, [r4, #0x28]
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	beq _08086F02
	cmp r1, r5
	beq _08086F02
_08086EC6:
	ldr r2, [r1, #0x10]
	ldrh r0, [r2, #0x0E]
	ldrh r7, [r3, #0x0E]
	cmp r0, r7
	bcs _08086ED2
	adds r3, r2, #0x0
_08086ED2:
	ldr r2, [r1, #0x38]
	ldr r4, [r1, #0x00]
	cmp r2, #0x00
	beq _08086EFC
	movs r6, #0x08
_08086EDC:
	adds r0, r2, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08086EF6
	ldr r1, [r2, #0x08]
	ldrh r0, [r1, #0x0E]
	ldrh r7, [r3, #0x0E]
	cmp r0, r7
	bcs _08086EF6
	adds r3, r1, #0x0
_08086EF6:
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08086EDC
_08086EFC:
	adds r1, r4, #0x0
	cmp r1, r5
	bne _08086EC6
_08086F02:
	adds r0, r3, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8086F0C
sub_8086F0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	ldr r0, [r0, #0x08]
	mov r8, r0
	ldr r0, _08086FA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r3, [r0, #0x74]
	movs r1, #0x08
	adds r1, r1, r3
	mov r12, r1
	movs r5, #0x7E
	adds r5, r5, r2
	mov r10, r5
	ldrb r1, [r5, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086F4A
	ldr r1, [r4, #0x08]
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
_08086F4A:
	adds r5, r3, #0x0
	adds r5, #0x7E
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086F64
	mov r0, r12
	ldr r1, [r0, #0x08]
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	subs r0, #0x02
	strh r0, [r1, #0x0E]
_08086F64:
	mov r0, r10
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086FE0
	ldrb r1, [r5, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08086FCC
	adds r0, r2, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	adds r0, r3, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, #0x01
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r1, r0
	cmp r2, r0
	bge _08086FAC
	mov r2, r12
	ldr r1, [r2, #0x08]
	b _08086FC6
_08086FA8: .4byte 0x03000FD8
_08086FAC:
	cmp r0, r2
	bge _08086FB4
	ldr r1, [r4, #0x08]
	b _08086FC6
_08086FB4:
	ldr r1, [r4, #0x14]
	mov r5, r12
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bge _08086FC2
	ldr r1, [r4, #0x08]
	b _08086FC6
_08086FC2:
	mov r7, r12
	ldr r1, [r7, #0x08]
_08086FC6:
	ldrh r0, [r1, #0x0E]
	adds r0, #0x01
	strh r0, [r1, #0x0E]
_08086FCC:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086FE0
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _08087028
_08086FE0:
	mov r0, r12
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086FF6
	mov r1, r12
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	bne _08087028
_08086FF6:
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r3, #0x00
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	mov r0, r12
	adds r0, #0x74
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r4, #0x79
	ldrb r2, [r4, #0x00]
	movs r1, #0x05
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r4, #0x00]
	mov r2, r12
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	ands r1, r0
	strb r1, [r2, #0x00]
	mov r2, r9
	str r3, [r2, #0x04]
_08087028:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
