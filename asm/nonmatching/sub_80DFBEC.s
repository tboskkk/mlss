	.syntax unified
	.text

	thumb_func_start sub_80DFBEC
sub_80DFBEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r10, r0
	ldr r0, _080DFC88 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	mov r2, r10
	ldr r2, [r2, #0x0C]
	str r2, [sp, #0x00C]
	ldrh r3, [r2, #0x00]
	str r3, [sp, #0x010]
	movs r0, #0x06
	ldsh r1, [r2, r0]
	cmp r1, #0x00
	beq _080DFC9C
	mov r2, r10
	ldrh r0, [r2, #0x18]
	adds r0, #0x01
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080DFC9C
	ldr r5, [r2, #0x08]
	cmp r5, #0x00
	beq _080DFC3C
_080DFC2E:
	ldr r4, [r5, #0x00]
	adds r0, r5, #0x0
	bl sub_807FA94
	adds r5, r4, #0x0
	cmp r5, #0x00
	bne _080DFC2E
_080DFC3C:
	ldr r0, _080DFC8C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x09]
	movs r0, #0x0F
	ands r0, r2
	cmp r0, #0x00
	bne _080DFC4C
	b _080DFFA8
_080DFC4C:
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1C
	subs r0, #0x01
	movs r1, #0x0F
	ands r0, r1
	movs r1, #0x10
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x09]
	cmp r0, #0x00
	beq _080DFC66
	b _080DFFA8
_080DFC66:
	ldr r0, _080DFC88 @ =0x0300034C
	ldr r3, _080DFC90 @ =0x00000888
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r1, _080DFC94 @ =0x0839EEE4
	cmp r0, #0x02
	beq _080DFC7A
	b _080DFF4C
_080DFC7A:
	ldr r0, [r1, #0x1C]
	cmp r0, #0x00
	bne _080DFC82
	b _080DFF4C
_080DFC82:
	ldr r0, _080DFC98 @ =0x0839EF10
	ldr r0, [r0, #0x1C]
	b _080DFF4E
_080DFC88: .4byte 0x0300034C
_080DFC8C: .4byte 0x03000FD8
_080DFC90: .4byte 0x00000888
_080DFC94: .4byte 0x0839EEE4
_080DFC98: .4byte 0x0839EF10
_080DFC9C:
	ldr r2, [sp, #0x00C]
	adds r2, #0x08
	str r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xC0
	ands r1, r0
	str r1, [sp, #0x014]
	movs r2, #0x3F
	ands r2, r0
	str r2, [sp, #0x010]
	mov r3, r10
	movs r1, #0x12
	ldsh r0, [r3, r1]
	str r0, [sp, #0x000]
	movs r2, #0x14
	ldsh r0, [r3, r2]
	str r0, [sp, #0x004]
	movs r1, #0x16
	ldsh r0, [r3, r1]
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	movs r4, #0x01
	negs r4, r4
	mov r3, r10
	ldrh r2, [r3, #0x10]
	movs r1, #0x10
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	beq _080DFD36
	ldr r1, _080DFD14 @ =0x083B8EEC
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x02
	adds r5, r0, r1
_080DFCEC:
	subs r0, r2, #0x1
	mov r1, r10
	strh r0, [r1, #0x10]
	bl sub_807FB04
	adds r1, r0, #0x0
	mov r2, r10
	ldr r0, [r2, #0x08]
	str r0, [r1, #0x00]
	str r1, [r2, #0x08]
	cmp r4, #0x00
	bge _080DFD18
	ldr r3, [r5, #0x00]
	adds r0, r1, #0x0
	ldr r1, [sp, #0x00C]
	bl _call_via_r3
	adds r4, r0, #0x0
	b _080DFD24
	.byte 0x00, 0x00
_080DFD14: .4byte 0x083B8EEC
_080DFD18:
	ldr r3, [r5, #0x00]
	adds r0, r1, #0x0
	ldr r1, [sp, #0x00C]
	mov r2, r10
	bl _call_via_r3
_080DFD24:
	subs r4, #0x01
	cmp r4, #0x00
	ble _080DFD36
	mov r3, r10
	ldrh r2, [r3, #0x10]
	movs r1, #0x10
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bne _080DFCEC
_080DFD36:
	movs r2, #0x00
	str r2, [sp, #0x018]
	mov r3, r10
	ldr r5, [r3, #0x08]
	cmp r5, #0x00
	bne _080DFD44
	b _080DFEE4
_080DFD44:
	ldr r0, [r5, #0x00]
	str r0, [sp, #0x01C]
	movs r1, #0x16
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	beq _080DFD88
	str r5, [sp, #0x018]
	ldr r1, _080DFD84 @ =0x083B8EFC
	ldr r2, [sp, #0x010]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x0E
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	ldr r1, [sp, #0x00C]
	mov r2, r10
	bl _call_via_r3
	ldr r0, [r5, #0x0C]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r7, r0, r3
	cmp r7, #0x00
	bgt _080DFD76
	b _080DFEDC
_080DFD76:
	movs r0, #0x80
	lsls r0, r0, #0x0B
	cmp r7, r0
	ble _080DFD80
	b _080DFEDC
_080DFD80:
	b _080DFDA2
	.byte 0x00, 0x00
_080DFD84: .4byte 0x083B8EFC
_080DFD88:
	ldr r0, [sp, #0x018]
	cmp r0, #0x00
	beq _080DFD94
	ldr r1, [sp, #0x01C]
	str r1, [r0, #0x00]
	b _080DFD9A
_080DFD94:
	ldr r2, [sp, #0x01C]
	mov r3, r10
	str r2, [r3, #0x08]
_080DFD9A:
	adds r0, r5, #0x0
	bl sub_807FA94
	b _080DFEDC
_080DFDA2:
	ldr r6, [r5, #0x04]
	ldr r4, [r5, #0x08]
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	mov r8, r2
	str r0, [sp, #0x020]
	cmp r2, #0x00
	beq _080DFE10
	ldr r3, _080DFDE8 @ =0x03001038
	ldr r1, _080DFDEC @ =0x0819832C
	ldr r0, _080DFDF0 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	lsls r0, r6, #0x08
	adds r1, r7, #0x0
	str r3, [sp, #0x024]
	bl _call_via_r2
	ldr r1, [sp, #0x000]
	adds r6, r0, r1
	ldr r3, [sp, #0x024]
	mov r0, r8
	cmp r0, #0x40
	bne _080DFDF4
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	lsls r0, r4, #0x08
	adds r1, r7, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	adds r4, r0, r1
	b _080DFE2C
_080DFDE8: .4byte 0x03001038
_080DFDEC: .4byte 0x0819832C
_080DFDF0: .4byte 0x08198220
_080DFDF4:
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r4, r1
	lsls r0, r0, #0x08
	adds r1, r7, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x60
	b _080DFE2C
_080DFE10:
	adds r1, r6, #0x0
	cmp r6, #0x00
	bge _080DFE18
	adds r1, #0x7F
_080DFE18:
	asrs r1, r1, #0x07
	ldr r0, [sp, #0x000]
	adds r6, r1, r0
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _080DFE26
	adds r1, #0x7F
_080DFE26:
	asrs r1, r1, #0x07
	ldr r0, [sp, #0x004]
	adds r4, r1, r0
_080DFE2C:
	movs r0, #0x08
	negs r0, r0
	cmp r6, r0
	blt _080DFEDC
	cmp r4, r0
	blt _080DFEDC
	cmp r6, #0xF0
	bgt _080DFEDC
	cmp r4, #0xA0
	bgt _080DFEDC
	movs r0, #0xFF
	ands r4, r0
	mov r2, r9
	strh r4, [r2, #0x00]
	ldr r3, _080DFE68 @ =0x000001FF
	adds r0, r3, #0x0
	ands r6, r0
	strh r6, [r2, #0x02]
	ldr r0, _080DFE6C @ =0x0000F340
	adds r1, r0, #0x0
	strh r1, [r2, #0x04]
	ldr r2, [sp, #0x020]
	cmp r2, #0x00
	beq _080DFED8
	ldr r0, _080DFE70 @ =0x00015555
	cmp r7, r0
	ble _080DFE74
	adds r0, r1, #0x7
	b _080DFED4
	.byte 0x00, 0x00
_080DFE68: .4byte 0x000001FF
_080DFE6C: .4byte 0x0000F340
_080DFE70: .4byte 0x00015555
_080DFE74:
	ldr r0, _080DFE80 @ =0x0000CCCC
	cmp r7, r0
	ble _080DFE84
	adds r0, r1, #0x6
	b _080DFEAC
	.byte 0x00, 0x00
_080DFE80: .4byte 0x0000CCCC
_080DFE84:
	ldr r0, _080DFE90 @ =0x00009249
	cmp r7, r0
	ble _080DFE94
	adds r0, r1, #0x5
	b _080DFEC0
	.byte 0x00, 0x00
_080DFE90: .4byte 0x00009249
_080DFE94:
	ldr r0, _080DFEA0 @ =0x000071C7
	cmp r7, r0
	ble _080DFEA4
	adds r0, r1, #0x4
	b _080DFED4
	.byte 0x00, 0x00
_080DFEA0: .4byte 0x000071C7
_080DFEA4:
	ldr r0, _080DFEB4 @ =0x00005D17
	cmp r7, r0
	ble _080DFEB8
	adds r0, r1, #0x3
_080DFEAC:
	mov r1, r9
	strh r0, [r1, #0x04]
	b _080DFED8
	.byte 0x00, 0x00
_080DFEB4: .4byte 0x00005D17
_080DFEB8:
	ldr r0, _080DFEC8 @ =0x00004EC4
	cmp r7, r0
	ble _080DFECC
	adds r0, r1, #0x2
_080DFEC0:
	mov r2, r9
	strh r0, [r2, #0x04]
	b _080DFED8
	.byte 0x00, 0x00
_080DFEC8: .4byte 0x00004EC4
_080DFECC:
	ldr r0, _080DFF34 @ =0x00004444
	cmp r7, r0
	ble _080DFED8
	adds r0, r1, #0x1
_080DFED4:
	mov r3, r9
	strh r0, [r3, #0x04]
_080DFED8:
	movs r0, #0x08
	add r9, r0
_080DFEDC:
	ldr r5, [sp, #0x01C]
	cmp r5, #0x00
	beq _080DFEE4
	b _080DFD44
_080DFEE4:
	ldr r4, _080DFF38 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r4, r1
	mov r2, r9
	str r2, [r0, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x08]
	cmp r0, #0x00
	bne _080DFFAE
	ldr r0, _080DFF3C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x09]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1C
	subs r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x09]
	cmp r1, #0x00
	bne _080DFFA8
	ldr r1, _080DFF40 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	ldr r1, _080DFF44 @ =0x0839EEE4
	cmp r0, #0x02
	bne _080DFF4C
	ldr r0, [r1, #0x1C]
	cmp r0, #0x00
	beq _080DFF4C
	ldr r0, _080DFF48 @ =0x0839EF10
	ldr r0, [r0, #0x1C]
	b _080DFF4E
	.byte 0x00, 0x00
_080DFF34: .4byte 0x00004444
_080DFF38: .4byte 0x0300034C
_080DFF3C: .4byte 0x03000FD8
_080DFF40: .4byte 0x00000888
_080DFF44: .4byte 0x0839EEE4
_080DFF48: .4byte 0x0839EF10
_080DFF4C:
	ldr r0, [r1, #0x1C]
_080DFF4E:
	ldr r4, [r0, #0x04]
	ldr r7, _080DFFC0 @ =0x03001034
	ldr r1, _080DFFC4 @ =0x08198154
	ldr r0, _080DFFC8 @ =0x081980D8
	subs r5, r1, r0
	ldr r3, [r7, #0x00]
	adds r3, r3, r5
	ldr r1, _080DFFCC @ =0x02000460
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _080DFFD0 @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r6, _080DFFD4 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080DFFA8
	ldr r3, [r7, #0x00]
	adds r3, r3, r5
	ldr r0, [r6, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x1C]
	movs r0, #0xF8
	lsls r0, r0, #0x02
	adds r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x20
	bl _call_via_r3
_080DFFA8:
	movs r0, #0x00
	mov r1, r10
	str r0, [r1, #0x04]
_080DFFAE:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DFFC0: .4byte 0x03001034
_080DFFC4: .4byte 0x08198154
_080DFFC8: .4byte 0x081980D8
_080DFFCC: .4byte 0x02000460
_080DFFD0: .4byte 0x0300034C
_080DFFD4: .4byte 0x03000FD8
