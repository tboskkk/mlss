	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8151064
sub_8151064:
	push {r4, r5, r6, lr}
	ldr r0, _081510A8 @ =0x04000006
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, _081510AC @ =0x04000018
	movs r2, #0x00
	strh r2, [r0, #0x00]
	ldr r1, _081510B0 @ =0x0400001A
	movs r0, #0x80
	subs r0, r0, r3
	strh r0, [r1, #0x00]
	ldr r0, _081510B4 @ =0x03001014
	ldr r4, [r0, #0x00]
	movs r5, #0x02
	ldsh r1, [r4, r5]
	adds r5, r0, #0x0
	cmp r3, r1
	bgt _081510C4
	ldr r1, _081510B8 @ =0x04000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	ldr r0, _081510BC @ =0x04000040
	strh r2, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2, #0x00]
	ldr r0, _081510C0 @ =0x0000DFFF
	ands r0, r1
	b _08151116
	.byte 0x00, 0x00
_081510A8: .4byte 0x04000006
_081510AC: .4byte 0x04000018
_081510B0: .4byte 0x0400001A
_081510B4: .4byte 0x03001014
_081510B8: .4byte 0x04000050
_081510BC: .4byte 0x04000040
_081510C0: .4byte 0x0000DFFF
_081510C4:
	movs r0, #0xA0
	subs r0, r0, r1
	cmp r3, r0
	ble _081510F4
	ldr r1, _081510E8 @ =0x04000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	strh r0, [r1, #0x00]
	ldr r0, _081510EC @ =0x04000040
	strh r2, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2, #0x00]
	ldr r0, _081510F0 @ =0x0000DFFF
	ands r0, r1
	b _08151116
_081510E8: .4byte 0x04000050
_081510EC: .4byte 0x04000040
_081510F0: .4byte 0x0000DFFF
_081510F4:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08151144 @ =0x04000050
	ldr r2, _08151148 @ =0x00003F44
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	ldr r2, _0815114C @ =0x04000040
	lsls r1, r3, #0x01
	adds r0, r4, #0x4
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
_08151116:
	strh r0, [r2, #0x00]
	ldr r0, _08151150 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r6, _08151154 @ =0x00001CC4
	adds r0, r0, r6
	ldrh r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0815113E
	movs r2, #0xA0
	lsls r2, r2, #0x13
	ldr r0, [r5, #0x00]
	lsls r1, r3, #0x01
	movs r3, #0xE6
	lsls r3, r3, #0x01
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
_0815113E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08151144: .4byte 0x04000050
_08151148: .4byte 0x00003F44
_0815114C: .4byte 0x04000040
_08151150: .4byte 0x03001018
_08151154: .4byte 0x00001CC4
	thumb_func_start sub_8151158
sub_8151158:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	mov r12, r1
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsrs r7, r0, #0x01
	adds r0, r2, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	mov r0, r12
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsrs r6, r0, #0x01
	mov r0, r12
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsrs r4, r0, #0x01
	ldr r1, [r2, #0x04]
	mov r3, r12
	ldr r0, [r3, #0x04]
	cmp r1, r0
	ble _0815118A
	subs r0, r1, r0
	b _08151190
_0815118A:
	cmp r1, r0
	bge _08151196
	subs r0, r0, r1
_08151190:
	lsls r0, r0, #0x08
	lsrs r3, r0, #0x10
	b _08151198
_08151196:
	movs r3, #0x00
_08151198:
	ldr r1, [r2, #0x08]
	asrs r1, r1, #0x08
	subs r1, r1, r5
	mov r2, r12
	ldr r0, [r2, #0x08]
	asrs r0, r0, #0x08
	subs r0, r0, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _081511B6
	subs r0, r1, r0
	b _081511BC
_081511B6:
	cmp r1, r0
	bge _081511C2
	subs r0, r0, r1
_081511BC:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _081511C4
_081511C2:
	movs r2, #0x00
_081511C4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, r6
	cmp r0, r1
	bgt _081511DC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, r4
	cmp r0, r1
	bgt _081511DC
	movs r0, #0x01
	b _081511DE
_081511DC:
	movs r0, #0x00
_081511DE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_81511E4
sub_81511E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08151248 @ =0x08CDC4B0
	str r0, [r7, #0x18]
	adds r0, r7, #0x0
	adds r0, #0x1C
	bl sub_8160EC4
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r7, r1
	bl sub_8160EC4
	ldr r2, _0815124C @ =0x00001064
	adds r0, r7, r2
	bl sub_8160EC4
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r3, #0x00
	strh r3, [r0, #0x00]
	ldr r4, _08151250 @ =0x00001CC4
	adds r2, r7, r4
	movs r0, #0x00
	strh r0, [r2, #0x00]
	ldr r0, _08151254 @ =0x03001010
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	asrs r1, r0, #0x1B
	cmp r1, #0x05
	ble _08151258
	movs r0, #0xF9
	lsls r0, r0, #0x05
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #0x00]
	b _08151260
	.byte 0x00, 0x00
_08151248: .4byte 0x08CDC4B0
_0815124C: .4byte 0x00001064
_08151250: .4byte 0x00001CC4
_08151254: .4byte 0x03001010
_08151258:
	movs r2, #0xF9
	lsls r2, r2, #0x05
	adds r0, r7, r2
	strb r1, [r0, #0x00]
_08151260:
	ldr r3, _081513B4 @ =0x083CB0F0
	movs r4, #0xF9
	lsls r4, r4, #0x05
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r3
	ldrh r1, [r0, #0x1C]
	subs r4, #0x0A
	adds r0, r7, r4
	movs r5, #0x00
	movs r4, #0x00
	strh r1, [r0, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x05
	adds r0, r0, r3
	ldrh r0, [r0, #0x1C]
	subs r0, #0x64
	ldr r2, _081513B8 @ =0x00001F18
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r3, _081513BC @ =0x00001F1A
	adds r1, r7, r3
	movs r0, #0x0E
	strh r0, [r1, #0x00]
	ldr r0, _081513C0 @ =0x00001F1C
	adds r1, r7, r0
	movs r0, #0xFA
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r1, _081513C4 @ =0x00001F21
	adds r0, r7, r1
	strb r5, [r0, #0x00]
	adds r2, #0x0A
	adds r0, r7, r2
	strb r5, [r0, #0x00]
	ldr r3, _081513C8 @ =0x00001CB4
	adds r0, r7, r3
	str r4, [r0, #0x00]
	ldr r1, _081513CC @ =0x00001CC6
	adds r0, r7, r1
	strh r4, [r0, #0x00]
	ldr r2, _081513D0 @ =0x00001C98
	adds r0, r7, r2
	str r4, [r0, #0x00]
	subs r3, #0x18
	adds r0, r7, r3
	str r4, [r0, #0x00]
	subs r1, #0x26
	adds r0, r7, r1
	str r4, [r0, #0x00]
	adds r2, #0x0C
	adds r0, r7, r2
	str r4, [r0, #0x00]
	ldr r0, _081513D4 @ =0x00001CDF
	bl sub_80E99E0
	ldr r3, _081513D8 @ =0x00001F24
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	movs r0, #0xE7
	lsls r0, r0, #0x05
	bl sub_80E99E0
	ldr r2, _081513DC @ =0x00001F26
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r3, _081513E0 @ =0x00001F28
	adds r0, r7, r3
	strh r4, [r0, #0x00]
	ldr r1, _081513E4 @ =0x00001F2A
	adds r0, r7, r1
	strh r4, [r0, #0x00]
	adds r2, #0x06
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	adds r3, #0x08
	adds r6, r7, r3
	ldr r5, _081513E8 @ =0x082125D0
	movs r0, #0x1C
	movs r1, #0x01
	adds r2, r5, #0x0
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _081513EC @ =0x08CDC4C0
	str r0, [r4, #0x18]
	str r4, [r6, #0x00]
	str r7, [r4, #0x14]
	ldr r0, _081513F0 @ =0x03001018
	str r7, [r0, #0x00]
	ldr r2, _081513F4 @ =0x02000050
	movs r0, #0xDF
	strh r0, [r2, #0x00]
	ldr r1, _081513F8 @ =0x04000050
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	adds r2, #0x04
	movs r0, #0x1F
	strh r0, [r2, #0x00]
	adds r1, #0x04
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x13
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrh r1, [r0, #0x00]
	ldr r0, _081513FC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08151400 @ =0x0200000A
	ldr r4, _08151404 @ =0x00001701
	adds r0, r4, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08151408 @ =0x00005801
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _0815140C @ =0x00001D02
	adds r0, r3, #0x0
	strh r0, [r1, #0x00]
	ldr r4, _08151410 @ =0x0800AF20
	adds r0, r4, #0x0
	bl sub_80198B0
	ldr r2, _08151414 @ =0x082125D8
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r5, r0, #0x0
	ldr r0, _08151418 @ =0x03000C84
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	bl CpuFastSet
	cmp r5, #0x00
	beq _08151398
	adds r0, r5, #0x0
	bl free_heap_8018D9C
_08151398:
	ldr r0, _0815141C @ =0x0300034C
	ldr r4, _08151420 @ =0x00000888
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0815142C
	ldr r0, _08151424 @ =0x0800D010
	ldr r1, _08151428 @ =0x02000080
	movs r2, #0x80
	bl CpuFastSet
	b _08151436
_081513B4: .4byte 0x083CB0F0
_081513B8: .4byte 0x00001F18
_081513BC: .4byte 0x00001F1A
_081513C0: .4byte 0x00001F1C
_081513C4: .4byte 0x00001F21
_081513C8: .4byte 0x00001CB4
_081513CC: .4byte 0x00001CC6
_081513D0: .4byte 0x00001C98
_081513D4: .4byte 0x00001CDF
_081513D8: .4byte 0x00001F24
_081513DC: .4byte 0x00001F26
_081513E0: .4byte 0x00001F28
_081513E4: .4byte 0x00001F2A
_081513E8: .4byte 0x082125D0
_081513EC: .4byte 0x08CDC4C0
_081513F0: .4byte 0x03001018
_081513F4: .4byte 0x02000050
_081513F8: .4byte 0x04000050
_081513FC: .4byte 0x0000FBFF
_08151400: .4byte 0x0200000A
_08151404: .4byte 0x00001701
_08151408: .4byte 0x00005801
_0815140C: .4byte 0x00001D02
_08151410: .4byte 0x0800AF20
_08151414: .4byte 0x082125D8
_08151418: .4byte 0x03000C84
_0815141C: .4byte 0x0300034C
_08151420: .4byte 0x00000888
_08151424: .4byte 0x0800D010
_08151428: .4byte 0x02000080
_0815142C:
	ldr r0, _081514B4 @ =0x0800CE10
	ldr r1, _081514B8 @ =0x02000080
	movs r2, #0x80
	bl CpuFastSet
_08151436:
	ldr r1, _081514B8 @ =0x02000080
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	movs r0, #0x00
_08151442:
	cmp r0, #0x00
	beq _0815144A
	cmp r0, #0x02
	bne _081514BC
_0815144A:
	movs r3, #0x00
	mov r12, r3
	lsls r4, r0, #0x05
	mov r8, r4
	adds r0, #0x01
	mov r10, r0
	movs r0, #0x1F
	mov r9, r0
_0815145A:
	mov r1, r12
	lsls r0, r1, #0x01
	add r0, r8
	ldr r2, _081514B8 @ =0x02000080
	adds r5, r0, r2
	ldrh r2, [r5, #0x00]
	adds r6, r2, #0x0
	lsrs r1, r2, #0x0A
	mov r3, r9
	ands r1, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsrs r4, r0, #0x01
	cmp r4, #0x1F
	bls _0815147A
	movs r4, #0x1F
_0815147A:
	lsrs r1, r2, #0x05
	mov r0, r9
	ands r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsrs r3, r0, #0x01
	cmp r3, #0x1F
	bls _0815148C
	movs r3, #0x1F
_0815148C:
	movs r1, #0x1F
	ands r1, r6
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsrs r2, r0, #0x01
	cmp r2, #0x1F
	bls _0815149C
	movs r2, #0x1F
_0815149C:
	lsls r0, r3, #0x05
	orrs r2, r0
	lsls r0, r4, #0x0A
	orrs r2, r0
	strh r2, [r5, #0x00]
	movs r1, #0x01
	add r12, r1
	mov r2, r12
	cmp r2, #0x0F
	ble _0815145A
	b _08151522
	.byte 0x00, 0x00
_081514B4: .4byte 0x0800CE10
_081514B8: .4byte 0x02000080
_081514BC:
	movs r3, #0x00
	mov r12, r3
	lsls r4, r0, #0x05
	mov r8, r4
	adds r0, #0x01
	mov r10, r0
	movs r0, #0x1F
	mov r9, r0
_081514CC:
	mov r1, r12
	lsls r0, r1, #0x01
	add r0, r8
	ldr r2, _08151614 @ =0x02000080
	adds r5, r0, r2
	ldrh r2, [r5, #0x00]
	adds r6, r2, #0x0
	lsrs r1, r2, #0x0A
	mov r3, r9
	ands r1, r3
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsrs r4, r0, #0x01
	cmp r4, #0x1F
	bls _081514EC
	movs r4, #0x1F
_081514EC:
	lsrs r1, r2, #0x05
	mov r0, r9
	ands r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsrs r3, r0, #0x01
	cmp r3, #0x1F
	bls _081514FE
	movs r3, #0x1F
_081514FE:
	movs r1, #0x1F
	ands r1, r6
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r0, #0x01
	cmp r2, #0x1F
	bls _0815150E
	movs r2, #0x1F
_0815150E:
	lsls r0, r3, #0x05
	orrs r2, r0
	lsls r0, r4, #0x0A
	orrs r2, r0
	strh r2, [r5, #0x00]
	movs r1, #0x01
	add r12, r1
	mov r2, r12
	cmp r2, #0x0F
	ble _081514CC
_08151522:
	mov r0, r10
	cmp r0, #0x0F
	ble _08151442
	ldr r1, _08151618 @ =0x0600C000
	movs r2, #0x80
	lsls r2, r2, #0x03
	ldr r0, _0815161C @ =0x0800D210
	bl CpuFastSet
	ldr r2, _08151620 @ =0x0300034C
	ldrh r1, [r2, #0x02]
	ldr r3, _08151624 @ =0x00007FFF
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x02]
	movs r4, #0x1F
	ldr r0, _08151628 @ =0x00001CCA
	adds r3, r7, r0
	ldr r5, _08151614 @ =0x02000080
	movs r6, #0x3F
_0815154A:
	ldrh r1, [r5, #0x00]
	asrs r0, r1, #0x0A
	ands r0, r4
	lsls r2, r0, #0x01
	cmp r2, #0x1F
	ble _08151558
	movs r2, #0x1F
_08151558:
	asrs r0, r1, #0x05
	ands r0, r4
	cmp r0, #0x1F
	ble _08151562
	movs r0, #0x1F
_08151562:
	ands r1, r4
	asrs r1, r1, #0x01
	cmp r1, #0x1F
	ble _0815156C
	movs r1, #0x1F
_0815156C:
	lsls r0, r0, #0x05
	orrs r1, r0
	lsls r0, r2, #0x0A
	orrs r1, r0
	strh r1, [r3, #0x00]
	ldrh r1, [r5, #0x02]
	asrs r0, r1, #0x0A
	ands r0, r4
	lsls r2, r0, #0x01
	cmp r2, #0x1F
	ble _08151584
	movs r2, #0x1F
_08151584:
	asrs r0, r1, #0x05
	ands r0, r4
	cmp r0, #0x1F
	ble _0815158E
	movs r0, #0x1F
_0815158E:
	ands r1, r4
	asrs r1, r1, #0x01
	cmp r1, #0x1F
	ble _08151598
	movs r1, #0x1F
_08151598:
	lsls r0, r0, #0x05
	orrs r1, r0
	lsls r0, r2, #0x0A
	orrs r1, r0
	strh r1, [r3, #0x02]
	adds r3, #0x04
	adds r5, #0x04
	subs r6, #0x02
	cmp r6, #0x00
	bge _0815154A
	ldr r4, _0815162C @ =0x03001014
	movs r1, #0xAC
	lsls r1, r1, #0x03
	ldr r2, _08151630 @ =0x082125E0
	movs r0, #0x00
	bl alloc_heap_8018CEC
	str r0, [r4, #0x00]
	ldr r1, _08151634 @ =0x00001CB4
	adds r4, r7, r1
	ldr r2, _08151638 @ =0x082125E8
	movs r0, #0x44
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8150A44
	str r0, [r4, #0x00]
	ldr r1, _08151620 @ =0x0300034C
	ldr r2, _0815163C @ =0x00000888
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, _08151640 @ =0x00001CB0
	adds r1, r7, r3
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r4, _08151644 @ =0x00001CAC
	adds r5, r7, r4
	ldr r2, _08151648 @ =0x082125F0
	movs r0, #0x08
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	bl sub_8158198
	ldr r0, _0815164C @ =0x08CDC590
	str r0, [r4, #0x04]
	str r4, [r5, #0x00]
	adds r0, r7, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08151614: .4byte 0x02000080
_08151618: .4byte 0x0600C000
_0815161C: .4byte 0x0800D210
_08151620: .4byte 0x0300034C
_08151624: .4byte 0x00007FFF
_08151628: .4byte 0x00001CCA
_0815162C: .4byte 0x03001014
_08151630: .4byte 0x082125E0
_08151634: .4byte 0x00001CB4
_08151638: .4byte 0x082125E8
_0815163C: .4byte 0x00000888
_08151640: .4byte 0x00001CB0
_08151644: .4byte 0x00001CAC
_08151648: .4byte 0x082125F0
_0815164C: .4byte 0x08CDC590
	thumb_func_start sub_8151650
sub_8151650:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _08151724 @ =0x08CDC4B0
	str r0, [r4, #0x18]
	movs r0, #0x00
	bl sub_8019628
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	ldr r3, _08151728 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _0815172C @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _08151730 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08151734 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _08151738 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
	movs r0, #0x04
	movs r1, #0x00
	bl sub_8018B78
	adds r0, r4, #0x0
	bl sub_8151BBC
	ldr r1, _0815173C @ =0x00001F30
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081516AE
	movs r1, #0x03
	bl process_remove
_081516AE:
	ldr r5, _08151740 @ =0x03001014
	ldr r0, [r5, #0x00]
	adds r0, #0x04
	bl sub_80184F4
	ldr r1, _08151744 @ =0x00001CB4
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081516C8
	movs r1, #0x03
	bl sub_8150F60
_081516C8:
	ldr r0, [r5, #0x00]
	bl free_heap_memory_8018C68
	ldr r1, _08151748 @ =0x0300034C
	ldr r0, _0815174C @ =0x0000FFFF
	strh r0, [r1, #0x02]
	ldr r0, _08151750 @ =0x00000888
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	bl process_enable
	bl sub_8150A38
	movs r1, #0x80
	lsls r1, r1, #0x12
	movs r0, #0x40
	strh r0, [r1, #0x00]
	ldr r1, _08151754 @ =0x00001064
	adds r0, r4, r1
	movs r1, #0x02
	bl sub_8160EA4
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r4, r1
	movs r1, #0x02
	bl sub_8160EA4
	adds r0, r4, #0x0
	adds r0, #0x1C
	movs r1, #0x02
	bl sub_8160EA4
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08151724: .4byte 0x08CDC4B0
_08151728: .4byte 0x04000208
_0815172C: .4byte 0x02000004
_08151730: .4byte 0x0000FFEF
_08151734: .4byte 0x04000200
_08151738: .4byte 0x0000FFFD
_0815173C: .4byte 0x00001F30
_08151740: .4byte 0x03001014
_08151744: .4byte 0x00001CB4
_08151748: .4byte 0x0300034C
_0815174C: .4byte 0x0000FFFF
_08151750: .4byte 0x00000888
_08151754: .4byte 0x00001064
