	.syntax unified
	.text

	thumb_func_start sub_8101EE4
sub_8101EE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	str r0, [sp, #0x014]
	ldr r4, _08101FC0 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r7, [r0, #0x00]
	ldr r3, [sp, #0x014]
	movs r0, #0x10
	ldsh r5, [r3, r0]
	movs r0, #0x0B
	adds r1, r5, #0x0
	muls r1, r0
	adds r0, r1, #0x1
	cmp r0, #0x00
	bge _08101F12
	adds r0, #0x07
_08101F12:
	asrs r0, r0, #0x03
	mov r10, r0
	movs r1, #0x01
	str r1, [sp, #0x018]
	ldr r3, _08101FC4 @ =0x000002BE
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101F2E
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	str r0, [sp, #0x018]
_08101F2E:
	cmp r5, #0x00
	bne _08101F54
	ldr r0, _08101FC8 @ =0x03001034
	movs r2, #0x87
	lsls r2, r2, #0x05
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r7, #0x0
	bl _call_via_r3
	ldr r0, _08101FCC @ =0x08105C11
	movs r1, #0x00
	bl sub_807FF70
	ldr r1, [r4, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x02
	adds r1, r1, r2
	str r0, [r1, #0x00]
_08101F54:
	mov r3, r10
	lsls r3, r3, #0x04
	str r3, [sp, #0x01C]
	movs r0, #0x7F
	mov r9, r0
	ldr r1, _08101FD0 @ =0x03000C0C
	mov r8, r1
_08101F62:
	movs r4, #0x00
	ldr r0, _08101FC0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _08101FC4 @ =0x000002BE
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08101FAE
	ldr r0, _08101FD4 @ =0x03000FDC
	ldr r2, [r0, #0x00]
	lsls r1, r5, #0x01
	ldr r3, _08101FD8 @ =0x00008E4E
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	movs r0, #0x0B
	adds r3, r5, #0x0
	muls r3, r0
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, _08101FDC @ =0x00008E4A
	adds r2, r2, r0
	adds r2, r2, r5
	ldrb r0, [r2, #0x00]
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	adds r0, r7, #0x0
	movs r1, #0x0F
	movs r2, #0x68
	bl sub_8083934
_08101FAE:
	asrs r0, r4, #0x07
	cmp r0, #0x02
	beq _08102004
	cmp r0, #0x02
	bgt _08101FE0
	cmp r0, #0x01
	beq _08101FEA
	b _0810205C
	.byte 0x00, 0x00
_08101FC0: .4byte 0x03000FD8
_08101FC4: .4byte 0x000002BE
_08101FC8: .4byte 0x03001034
_08101FCC: .4byte sub_8105C10
_08101FD0: .4byte 0x03000C0C
_08101FD4: .4byte 0x03000FDC
_08101FD8: .4byte 0x00008E4E
_08101FDC: .4byte 0x00008E4A
_08101FE0:
	cmp r0, #0x03
	beq _08102020
	cmp r0, #0x04
	beq _0810203C
	b _0810205C
_08101FEA:
	ldr r2, _08102000 @ =0x083BD844
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r2, r8
	ldrb r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
_08102000: .4byte dword_83BD844 @ =0x083BD844
_08102004:
	ldr r2, _0810201C @ =0x083BE67C
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r3, r8
	ldrb r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
	.byte 0x00, 0x00
_0810201C: .4byte byte_83BE67C @ =0x083BE67C
_08102020:
	ldr r2, _08102038 @ =0x083BCDC4
	mov r1, r9
	ands r1, r4
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r2, r8
	ldrb r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	b _08102062
	.byte 0x00, 0x00
_08102038: .4byte dword_83BCDC4 @ =0x083BCDC4
_0810203C:
	ldr r0, _08102058 @ =0x083BBDD0
	mov r3, r9
	ands r4, r3
	lsls r1, r4, #0x04
	adds r0, #0x0C
	adds r1, r1, r0
	mov r2, r8
	ldrb r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102068
	.byte 0x00, 0x00
_08102058: .4byte byte_83BBDD0 @ =0x083BBDD0
_0810205C:
	ldr r0, _081020E4 @ =0x083BA628
	mov r3, r8
	ldrb r1, [r3, #0x00]
_08102062:
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
_08102068:
	ldr r0, [r0, #0x00]
	movs r6, #0x0B
	adds r3, r5, #0x0
	muls r3, r6
	adds r3, #0x01
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r1, #0x0F
	movs r2, #0x08
	bl sub_8083860
	adds r5, #0x01
	ldr r0, [sp, #0x018]
	cmp r0, r5
	ble _0810209E
	add r0, sp, #0x010
	bl sub_8199470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x8C
	bhi _0810209E
	b _08101F62
_0810209E:
	ldr r0, _081020E8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r2, [sp, #0x01C]
	mov r0, r10
	subs r3, r2, r0
	lsls r0, r3, #0x05
	adds r2, r7, r0
	adds r0, r5, #0x0
	muls r0, r6
	adds r1, r0, #0x0
	adds r1, #0x08
	cmp r1, #0x00
	bge _081020C2
	adds r1, #0x07
_081020C2:
	asrs r1, r1, #0x03
	mov r0, r10
	subs r1, r1, r0
	lsls r0, r1, #0x04
	subs r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	bl sub_80850F8
	ldr r1, [sp, #0x018]
	cmp r5, r1
	bge _081020EC
	ldr r2, [sp, #0x014]
	strh r5, [r2, #0x10]
	b _081020F2
	.byte 0x00, 0x00
_081020E4: .4byte dword_83BA628 @ =0x083BA628
_081020E8: .4byte 0x03000FD8
_081020EC:
	ldr r0, _08102104 @ =0x081023C9
	ldr r3, [sp, #0x014]
	str r0, [r3, #0x04]
_081020F2:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102104: .4byte sub_81023C8
