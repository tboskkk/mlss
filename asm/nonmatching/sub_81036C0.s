	.syntax unified
	.text

	thumb_func_start sub_81036C0
sub_81036C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	beq _081036DE
	subs r0, r1, #0x1
	strh r0, [r6, #0x10]
	b _0810387C
_081036DE:
	movs r4, #0x12
	ldsh r3, [r6, r4]
	str r3, [sp, #0x000]
	ldr r1, _08103814 @ =0x03000FF4
	lsls r0, r3, #0x04
	subs r0, r0, r3
	lsls r0, r0, #0x02
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	str r1, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0x30
	ldrb r3, [r0, #0x00]
	ldr r7, [sp, #0x000]
	lsls r1, r7, #0x03
	adds r1, r1, r7
	lsls r0, r1, #0x05
	adds r1, r1, r0
	lsls r1, r1, #0x02
	lsls r0, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x02
	ldr r2, _08103818 @ =0x083BAEAC
	adds r0, r0, r2
	adds r5, r1, r0
	adds r4, r5, #0x0
	subs r4, #0x0C
	str r3, [sp, #0x008]
	ldr r2, _0810381C @ =0x03000FDC
	ldr r0, [r2, #0x00]
	ldr r3, _08103820 @ =0x00008E10
	adds r1, r0, r3
	ldrh r3, [r1, #0x00]
	ldr r7, _08103824 @ =0x00008E12
	adds r1, r0, r7
	ldrh r7, [r1, #0x00]
	ldr r1, _08103828 @ =0x00008E14
	ldrh r1, [r1, r0]
	mov r12, r1
	ldr r1, _0810382C @ =0x00008E16
	ldrh r1, [r1, r0]
	mov r8, r1
	ldr r1, _08103830 @ =0x00008E18
	ldrh r1, [r1, r0]
	mov r9, r1
	ldr r1, _08103834 @ =0x00008E1A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r10, r0
	ldrh r1, [r4, #0x06]
	ldrb r0, [r4, #0x08]
	lsls r4, r0, #0x10
	orrs r4, r1
	ldr r1, [sp, #0x004]
	ldr r0, [r1, #0x04]
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x08
	cmp r4, r0
	bhi _081037B0
	ldr r0, [sp, #0x008]
	cmp r0, #0x01
	beq _0810376A
	adds r0, r5, #0x0
	subs r0, #0x18
	ldrh r1, [r0, #0x06]
	ldrb r0, [r0, #0x08]
	lsls r0, r0, #0x10
	orrs r0, r1
	cmp r0, r4
	bhi _081037B0
_0810376A:
	adds r4, r5, #0x0
	ldr r1, [sp, #0x008]
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldrb r0, [r4, #0x00]
	adds r3, r3, r0
	ldrb r0, [r4, #0x01]
	adds r7, r7, r0
	ldrb r0, [r4, #0x02]
	add r12, r0
	ldrb r0, [r4, #0x05]
	add r8, r0
	ldrb r0, [r4, #0x03]
	add r9, r0
	ldrb r0, [r4, #0x04]
	add r10, r0
	ldr r0, _08103838 @ =0x000003E7
	cmp r3, r0
	ble _08103792
	adds r3, r0, #0x0
_08103792:
	cmp r7, r0
	ble _08103798
	adds r7, r0, #0x0
_08103798:
	cmp r12, r0
	ble _0810379E
	mov r12, r0
_0810379E:
	cmp r8, r0
	ble _081037A4
	mov r8, r0
_081037A4:
	cmp r9, r0
	ble _081037AA
	mov r9, r0
_081037AA:
	cmp r10, r0
	ble _081037B0
	mov r10, r0
_081037B0:
	ldr r0, [sp, #0x004]
	adds r0, #0x30
	mov r4, sp
	ldrb r4, [r4, #0x08]
	strb r4, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldr r2, _0810383C @ =0x00008E1C
	adds r1, r0, r2
	strh r3, [r1, #0x00]
	ldr r3, _08103840 @ =0x00008E1E
	adds r1, r0, r3
	strh r7, [r1, #0x00]
	ldr r4, _08103844 @ =0x00008E20
	adds r1, r0, r4
	mov r7, r12
	strh r7, [r1, #0x00]
	adds r2, #0x06
	adds r1, r0, r2
	mov r3, r8
	strh r3, [r1, #0x00]
	adds r4, #0x04
	adds r1, r0, r4
	mov r7, r9
	strh r7, [r1, #0x00]
	ldr r1, _08103848 @ =0x00008E26
	adds r0, r0, r1
	mov r2, r10
	strh r2, [r0, #0x00]
	ldr r0, _0810384C @ =0x081069D5
	ldr r1, _08103850 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r3, #0xDB
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	bl sub_807FF48
	adds r1, r0, #0x0
	movs r0, #0x46
	strh r0, [r1, #0x10]
	ldr r4, [sp, #0x000]
	cmp r4, #0x00
	beq _08103854
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7B
	bl play_sfx_80195B4
	b _0810385E
	.byte 0x00, 0x00
_08103814: .4byte 0x03000FF4
_08103818: .4byte dword_83BAEAC @ =0x083BAEAC
_0810381C: .4byte 0x03000FDC
_08103820: .4byte 0x00008E10
_08103824: .4byte 0x00008E12
_08103828: .4byte 0x00008E14
_0810382C: .4byte 0x00008E16
_08103830: .4byte 0x00008E18
_08103834: .4byte 0x00008E1A
_08103838: .4byte 0x000003E7
_0810383C: .4byte 0x00008E1C
_08103840: .4byte 0x00008E1E
_08103844: .4byte 0x00008E20
_08103848: .4byte 0x00008E26
_0810384C: .4byte sub_81069D4
_08103850: .4byte 0x03000FD8
_08103854:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7A
	bl play_sfx_80195B4
_0810385E:
	ldr r0, _0810388C @ =0x08104FED
	movs r1, #0x00
	bl sub_807FF48
	adds r1, r0, #0x0
	ldrh r0, [r6, #0x12]
	strh r0, [r1, #0x12]
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x0C]
	movs r0, #0x1E
	strh r0, [r1, #0x10]
	movs r0, #0x96
	strh r0, [r6, #0x10]
	ldr r0, _08103890 @ =0x08103895
	str r0, [r6, #0x04]
_0810387C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810388C: .4byte sub_8104FEC
_08103890: .4byte sub_8103894
