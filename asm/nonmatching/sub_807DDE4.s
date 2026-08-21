	.syntax unified
	.text

	thumb_func_start sub_807DDE4
sub_807DDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, [r4, #0x4C]
	ldr r0, _0807DE5C @ =0x08086961
	mov r8, r4
	cmp r1, r0
	bne _0807DE02
	ldr r0, [r4, #0x30]
	mov r8, r0
_0807DE02:
	adds r0, r7, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r5, r0, #0x1D
	lsls r1, r5, #0x02
	mov r0, r8
	adds r0, #0x58
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE26
	b _0807DFD6
_0807DE26:
	mov r0, r8
	adds r0, #0x77
	ldrb r2, [r0, #0x00]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE3E
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DE3E
	b _0807DFD6
_0807DE3E:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _0807DE60
	movs r0, #0x10
	b _0807DE6A
	.byte 0x00, 0x00
_0807DE5C: .4byte sub_8086960
_0807DE60:
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DE72
	movs r0, #0x08
_0807DE6A:
	ands r0, r2
	cmp r0, #0x00
	beq _0807DE72
	b _0807DFD6
_0807DE72:
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_80875E0
	str r0, [sp, #0x000]
	cmp r0, #0x00
	bne _0807DE82
	b _0807DFD6
_0807DE82:
	cmp r8, r4
	beq _0807DE8C
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x54]
_0807DE8C:
	cmp r5, #0x00
	bne _0807DE92
	b _0807DFC4
_0807DE92:
	cmp r6, #0x00
	bne _0807DE98
	b _0807DFC4
_0807DE98:
	cmp r5, #0x01
	beq _0807DEFA
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	bne _0807DEB2
	b _0807DFD6
_0807DEB2:
	cmp r6, #0x00
	bne _0807DEF4
	movs r5, #0x00
	ldr r1, _0807DED8 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, [r0, #0x54]
	mov r9, r1
	cmp r2, #0x00
	beq _0807DEF4
	mov r0, r9
	movs r3, #0x00
_0807DEC8:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DEEC
	cmp r5, #0x00
	beq _0807DEDC
	str r1, [r5, #0x34]
	b _0807DEE0
	.byte 0x00, 0x00
_0807DED8: .4byte 0x03000FD8
_0807DEDC:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DEE0:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DEF4
_0807DEEC:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DEC8
_0807DEF4:
	cmp r6, #0x00
	ble _0807DFD6
	b _0807DFC4
_0807DEFA:
	ldr r2, _0807DF54 @ =0x03000FD8
	mov r9, r2
	ldr r1, [r2, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	movs r3, #0x02
	mov r10, r3
	cmp r7, r0
	bne _0807DF10
	movs r0, #0x01
	mov r10, r0
_0807DF10:
	ldrb r0, [r1, #0x0D]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	bne _0807DFD6
	mov r0, r8
	adds r1, r7, #0x0
	ldr r2, [sp, #0x000]
	bl _call_via_r6
	adds r6, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r6, r0
	beq _0807DFD6
	cmp r6, #0x00
	bne _0807DF8A
	movs r5, #0x00
	mov r2, r9
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x54]
	cmp r2, #0x00
	beq _0807DF70
	mov r0, r9
	movs r3, #0x00
_0807DF46:
	ldr r1, [r2, #0x34]
	cmp r2, r4
	bne _0807DF68
	cmp r5, #0x00
	beq _0807DF58
	str r1, [r5, #0x34]
	b _0807DF5C
_0807DF54: .4byte 0x03000FD8
_0807DF58:
	ldr r0, [r0, #0x00]
	str r1, [r0, #0x54]
_0807DF5C:
	str r3, [r4, #0x58]
	str r3, [r4, #0x5C]
	str r3, [r4, #0x60]
	str r3, [r4, #0x64]
	str r3, [r4, #0x34]
	b _0807DF70
_0807DF68:
	adds r5, r2, #0x0
	adds r2, r1, #0x0
	cmp r2, #0x00
	bne _0807DF46
_0807DF70:
	mov r0, r9
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0D]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1E
	mov r1, r10
	orrs r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0D]
_0807DF8A:
	cmp r6, #0x00
	bgt _0807DFC4
	ldr r2, [sp, #0x000]
	cmp r2, #0x03
	bne _0807DFD6
	adds r1, r7, #0x0
	adds r1, #0x94
	ldr r0, [r1, #0x00]
	movs r2, #0x30
	negs r2, r2
	cmp r0, r2
	ble _0807DFA4
	str r2, [r1, #0x00]
_0807DFA4:
	ldr r0, [r1, #0x00]
	negs r0, r0
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x01
	adds r2, r7, #0x0
	adds r2, #0xB2
	strh r1, [r2, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DFD6
_0807DFC4:
	mov r0, r8
	ldr r3, [r0, #0x58]
	cmp r3, #0x00
	beq _0807DFD6
	ldr r1, [r7, #0x28]
	adds r1, #0x08
	ldr r2, [sp, #0x000]
	bl _call_via_r3
_0807DFD6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
