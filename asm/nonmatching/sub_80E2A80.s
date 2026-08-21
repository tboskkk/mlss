	.syntax unified
	.text

	thumb_func_start sub_80E2A80
sub_80E2A80:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	str r0, [sp, #0x000]
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	ldrh r1, [r1, #0x22]
	str r1, [sp, #0x008]
	ldr r0, [sp, #0x000]
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [sp, #0x00C]
	lsrs r1, r1, #0x04
	str r1, [sp, #0x010]
	ldr r0, [sp, #0x000]
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x000]
	movs r3, #0x26
	ldsh r2, [r2, r3]
	str r2, [sp, #0x018]
	ldr r7, [sp, #0x000]
	movs r0, #0x28
	ldsh r7, [r7, r0]
	str r7, [sp, #0x01C]
	adds r0, r1, #0x0
	adds r0, #0xEF
	bl __divsi3
	mov r10, r0
	ldr r0, [sp, #0x014]
	adds r0, #0x9F
	ldr r1, [sp, #0x014]
	bl __divsi3
	str r0, [sp, #0x020]
	movs r1, #0x00
	str r1, [sp, #0x024]
	ldr r2, [sp, #0x018]
	cmp r2, #0x00
	beq _080E2AEC
	ldr r0, [sp, #0x004]
	adds r0, #0x01
	ldr r3, [sp, #0x000]
	strh r0, [r3, #0x20]
_080E2AEC:
	ldr r7, [sp, #0x010]
	ldr r0, [sp, #0x014]
	adds r1, r7, r0
	movs r0, #0x21
	subs r0, r0, r1
	mov r9, r0
	cmp r0, #0x1F
	ble _080E2AFE
	b _080E2CA0
_080E2AFE:
	ldr r1, _080E2B84 @ =0x0819832C
	ldr r0, _080E2B88 @ =0x08198220
	subs r1, r1, r0
	str r1, [sp, #0x028]
	mov r1, r9
	lsls r0, r1, #0x05
	adds r0, #0x80
	ldr r2, _080E2B8C @ =0x0300034C
	adds r0, r0, r2
	str r0, [sp, #0x038]
	ldr r7, [sp, #0x01C]
	mov r3, r9
	muls r3, r7
	str r3, [sp, #0x03C]
_080E2B1A:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x018]
	adds r0, r1, #0x0
	muls r0, r2
	ldr r3, [sp, #0x03C]
	adds r0, r0, r3
	ldr r7, [sp, #0x01C]
	lsls r1, r7, #0x05
	subs r2, r0, r1
	cmp r2, #0x00
	bgt _080E2B98
	ldr r1, _080E2B8C @ =0x0300034C
	ldr r2, _080E2B90 @ =0x00000888
	adds r0, r1, r2
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x1C
	lsrs r4, r4, #0x1F
	lsls r4, r4, #0x0A
	ldr r3, [sp, #0x038]
	adds r4, r4, r3
	ldr r7, _080E2B94 @ =0x03001038
	ldr r2, [r7, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x06
	mov r1, r10
	bl _call_via_r2
	ldrh r1, [r4, #0x06]
	movs r1, #0x00
	strh r0, [r4, #0x06]
	ldrh r0, [r4, #0x0E]
	strh r1, [r4, #0x0E]
	ldrh r0, [r4, #0x16]
	strh r1, [r4, #0x16]
	ldr r2, [r7, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r1, [sp, #0x020]
	bl _call_via_r2
	ldrh r1, [r4, #0x1E]
	strh r0, [r4, #0x1E]
	movs r0, #0x01
	mov r2, r9
	lsls r0, r2
	ldr r3, [sp, #0x024]
	orrs r3, r0
	str r3, [sp, #0x024]
	b _080E2C86
_080E2B84: .4byte 0x0819832C
_080E2B88: .4byte 0x08198220
_080E2B8C: .4byte 0x0300034C
_080E2B90: .4byte 0x00000888
_080E2B94: .4byte 0x03001038
_080E2B98:
	cmp r2, #0x3F
	bgt _080E2C86
	ldr r1, _080E2CC8 @ =0x08198584
	movs r0, #0xFF
	ands r2, r0
	lsls r0, r2, #0x01
	adds r0, r0, r1
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _080E2BB0
	adds r0, #0x3F
_080E2BB0:
	asrs r4, r0, #0x06
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r3, r4, r0
	mov r0, r10
	muls r0, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r8, r0
	ldr r1, _080E2CCC @ =0xFFFFFF00
	adds r2, r4, r1
	ldr r7, [sp, #0x020]
	adds r0, r2, #0x0
	muls r0, r7
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r7, r0, #0x01
	mov r0, r10
	muls r0, r2
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r6, r0, #0x01
	ldr r1, [sp, #0x020]
	adds r0, r3, #0x0
	muls r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r5, r0, #0x01
	mov r1, r8
	muls r1, r5
	adds r0, r7, #0x0
	muls r0, r6
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080E2BFA
	adds r0, #0xFF
_080E2BFA:
	asrs r4, r0, #0x08
	ldr r3, _080E2CD0 @ =0x03001038
	ldr r2, [r3, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	lsls r0, r5, #0x05
	subs r0, r0, r5
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	ldr r1, _080E2CD0 @ =0x03001038
	ldr r2, [r1, #0x00]
	ldr r3, [sp, #0x028]
	adds r2, r2, r3
	lsls r0, r6, #0x05
	subs r0, r6, r0
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	ldr r0, _080E2CD0 @ =0x03001038
	ldr r2, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r2, r2, r1
	lsls r0, r7, #0x05
	subs r0, r7, r0
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r7, r0, #0x0
	ldr r3, _080E2CD0 @ =0x03001038
	ldr r2, [r3, #0x00]
	ldr r0, [sp, #0x028]
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #0x05
	subs r0, r0, r1
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	bl _call_via_r2
	mov r8, r0
	ldr r2, _080E2CD4 @ =0x0300034C
	ldr r3, _080E2CD8 @ =0x00000888
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	ldr r1, [sp, #0x038]
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	strh r5, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r6, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r7, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r2, r8
	strh r2, [r0, #0x1E]
	movs r0, #0x01
	mov r3, r9
	lsls r0, r3
	ldr r7, [sp, #0x024]
	orrs r7, r0
	str r7, [sp, #0x024]
_080E2C86:
	ldr r0, [sp, #0x038]
	adds r0, #0x20
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x03C]
	ldr r2, [sp, #0x01C]
	adds r1, r1, r2
	str r1, [sp, #0x03C]
	movs r3, #0x01
	add r9, r3
	mov r7, r9
	cmp r7, #0x1F
	bgt _080E2CA0
	b _080E2B1A
_080E2CA0:
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	bne _080E2CE0
	ldr r1, [sp, #0x000]
	cmp r1, #0x00
	bne _080E2CAE
	b _080E2EC8
_080E2CAE:
	ldr r0, _080E2CDC @ =0x08CDC2E8
	str r0, [r1, #0x18]
	ldr r0, [r1, #0x1C]
	cmp r0, #0x00
	beq _080E2CBC
	ldr r2, [sp, #0x024]
	str r2, [r0, #0x00]
_080E2CBC:
	ldr r0, [sp, #0x000]
	movs r1, #0x03
	bl process_remove
	b _080E2EC8
	.byte 0x00, 0x00
_080E2CC8: .4byte 0x08198584
_080E2CCC: .4byte 0xFFFFFF00
_080E2CD0: .4byte 0x03001038
_080E2CD4: .4byte 0x0300034C
_080E2CD8: .4byte 0x00000888
_080E2CDC: .4byte 0x08CDC2E8
_080E2CE0:
	ldr r2, _080E2DE4 @ =0x0300034C
	movs r3, #0x88
	lsls r3, r3, #0x04
	adds r0, r2, r3
	ldr r5, [r0, #0x00]
	ldr r7, [sp, #0x00C]
	lsls r7, r7, #0x0C
	str r7, [sp, #0x040]
	adds r0, r7, #0x0
	ldr r1, [sp, #0x008]
	orrs r0, r1
	str r0, [sp, #0x040]
	movs r3, #0x00
	ldr r0, [sp, #0x020]
	subs r0, #0x20
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [sp, #0x02C]
	ldr r2, [sp, #0x014]
	cmp r3, r2
	blt _080E2D0E
	b _080E2EBE
_080E2D0E:
	mov r1, r10
	subs r1, #0x20
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	str r1, [sp, #0x030]
_080E2D18:
	movs r0, #0xFF
	ldr r7, [sp, #0x02C]
	ands r7, r0
	str r7, [sp, #0x02C]
	ldr r0, [sp, #0x030]
	asrs r4, r0, #0x01
	adds r1, r3, #0x1
	str r1, [sp, #0x034]
	ldr r2, [sp, #0x010]
	cmp r2, #0x00
	bne _080E2D30
	b _080E2EAC
_080E2D30:
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	ldr r6, [sp, #0x02C]
	orrs r6, r0
	negs r3, r3
	mov r8, r3
	mov r1, r8
	adds r1, #0x1F
	ldr r0, _080E2DE8 @ =0x000001FF
	mov r9, r0
	ldr r2, _080E2DEC @ =0xFFFF8000
	mov r12, r2
	ldr r2, [sp, #0x010]
	negs r3, r2
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	beq _080E2DF0
	cmp r3, #0x03
	bge _080E2DB8
	cmp r3, #0x02
	bge _080E2D8C
	movs r0, #0x01
	lsls r0, r1
	ldr r3, [sp, #0x024]
	ands r0, r3
	cmp r0, #0x00
	beq _080E2D84
	mov r7, r9
	ands r4, r7
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	lsls r3, r1, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r7, sp, #0x040
	ldrh r7, [r7, #0x00]
	strh r7, [r5, #0x04]
	adds r5, #0x08
_080E2D84:
	mov r1, r8
	adds r1, #0x1E
	subs r2, #0x01
	add r4, r10
_080E2D8C:
	movs r0, #0x01
	lsls r0, r1
	ldr r3, [sp, #0x024]
	ands r0, r3
	cmp r0, #0x00
	beq _080E2DB2
	mov r7, r9
	ands r4, r7
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	lsls r3, r1, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r7, sp, #0x040
	ldrh r7, [r7, #0x00]
	strh r7, [r5, #0x04]
	adds r5, #0x08
_080E2DB2:
	subs r1, #0x01
	subs r2, #0x01
	add r4, r10
_080E2DB8:
	movs r0, #0x01
	lsls r0, r1
	ldr r3, [sp, #0x024]
	ands r0, r3
	cmp r0, #0x00
	beq _080E2DDE
	mov r7, r9
	ands r4, r7
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	lsls r3, r1, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r7, sp, #0x040
	ldrh r7, [r7, #0x00]
	strh r7, [r5, #0x04]
	adds r5, #0x08
_080E2DDE:
	subs r1, #0x01
	subs r2, #0x01
	b _080E2EA6
_080E2DE4: .4byte 0x0300034C
_080E2DE8: .4byte 0x000001FF
_080E2DEC: .4byte 0xFFFF8000
_080E2DF0:
	movs r0, #0x01
	lsls r0, r1
	ldr r3, [sp, #0x024]
	ands r0, r3
	cmp r0, #0x00
	beq _080E2E16
	mov r7, r9
	ands r4, r7
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	lsls r3, r1, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r7, sp, #0x040
	ldrh r7, [r7, #0x00]
	strh r7, [r5, #0x04]
	adds r5, #0x08
_080E2E16:
	subs r0, r1, #0x1
	mov r8, r0
	add r4, r10
	movs r0, #0x01
	mov r3, r8
	lsls r0, r3
	ldr r7, [sp, #0x024]
	ands r0, r7
	cmp r0, #0x00
	beq _080E2E46
	mov r0, r9
	ands r4, r0
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	mov r7, r8
	lsls r3, r7, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r0, sp, #0x040
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x04]
	adds r5, #0x08
_080E2E46:
	subs r3, r1, #0x2
	mov r8, r3
	add r4, r10
	movs r0, #0x01
	lsls r0, r3
	ldr r7, [sp, #0x024]
	ands r0, r7
	cmp r0, #0x00
	beq _080E2E74
	mov r0, r9
	ands r4, r0
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	mov r7, r8
	lsls r3, r7, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r0, sp, #0x040
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x04]
	adds r5, #0x08
_080E2E74:
	subs r3, r1, #0x3
	mov r8, r3
	add r4, r10
	movs r0, #0x01
	lsls r0, r3
	ldr r7, [sp, #0x024]
	ands r0, r7
	cmp r0, #0x00
	beq _080E2EA2
	mov r0, r9
	ands r4, r0
	strh r6, [r5, #0x00]
	adds r0, r4, #0x0
	mov r3, r12
	orrs r0, r3
	mov r7, r8
	lsls r3, r7, #0x09
	orrs r0, r3
	strh r0, [r5, #0x02]
	add r0, sp, #0x040
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x04]
	adds r5, #0x08
_080E2EA2:
	subs r1, #0x04
	subs r2, #0x04
_080E2EA6:
	add r4, r10
	cmp r2, #0x00
	bne _080E2DF0
_080E2EAC:
	ldr r3, [sp, #0x034]
	ldr r1, [sp, #0x02C]
	ldr r2, [sp, #0x020]
	adds r1, r1, r2
	str r1, [sp, #0x02C]
	ldr r7, [sp, #0x014]
	cmp r3, r7
	bge _080E2EBE
	b _080E2D18
_080E2EBE:
	ldr r1, _080E2ED8 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	str r5, [r0, #0x00]
_080E2EC8:
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E2ED8: .4byte 0x0300034C
