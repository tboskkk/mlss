	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	movs r1, #0xF9
	lsls r1, r1, #0x05
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08151784
	ldr r3, _08151780 @ =0x00001CC4
	adds r2, r6, r3
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	ands r0, r1
	b _0815178E
	.byte 0x00, 0x00
_08151780: .4byte 0x00001CC4
_08151784:
	ldr r0, _08151A54 @ =0x00001CC4
	adds r2, r6, r0
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
_0815178E:
	strh r0, [r2, #0x00]
	movs r4, #0xF8
	lsls r4, r4, #0x05
	movs r3, #0xC0
	lsls r3, r3, #0x05
	movs r1, #0x22
	mov r9, r1
	movs r2, #0x1A
	mov r8, r2
	movs r5, #0x00
	movs r0, #0x1C
	adds r0, r0, r6
	mov r10, r0
	ldr r1, _08151A58 @ =0x03001014
	mov r12, r1
	movs r7, #0xE6
	lsls r7, r7, #0x01
_081517B0:
	mov r0, r12
	ldr r2, [r0, #0x00]
	lsls r0, r5, #0x01
	adds r2, r2, r7
	adds r2, r2, r0
	asrs r1, r4, #0x08
	asrs r0, r3, #0x08
	lsls r0, r0, #0x05
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r1, r9
	subs r4, r4, r1
	mov r2, r8
	subs r3, r3, r2
	adds r0, r5, #0x1
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r2, r2, r7
	adds r2, r2, r0
	asrs r1, r4, #0x08
	asrs r0, r3, #0x08
	lsls r0, r0, #0x05
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r2, r9
	subs r4, r4, r2
	mov r0, r8
	subs r3, r3, r0
	adds r0, r5, #0x2
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r2, r2, r7
	adds r2, r2, r0
	asrs r1, r4, #0x08
	asrs r0, r3, #0x08
	lsls r0, r0, #0x05
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r2, r9
	subs r4, r4, r2
	mov r0, r8
	subs r3, r3, r0
	adds r0, r5, #0x3
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r2, r2, r7
	adds r2, r2, r0
	asrs r1, r4, #0x08
	asrs r0, r3, #0x08
	lsls r0, r0, #0x05
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r2, r9
	subs r4, r4, r2
	mov r0, r8
	subs r3, r3, r0
	adds r0, r5, #0x4
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r2, r2, r7
	adds r2, r2, r0
	asrs r1, r4, #0x08
	asrs r0, r3, #0x08
	lsls r0, r0, #0x05
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r2, r9
	subs r4, r4, r2
	mov r0, r8
	subs r3, r3, r0
	adds r0, r5, #0x5
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r2, r2, r7
	adds r2, r2, r0
	asrs r1, r4, #0x08
	asrs r0, r3, #0x08
	lsls r0, r0, #0x05
	orrs r1, r0
	strh r1, [r2, #0x00]
	mov r2, r9
	subs r4, r4, r2
	mov r0, r8
	subs r3, r3, r0
	adds r5, #0x06
	cmp r5, #0xE3
	ble _081517B0
	movs r2, #0x00
	ldr r4, _08151A58 @ =0x03001014
	movs r3, #0x00
_0815186E:
	ldr r0, [r4, #0x00]
	lsls r1, r2, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x1
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x2
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x3
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x4
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x5
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x6
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x7
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x08
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x09
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x0A
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x0B
	ldr r0, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x04
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	adds r2, #0x0C
	cmp r2, #0xE3
	ble _0815186E
	ldr r1, _08151A5C @ =0x00001888
	adds r0, r6, r1
	movs r5, #0x00
	str r5, [r0, #0x00]
	ldr r2, _08151A60 @ =0x0000188C
	adds r0, r6, r2
	str r5, [r0, #0x00]
	ldr r3, _08151A64 @ =0x00001890
	adds r0, r6, r3
	str r5, [r0, #0x00]
	adds r1, #0x0C
	adds r0, r6, r1
	str r5, [r0, #0x00]
	ldr r2, _08151A68 @ =0x00001F1A
	adds r0, r6, r2
	ldrh r1, [r0, #0x00]
	ldr r3, _08151A6C @ =0x00001F12
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	ldr r1, _08151A70 @ =0x00001CB8
	adds r0, r6, r1
	str r5, [r0, #0x00]
	ldr r2, _08151A74 @ =0x00001CBC
	adds r0, r6, r2
	str r5, [r0, #0x00]
	adds r3, #0x02
	adds r0, r6, r3
	strh r5, [r0, #0x00]
	ldr r0, _08151A78 @ =0x083CB0F0
	mov r8, r0
	movs r1, #0xF9
	lsls r1, r1, #0x05
	adds r7, r6, r1
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x05
	add r0, r8
	ldrb r1, [r0, #0x1B]
	adds r2, #0x0C
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x05
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrh r2, [r0, #0x18]
	lsls r2, r2, #0x15
	asrs r2, r2, #0x10
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r0, _08151A7C @ =0x0600B800
	str r0, [sp, #0x008]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x05
	mov r3, r8
	adds r3, #0x04
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x00C]
	mov r0, r10
	movs r3, #0x20
	bl sub_815FB88
	movs r3, #0x84
	lsls r3, r3, #0x04
	adds r0, r6, r3
	ldrb r2, [r7, #0x00]
	lsls r2, r2, #0x05
	mov r1, r8
	adds r1, #0x08
	adds r1, r2, r1
	ldr r1, [r1, #0x00]
	add r2, r8
	ldrh r2, [r2, #0x18]
	lsls r2, r2, #0x15
	asrs r2, r2, #0x10
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r3, _08151A80 @ =0x0600E800
	str r3, [sp, #0x008]
	ldrb r3, [r7, #0x00]
	lsls r3, r3, #0x05
	mov r4, r8
	adds r4, #0x0C
	adds r3, r3, r4
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x00C]
	movs r3, #0x20
	bl sub_815FB88
	movs r0, #0xE5
	lsls r0, r0, #0x05
	adds r4, r6, r0
	ldr r2, _08151A84 @ =0x082125F8
	movs r0, #0x20
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8158220
	str r0, [r4, #0x00]
	ldr r1, _08151A88 @ =0x00001CA4
	adds r4, r6, r1
	ldr r2, _08151A8C @ =0x08212600
	movs r0, #0x18
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8161954
	str r0, [r4, #0x00]
	ldr r2, _08151A90 @ =0x00001CB0
	adds r4, r6, r2
	ldr r2, _08151A94 @ =0x08212608
	movs r0, #0x38
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8154B24
	adds r2, r0, #0x0
	str r2, [r4, #0x00]
	ldr r0, _08151A98 @ =0x03001010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r0, r0, #0x1B
	cmp r0, #0x05
	ble _08151A1C
	ldr r3, _08151A9C @ =0x00001F2C
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, r2, #0x0
	bl sub_8158310
_08151A1C:
	ldr r0, _08151AA0 @ =0x00001CA8
	adds r4, r6, r0
	str r5, [r4, #0x00]
	ldr r1, _08151A54 @ =0x00001CC4
	adds r0, r6, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _08151AA8
	ldr r2, _08151AA4 @ =0x08212610
	movs r0, #0xA4
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0D
	str r1, [sp, #0x000]
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x1C
	bl sub_8164294
	str r0, [r4, #0x00]
	movs r1, #0x6F
	adds r0, #0xA2
	strh r1, [r0, #0x00]
	b _08151AD2
_08151A54: .4byte 0x00001CC4
_08151A58: .4byte 0x03001014
_08151A5C: .4byte 0x00001888
_08151A60: .4byte 0x0000188C
_08151A64: .4byte 0x00001890
_08151A68: .4byte 0x00001F1A
_08151A6C: .4byte 0x00001F12
_08151A70: .4byte 0x00001CB8
_08151A74: .4byte 0x00001CBC
_08151A78: .4byte dword_83CB0F0 @ =0x083CB0F0
_08151A7C: .4byte 0x0600B800
_08151A80: .4byte 0x0600E800
_08151A84: .4byte dword_82125F8 @ =0x082125F8
_08151A88: .4byte 0x00001CA4
_08151A8C: .4byte dword_8212600 @ =0x08212600
_08151A90: .4byte 0x00001CB0
_08151A94: .4byte dword_8212608 @ =0x08212608
_08151A98: .4byte 0x03001010
_08151A9C: .4byte 0x00001F2C
_08151AA0: .4byte 0x00001CA8
_08151AA4: .4byte dword_8212610 @ =0x08212610
_08151AA8:
	ldr r1, _08151B00 @ =0x02000008
	ldr r2, _08151B04 @ =0x00001C03
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r3, _08151B08 @ =0x00001064
	adds r0, r6, r3
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x05
	mov r2, r8
	adds r2, #0x14
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r2, _08151B0C @ =0x0600E000
	str r2, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r2, #0x60
	movs r3, #0x20
	bl sub_815FB88
_08151AD2:
	ldr r0, _08151B10 @ =0x03001010
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08151AEA
	ldr r0, _08151B14 @ =0x00001CC4
	adds r2, r6, r0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
_08151AEA:
	ldr r1, _08151B18 @ =0x083CB0F0
	movs r2, #0xF9
	lsls r2, r2, #0x05
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x05
	adds r1, #0x10
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r5, #0x00
	b _08151B36
_08151B00: .4byte 0x02000008
_08151B04: .4byte 0x00001C03
_08151B08: .4byte 0x00001064
_08151B0C: .4byte 0x0600E000
_08151B10: .4byte 0x03001010
_08151B14: .4byte 0x00001CC4
_08151B18: .4byte dword_83CB0F0 @ =0x083CB0F0
_08151B1C:
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_8152650
	lsls r2, r5, #0x02
	ldr r3, _08151BAC @ =0x00001898
	adds r1, r6, r3
	adds r1, r1, r2
	str r0, [r1, #0x00]
	adds r4, #0x10
	adds r5, #0x01
	cmp r5, #0xFF
	bgt _08151B84
_08151B36:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08151B1C
	cmp r5, #0xFF
	bgt _08151B84
	movs r4, #0x00
	lsls r0, r5, #0x02
	ldr r1, _08151BAC @ =0x00001898
	adds r0, r0, r1
	adds r2, r0, r6
	movs r1, #0x80
	lsls r1, r1, #0x01
	subs r3, r1, r5
	movs r0, #0x03
	ands r3, r0
	cmp r5, r1
	bge _08151B6C
	cmp r3, #0x00
	beq _08151B74
	cmp r3, #0x01
	ble _08151B6C
	cmp r3, #0x02
	ble _08151B68
	stm r2!, {r4}
	adds r5, #0x01
_08151B68:
	stm r2!, {r4}
	adds r5, #0x01
_08151B6C:
	stm r2!, {r4}
	adds r5, #0x01
	cmp r5, #0xFF
	bgt _08151B84
_08151B74:
	str r4, [r2, #0x00]
	str r4, [r2, #0x04]
	str r4, [r2, #0x08]
	str r4, [r2, #0x0C]
	adds r2, #0x10
	adds r5, #0x04
	cmp r5, #0xFF
	ble _08151B74
_08151B84:
	ldr r2, _08151BB0 @ =0x00001C98
	adds r1, r6, r2
	ldr r3, _08151BAC @ =0x00001898
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08151BB4 @ =0x00001C9C
	adds r1, r6, r0
	ldr r2, _08151BB8 @ =0x0000189C
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08151BAC: .4byte 0x00001898
_08151BB0: .4byte 0x00001C98
_08151BB4: .4byte 0x00001C9C
_08151BB8: .4byte 0x0000189C
