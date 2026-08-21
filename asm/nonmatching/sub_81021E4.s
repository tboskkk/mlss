	.syntax unified
	.text

	thumb_func_start sub_81021E4
sub_81021E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x024
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	ldr r5, [r6, #0x0C]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	mov r10, r0
	ldr r3, [r5, #0x04]
	str r3, [sp, #0x000]
	ldr r0, [r5, #0x08]
	str r0, [sp, #0x004]
	ldr r7, [r5, #0x0C]
	ldrh r0, [r5, #0x10]
	ldr r1, _08102224 @ =0x00000FFF
	adds r3, r1, #0x0
	ands r3, r0
	str r3, [sp, #0x008]
	ldrh r0, [r6, #0x10]
	ands r1, r0
	str r1, [sp, #0x00C]
	movs r3, #0x18
	ldsh r1, [r6, r3]
	cmp r1, #0x00
	ble _08102228
	adds r0, r1, #0x0
	b _08102236
	.byte 0x00, 0x00
_08102224: .4byte 0x00000FFF
_08102228:
	movs r0, #0x02
	negs r0, r0
	ldr r3, _081022D8 @ =0x00999999
	mov r8, r3
	cmp r1, r0
	bne _08102238
	ldr r0, _081022DC @ =0x00009999
_08102236:
	mov r8, r0
_08102238:
	movs r1, #0x12
	ldsh r3, [r5, r1]
	movs r0, #0x14
	ldsh r4, [r5, r0]
	ldrh r0, [r5, #0x1A]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x010]
	movs r0, #0x18
	ldsh r1, [r5, r0]
	str r1, [sp, #0x014]
	movs r0, #0x12
	ldsh r1, [r6, r0]
	str r1, [sp, #0x018]
	movs r0, #0x14
	ldsh r1, [r6, r0]
	str r1, [sp, #0x01C]
	movs r0, #0x16
	ldsh r1, [r6, r0]
	str r1, [sp, #0x020]
	movs r0, #0x10
	ldsh r1, [r2, r0]
	mov r9, r1
	adds r0, r3, r4
	cmp r9, r0
	blt _0810226E
	b _08102390
_0810226E:
	cmp r3, r9
	bge _081022BC
	ldr r2, _081022E0 @ =0x03001038
	ldr r0, _081022E4 @ =0x0819832C
	ldr r1, _081022E8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	mov r1, r9
	subs r0, r1, r3
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	mov r1, r10
	subs r0, r1, r4
	bl sub_8083F88
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x004]
	adds r0, r2, r4
	bl sub_8083F88
	adds r7, r0, #0x0
	cmp r7, r8
	ble _081022AA
	mov r7, r8
_081022AA:
	ldr r0, _081022EC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r1, r0, r3
	ldrh r0, [r1, #0x00]
	cmp r0, r4
	beq _081022BC
	strh r4, [r1, #0x00]
_081022BC:
	ldr r0, [sp, #0x008]
	cmp r9, r0
	bge _081022F0
	ldrh r3, [r5, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_810D274
	b _08102304
_081022D8: .4byte 0x00999999
_081022DC: .4byte 0x00009999
_081022E0: .4byte 0x03001038
_081022E4: .4byte 0x0819832C
_081022E8: .4byte 0x08198220
_081022EC: .4byte 0x03000FD8
_081022F0:
	ldrh r3, [r5, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_810D34C
_08102304:
	ldr r1, [sp, #0x00C]
	cmp r9, r1
	bge _08102320
	ldrh r3, [r6, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r7, #0x0
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x01C]
	bl sub_810D2E0
	b _08102334
_08102320:
	ldrh r3, [r6, #0x10]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x1C
	movs r0, #0x01
	ands r3, r0
	adds r0, r7, #0x0
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x01C]
	bl sub_810D3B8
_08102334:
	ldr r2, [sp, #0x008]
	cmp r9, r2
	bge _08102360
	ldr r1, [sp, #0x014]
	adds r1, #0x06
	movs r0, #0xFF
	ands r1, r0
	ldr r2, _08102358 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r2, r2, r3
	ldr r0, [r2, #0x00]
	strh r1, [r0, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0x02]
	ldr r3, _0810235C @ =0x0000C0D4
	b _0810237C
_08102358: .4byte 0x0300034C
_0810235C: .4byte 0x0000C0D4
_08102360:
	ldr r1, [sp, #0x014]
	adds r1, #0x06
	movs r0, #0xFF
	ands r1, r0
	ldr r2, _08102388 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	strh r1, [r0, #0x00]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r0, #0x02]
	ldr r3, _0810238C @ =0x0000B0D4
_0810237C:
	adds r1, r3, #0x0
	strh r1, [r0, #0x04]
	adds r0, #0x08
	str r0, [r2, #0x00]
	b _081023B2
	.byte 0x00, 0x00
_08102388: .4byte 0x0300034C
_0810238C: .4byte 0x0000B0D4
_08102390:
	adds r0, r5, #0x0
	bl sub_807FA94
	ldr r0, [sp, #0x004]
	add r0, r10
	bl sub_8083F88
	adds r7, r0, #0x0
	cmp r7, r8
	ble _081023A6
	mov r7, r8
_081023A6:
	str r7, [r6, #0x0C]
	ldr r1, _081023C4 @ =0x08106BED
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_081023B2:
	add sp, #0x024
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081023C4: .4byte sub_8106BEC
