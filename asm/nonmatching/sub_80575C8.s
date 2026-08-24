	.syntax unified
	.text

	thumb_func_start sub_80575C8
sub_80575C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	adds r4, r3, #0x0
	ldr r5, [sp, #0x048]
	ldr r6, [sp, #0x04C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl process_add
	ldr r0, _08057728 @ =0x08CDC288
	str r0, [r7, #0x18]
	ldr r1, _0805772C @ =0x0000057C
	adds r0, r7, r1
	ldr r2, [sp, #0x050]
	str r2, [r0, #0x00]
	movs r3, #0x00
	mov r8, r3
	ldr r0, _08057730 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	strh r4, [r7, #0x1E]
	strh r5, [r7, #0x22]
	strh r6, [r7, #0x24]
	adds r5, r7, #0x0
	adds r5, #0x94
	str r5, [sp, #0x004]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	ldr r2, _08057734 @ =0x081E2794
	adds r0, r4, #0x0
	movs r1, #0x01
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x98
	str r0, [sp, #0x008]
	ldr r2, _08057738 @ =0x081E279C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	ldr r1, [sp, #0x008]
	str r0, [r1, #0x00]
	movs r2, #0xA8
	adds r2, r2, r7
	mov r10, r2
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _0805773C @ =0x081E27A4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r3, r10
	str r0, [r3, #0x00]
	movs r5, #0x9C
	adds r5, r5, r7
	mov r9, r5
	movs r0, #0x80
	lsls r0, r0, #0x05
	ldr r2, _08057740 @ =0x081E27AC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xA0
	movs r0, #0x80
	lsls r0, r0, #0x03
	ldr r2, _08057744 @ =0x081E27B4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	adds r5, r7, #0x0
	adds r5, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08057748 @ =0x081E27BC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x004]
	ldr r1, [r2, #0x00]
	ldr r4, _0805774C @ =0x01000C00
	mov r0, sp
	adds r2, r4, #0x0
	bl CpuFastSet
	mov r3, r8
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x008]
	ldr r1, [r0, #0x00]
	mov r0, sp
	adds r2, r4, #0x0
	bl CpuFastSet
	mov r1, r8
	str r1, [sp, #0x000]
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldr r2, _08057750 @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	mov r3, r8
	str r3, [sp, #0x000]
	mov r0, r9
	ldr r1, [r0, #0x00]
	ldr r2, _08057754 @ =0x01000400
	mov r0, sp
	bl CpuFastSet
	mov r1, r8
	str r1, [sp, #0x000]
	ldr r1, [r6, #0x00]
	ldr r2, _08057758 @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	mov r2, r8
	str r2, [sp, #0x000]
	ldr r1, [r5, #0x00]
	ldr r2, _0805775C @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldrh r0, [r7, #0x1E]
	ldr r1, _08057760 @ =0x00007FFF
	ands r1, r0
	adds r0, r7, #0x0
	bl sub_8059EC8
	adds r0, r7, #0x0
	adds r0, #0x76
	mov r3, r8
	strh r3, [r0, #0x00]
	adds r0, #0x06
	strh r3, [r0, #0x00]
	adds r0, #0x10
	movs r5, #0x00
	strb r5, [r0, #0x00]
	ldr r0, _08057764 @ =0x03000DD0
	ldrh r1, [r0, #0x12]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08057768
	movs r0, #0x70
	ands r0, r1
	lsrs r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x05
	adds r0, r7, #0x0
	adds r0, #0x74
	strh r1, [r0, #0x00]
	b _08057778
	.byte 0x00, 0x00
_08057728: .4byte dword_8CDC288 @ =0x08CDC288
_0805772C: .4byte 0x0000057C
_08057730: .4byte 0x0000FFFB
_08057734: .4byte dword_81E2794 @ =0x081E2794
_08057738: .4byte dword_81E279C @ =0x081E279C
_0805773C: .4byte dword_81E27A4 @ =0x081E27A4
_08057740: .4byte dword_81E27AC @ =0x081E27AC
_08057744: .4byte dword_81E27B4 @ =0x081E27B4
_08057748: .4byte dword_81E27BC @ =0x081E27BC
_0805774C: .4byte 0x01000C00
_08057750: .4byte 0x01000A00
_08057754: .4byte 0x01000400
_08057758: .4byte 0x01000100
_0805775C: .4byte 0x01000800
_08057760: .4byte 0x00007FFF
_08057764: .4byte 0x03000DD0
_08057768:
	movs r0, #0x70
	ands r0, r1
	lsrs r1, r0, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x05
	adds r1, r7, #0x0
	adds r1, #0x74
	strh r0, [r1, #0x00]
_08057778:
	ldr r1, _0805778C @ =0x03000DD0
	ldrh r2, [r1, #0x12]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _08057790
	movs r0, #0x07
	ands r0, r2
	negs r0, r0
	b _08057794
_0805778C: .4byte 0x03000DD0
_08057790:
	movs r0, #0x07
	ands r0, r2
_08057794:
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x06
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r1, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x8B
	movs r0, #0x00
	strb r0, [r2, #0x00]
	ldr r0, _08057800 @ =0x03000DD0
	ldrh r3, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bne _080577C4
	movs r1, #0x80
	movs r0, #0x07
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080577C4:
	ldr r3, _08057800 @ =0x03000DD0
	ldrh r1, [r3, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080577DA
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
_080577DA:
	ldr r5, _08057800 @ =0x03000DD0
	ldrh r1, [r5, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08057804
	movs r0, #0xE0
	lsls r0, r0, #0x07
	ands r0, r1
	lsrs r0, r0, #0x0C
	lsls r1, r0, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x05
	adds r1, r7, #0x0
	adds r1, #0x72
	strh r0, [r1, #0x00]
	str r1, [sp, #0x010]
	b _0805781A
_08057800: .4byte 0x03000DD0
_08057804:
	movs r0, #0xE0
	lsls r0, r0, #0x07
	ands r0, r1
	lsrs r0, r0, #0x0C
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x05
	adds r0, r7, #0x0
	adds r0, #0x72
	strh r1, [r0, #0x00]
	str r0, [sp, #0x010]
_0805781A:
	ldr r0, _08057834 @ =0x03000DD0
	ldrh r1, [r0, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08057838
	movs r0, #0xE0
	lsls r0, r0, #0x03
	ands r0, r1
	lsrs r0, r0, #0x08
	negs r0, r0
	b _08057840
_08057834: .4byte 0x03000DD0
_08057838:
	movs r0, #0xE0
	lsls r0, r0, #0x03
	ands r0, r1
	lsrs r0, r0, #0x08
_08057840:
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x06
	adds r0, r7, #0x0
	adds r0, #0x78
	strh r1, [r0, #0x00]
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	adds r2, #0x8A
	movs r0, #0x00
	strb r0, [r2, #0x00]
	ldr r1, _080578B4 @ =0x03000DD0
	ldrh r3, [r1, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x08
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r2, [sp, #0x018]
	cmp r0, r1
	bne _08057876
	movs r1, #0x80
	movs r0, #0x38
	ands r0, r3
	lsrs r0, r0, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
_08057876:
	ldr r2, _080578B4 @ =0x03000DD0
	ldrh r3, [r2, #0x0C]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r3
	cmp r0, #0x00
	beq _0805788E
	ldr r5, [sp, #0x018]
	ldrb r0, [r5, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r5, #0x00]
_0805788E:
	adds r0, r7, #0x0
	adds r0, #0x88
	movs r2, #0x04
	strh r2, [r0, #0x00]
	subs r0, #0x06
	strh r2, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x02
	adds r1, r4, #0x0
	ands r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _080578DA
	cmp r1, r0
	bgt _080578B8
	cmp r1, #0x00
	beq _080578C6
	b _08057900
_080578B4: .4byte 0x03000DD0
_080578B8:
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _080578E4
	cmp r1, r4
	beq _080578EE
	b _08057900
_080578C6:
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r2, [r0, #0x00]
	adds r0, #0x06
	strh r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x90
	movs r0, #0x04
	strb r0, [r1, #0x00]
	b _08057900
_080578DA:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x01
	movs r1, #0x01
	b _080578F6
_080578E4:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x02
	movs r1, #0x02
	b _080578F6
_080578EE:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x08
	movs r1, #0x08
_080578F6:
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strh r1, [r0, #0x00]
	adds r0, #0x0C
	strb r2, [r0, #0x00]
_08057900:
	ldr r1, _08057914 @ =0x03000DD0
	ldrh r0, [r1, #0x0C]
	movs r1, #0x38
	ands r1, r0
	cmp r1, #0x08
	bne _08057918
	adds r1, r7, #0x0
	adds r1, #0x84
	b _08057920
	.byte 0x00, 0x00
_08057914: .4byte 0x03000DD0
_08057918:
	cmp r1, #0x10
	bne _08057924
	adds r1, r7, #0x0
	adds r1, #0x7E
_08057920:
	movs r0, #0x04
	strh r0, [r1, #0x00]
_08057924:
	ldr r2, _0805793C @ =0x03000DD0
	ldrh r0, [r2, #0x0C]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x40
	beq _08057954
	cmp r1, #0x40
	bgt _08057940
	cmp r1, #0x00
	beq _0805794A
	b _0805797A
	.byte 0x00, 0x00
_0805793C: .4byte 0x03000DD0
_08057940:
	cmp r1, #0x80
	beq _0805795E
	cmp r1, #0xC0
	beq _08057968
	b _0805797A
_0805794A:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x04
	movs r1, #0x04
	b _08057970
_08057954:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x01
	movs r1, #0x01
	b _08057970
_0805795E:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x02
	movs r1, #0x02
	b _08057970
_08057968:
	adds r0, r7, #0x0
	adds r0, #0x80
	movs r2, #0x08
	movs r1, #0x08
_08057970:
	strh r1, [r0, #0x00]
	adds r0, #0x06
	strh r1, [r0, #0x00]
	adds r0, #0x0B
	strb r2, [r0, #0x00]
_0805797A:
	ldr r3, _0805798C @ =0x03000DD0
	ldrh r0, [r3, #0x0C]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x01
	bne _08057990
	adds r1, r7, #0x0
	adds r1, #0x86
	b _08057998
_0805798C: .4byte 0x03000DD0
_08057990:
	cmp r1, #0x02
	bne _0805799C
	adds r1, r7, #0x0
	adds r1, #0x80
_08057998:
	movs r0, #0x04
	strh r0, [r1, #0x00]
_0805799C:
	movs r0, #0x02
	adds r5, r7, #0x0
	adds r5, #0x5A
	str r5, [sp, #0x01C]
	movs r1, #0x60
	adds r1, r1, r7
	mov r12, r1
	adds r2, r7, #0x0
	adds r2, #0x66
	str r2, [sp, #0x020]
	adds r3, r7, #0x0
	adds r3, #0x6C
	str r3, [sp, #0x00C]
	movs r5, #0x4E
	adds r5, r5, r7
	mov r10, r5
	movs r1, #0x54
	adds r1, r1, r7
	mov r9, r1
_080579C2:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	mov r8, r0
	cmp r2, #0x02
	beq _08057A8C
	ldr r3, [sp, #0x018]
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x00
	bne _08057A8C
	lsls r4, r2, #0x01
	mov r0, r10
	adds r5, r0, r4
	ldr r1, [sp, #0x010]
	adds r2, r1, r4
	adds r0, r7, #0x0
	adds r0, #0x5E
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, #0x20
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r5, #0x00]
	mov r0, r9
	adds r0, r0, r4
	str r0, [sp, #0x024]
	ldr r1, [sp, #0x014]
	adds r2, r1, r4
	adds r0, r7, #0x0
	adds r0, #0x64
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, #0x20
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	ldr r1, [sp, #0x024]
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bge _08057A34
	strh r6, [r5, #0x00]
	b _08057A48
_08057A34:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	adds r1, r7, #0x0
	adds r1, #0x36
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _08057A48
	strh r1, [r5, #0x00]
_08057A48:
	mov r5, r8
	asrs r3, r5, #0x0F
	mov r0, r9
	adds r2, r0, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08057A5E
	movs r3, #0x00
	strh r3, [r2, #0x00]
	b _08057A72
_08057A5E:
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r7, #0x0
	adds r1, #0x3C
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08057A72
	strh r1, [r2, #0x00]
_08057A72:
	mov r0, r8
	asrs r1, r0, #0x0F
	ldr r3, [sp, #0x01C]
	adds r2, r3, r1
	mov r5, r10
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	mov r0, r12
	adds r2, r0, r1
	add r1, r9
	ldrh r0, [r1, #0x00]
	b _08057AAC
_08057A8C:
	mov r1, r8
	asrs r2, r1, #0x0F
	mov r3, r10
	adds r1, r3, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	mov r5, r9
	adds r1, r5, r2
	ldrh r0, [r7, #0x24]
	strh r0, [r1, #0x00]
	ldr r0, [sp, #0x01C]
	adds r1, r0, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	add r2, r12
	ldrh r0, [r7, #0x24]
_08057AAC:
	strh r0, [r2, #0x00]
	mov r1, r8
	asrs r2, r1, #0x10
	lsls r1, r2, #0x01
	ldr r3, [sp, #0x020]
	adds r0, r3, r1
	movs r5, #0x00
	strh r5, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	strh r5, [r1, #0x00]
	subs r2, #0x01
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	cmp r2, #0x00
	blt _08057ACE
	b _080579C2
_08057ACE:
	ldr r1, _08057AEC @ =0x03000DD0
	ldrb r0, [r1, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	movs r4, #0x00
	cmp r1, #0x20
	beq _08057AFE
	cmp r1, #0x20
	bgt _08057AF0
	cmp r1, #0x00
	beq _08057AF6
	b _08057B0C
_08057AEC: .4byte 0x03000DD0
_08057AF0:
	cmp r0, #0x40
	beq _08057B06
	b _08057B0C
_08057AF6:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _08057B0C
_08057AFE:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _08057B0C
_08057B06:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_08057B0C:
	ldr r1, _08057B48 @ =0x0200000A
	ldr r5, _08057B4C @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08057B50 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r3, _08057B54 @ =0x00004404
	adds r0, r3, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	movs r5, #0xAF
	lsls r5, r5, #0x03
	adds r1, r7, r5
	movs r0, #0x00
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08057B48: .4byte 0x0200000A
_08057B4C: .4byte 0x00004004
_08057B50: .4byte 0x00004204
_08057B54: .4byte 0x00004404
