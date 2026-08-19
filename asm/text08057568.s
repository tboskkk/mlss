	.include "asm/macros.inc"

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
_08057728: .4byte 0x08CDC288
_0805772C: .4byte 0x0000057C
_08057730: .4byte 0x0000FFFB
_08057734: .4byte 0x081E2794
_08057738: .4byte 0x081E279C
_0805773C: .4byte 0x081E27A4
_08057740: .4byte 0x081E27AC
_08057744: .4byte 0x081E27B4
_08057748: .4byte 0x081E27BC
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
	thumb_func_start sub_8057B58
sub_8057B58:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08057BDC @ =0x08CDC288
	str r0, [r4, #0x18]
	ldr r1, _08057BE0 @ =0x00000584
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B72
	adds r0, r4, #0x0
	bl sub_805C6B8
_08057B72:
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B88
	bl free_heap_8018D9C
_08057B88:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057B96
	bl free_heap_8018D9C
_08057B96:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BA4
	bl free_heap_8018D9C
_08057BA4:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BB2
	bl free_heap_8018D9C
_08057BB2:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BC0
	bl free_heap_8018D9C
_08057BC0:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057BCE
	bl free_heap_8018D9C
_08057BCE:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_08057BDC: .4byte 0x08CDC288
_08057BE0: .4byte 0x00000584
	thumb_func_start sub_8057BE4
sub_8057BE4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r5, #0x00
	ldr r0, _08057C38 @ =0x0000FFFB
	strh r0, [r4, #0x1C]
	movs r0, #0xAF
	lsls r0, r0, #0x03
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	adds r4, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _08057C3C @ =0x081E27BC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	str r5, [sp, #0x000]
	ldr r2, _08057C40 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08057C44 @ =0x03000DD0
	ldrb r0, [r0, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	movs r4, #0x00
	cmp r1, #0x20
	beq _08057C56
	cmp r1, #0x20
	bgt _08057C48
	cmp r1, #0x00
	beq _08057C4E
	b _08057C64
	.byte 0x00, 0x00
_08057C38: .4byte 0x0000FFFB
_08057C3C: .4byte 0x081E27BC
_08057C40: .4byte 0x01000800
_08057C44: .4byte 0x03000DD0
_08057C48:
	cmp r0, #0x40
	beq _08057C5E
	b _08057C64
_08057C4E:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _08057C64
_08057C56:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _08057C64
_08057C5E:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_08057C64:
	ldr r1, _08057C8C @ =0x0200000A
	ldr r5, _08057C90 @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _08057C94 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _08057C98 @ =0x00004404
	adds r0, r5, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08057C8C: .4byte 0x0200000A
_08057C90: .4byte 0x00004004
_08057C94: .4byte 0x00004204
_08057C98: .4byte 0x00004404
	thumb_func_start sub_8057C9C
sub_8057C9C:
	push {r4, r5, r6, lr}
	mov r12, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r4, #0x00
	movs r3, #0x02
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	bgt _08057CB8
	movs r6, #0x00
	movs r4, #0x04
	b _08057CC8
_08057CB8:
	mov r2, r12
	ldrh r0, [r2, #0x3A]
	subs r0, #0xF0
	cmp r1, r0
	blt _08057CC8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r4, #0x08
_08057CC8:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bgt _08057CDA
	movs r5, #0x00
	movs r0, #0x01
	orrs r4, r0
	lsls r3, r3, #0x01
	b _08057CF8
_08057CDA:
	lsls r0, r3, #0x01
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	adds r3, r0, #0x0
	cmp r2, r1
	blt _08057CF8
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x02
	orrs r4, r0
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
_08057CF8:
	mov r1, r12
	adds r1, #0x66
	adds r1, r1, r3
	mov r0, r12
	adds r0, #0x4E
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x6C
	adds r1, r1, r3
	mov r0, r12
	adds r0, #0x54
	adds r0, r0, r3
	ldrh r2, [r0, #0x00]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_8057D2C
sub_8057D2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _08057D64 @ =0x086527F4
	mov r9, r0
	mov r10, r9
	ldr r0, _08057D68 @ =0x03000DD0
	ldrb r7, [r0, #0x03]
	ldr r0, _08057D6C @ =0x00000599
	adds r1, r4, r0
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _08057D5A
	b _08057EF4
_08057D5A:
	lsls r0, r0, #0x02
	ldr r1, _08057D70 @ =0x08057D74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08057D64: .4byte 0x086527F4
_08057D68: .4byte 0x03000DD0
_08057D6C: .4byte 0x00000599
_08057D70: .4byte 0x08057D74
	.byte 0x88, 0x7D, 0x05, 0x08, 0xD4, 0x7D, 0x05, 0x08, 0x28, 0x7E, 0x05, 0x08, 0x84, 0x7E, 0x05, 0x08
	.byte 0xA8, 0x7E, 0x05, 0x08, 0x0F, 0x48, 0x21, 0x18, 0x01, 0x20, 0x08, 0x70, 0x20, 0x1C, 0x02, 0xF0
	.byte 0xF5, 0xF8, 0x00, 0x23, 0x0C, 0x4A, 0x13, 0x60, 0x0C, 0x49, 0xB8, 0x00, 0x41, 0x18, 0x08, 0x78
	.byte 0xFF, 0x28, 0x00, 0xD1, 0x9D, 0xE0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x50, 0x60
	.byte 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x90, 0x60, 0xD3, 0x60, 0x10, 0x1C, 0xC1, 0xF7, 0x22, 0xFD
	.byte 0x8F, 0xE0, 0x00, 0x00, 0x79, 0x05, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08
	.byte 0x11, 0x4E, 0x35, 0x68, 0x00, 0x2D, 0x00, 0xD0, 0xA1, 0xE0, 0xA4, 0x21, 0x09, 0x19, 0x88, 0x46
	.byte 0x08, 0x68, 0x0E, 0x49, 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0x54, 0xFC, 0x35, 0x60, 0x0C, 0x49
	.byte 0xB8, 0x00, 0x01, 0x30, 0x41, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x72, 0xD0, 0x80, 0x00, 0x50, 0x44
	.byte 0x00, 0x68, 0x48, 0x44, 0x70, 0x60, 0x41, 0x46, 0x08, 0x68, 0xB0, 0x60, 0xF5, 0x60, 0x30, 0x1C
	.byte 0xC1, 0xF7, 0xF8, 0xFC, 0x65, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x00, 0x40, 0x00, 0x06
	.byte 0x6C, 0xAA, 0x3A, 0x08, 0x10, 0x4E, 0x35, 0x68, 0x00, 0x2D, 0x78, 0xD1, 0xA4, 0x20, 0x00, 0x19
	.byte 0x80, 0x46, 0x00, 0x68, 0x0D, 0x49, 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0x2B, 0xFC, 0x35, 0x60
	.byte 0x0B, 0x49, 0xB8, 0x00, 0x02, 0x30, 0x41, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x12, 0xD0, 0x80, 0x00
	.byte 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x70, 0x60, 0x41, 0x46, 0x08, 0x68, 0xB0, 0x60, 0xF5, 0x60
	.byte 0x30, 0x1C, 0xC1, 0xF7, 0xCF, 0xFC, 0x3C, 0xE0, 0xC0, 0x0D, 0x00, 0x03, 0x00, 0x60, 0x00, 0x06
	.byte 0x6C, 0xAA, 0x3A, 0x08, 0x01, 0x48, 0xA0, 0x83, 0x51, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x06, 0x48, 0x00, 0x68, 0x00, 0x28, 0x4A, 0xD1, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x04, 0x49
	.byte 0x80, 0x22, 0x12, 0x01, 0x82, 0xF1, 0xFE, 0xFB, 0x23, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03
	.byte 0x00, 0x80, 0x00, 0x06, 0xAF, 0x21, 0xC9, 0x00, 0x60, 0x18, 0x00, 0x78, 0x00, 0x28, 0x02, 0xD1
	.byte 0x20, 0x1C, 0x02, 0xF0, 0x95, 0xF8, 0x20, 0x1C, 0x03, 0xF0, 0x2E, 0xFA, 0x20, 0x1C, 0x03, 0xF0
	.byte 0x95, 0xFC, 0x20, 0x1C, 0x02, 0xF0, 0xCC, 0xF8, 0x20, 0x1C, 0x02, 0xF0, 0x9D, 0xF8, 0x20, 0x1C
	.byte 0x03, 0xF0, 0x7E, 0xFD, 0x20, 0x1C, 0x03, 0xF0, 0x59, 0xFB, 0x04, 0x48, 0x21, 0x18, 0x00, 0x20
	.byte 0x08, 0x70, 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83, 0x19, 0xE0, 0x00, 0x00, 0x84, 0x05, 0x00, 0x00
_08057EF4:
	adds r0, r4, #0x0
	bl sub_8057FCC
	adds r0, r4, #0x0
	bl sub_8058148
	adds r0, r4, #0x0
	bl sub_805B154
	adds r0, r4, #0x0
	bl sub_805B8BC
	adds r0, r4, #0x0
	bl sub_8059F24
	ldr r1, _08057F58 @ =0x00000584
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08057F22
	adds r0, r4, #0x0
	bl sub_805C14C
_08057F22:
	ldr r0, _08057F5C @ =0x00000579
	adds r5, r4, r0
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _08057F46
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	strb r4, [r5, #0x00]
_08057F46:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08057F58: .4byte 0x00000584
_08057F5C: .4byte 0x00000579
	thumb_func_start sub_8057F60
sub_8057F60:
	push {lr}
	mov r12, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #0x00
	beq _08057F7A
	cmp r1, #0x01
	beq _08057F98
	b _08057FC4
_08057F7A:
	ldr r0, _08057F94 @ =0x03000DD0
	ldrh r1, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x08
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bne _08057FC4
	mov r1, r12
	adds r1, #0x72
	b _08057FAE
	.byte 0x00, 0x00
_08057F94: .4byte 0x03000DD0
_08057F98:
	ldr r0, _08057FC8 @ =0x03000DD0
	ldrh r1, [r0, #0x0C]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bne _08057FC4
	mov r1, r12
	adds r1, #0x74
_08057FAE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x06
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
_08057FC4:
	pop {r0}
	bx r0
_08057FC8: .4byte 0x03000DD0
	thumb_func_start sub_8057FCC
sub_8057FCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	movs r2, #0x02
_08057FDA:
	ldr r3, _08058084 @ =room_solidity_index_table
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	movs r1, #0x02
	subs r1, r1, r5
	lsls r1, r1, #0x01
	ldrh r0, [r4, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	ldr r0, _08058088 @ =0x0000FFFF
	mov r8, r2
	cmp r1, r0
	beq _080580CC
	adds r7, r4, #0x0
	adds r7, #0x66
	adds r6, r4, #0x0
	adds r6, #0x6C
	movs r0, #0x6A
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x70
	adds r1, r1, r4
	mov r10, r1
	cmp r5, #0x02
	beq _0805809E
	adds r0, r4, #0x0
	adds r0, #0x8A
	adds r0, r0, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0805808C
	lsls r3, r5, #0x01
	adds r2, r4, #0x0
	adds r2, #0x72
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x5E
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x20
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r1, r0
	asrs r1, r1, #0x02
	ldrh r2, [r2, #0x00]
	adds r1, r1, r2
	adds r2, r7, r3
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x64
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x20
	adds r0, r0, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r1, r0
	asrs r1, r1, #0x02
	ldrh r2, [r2, #0x00]
	adds r1, r1, r2
	adds r2, r6, r3
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r1, r1, r0
	strh r1, [r2, #0x00]
	b _0805809E
_08058084: .4byte room_solidity_index_table
_08058088: .4byte 0x0000FFFF
_0805808C:
	lsls r1, r5, #0x01
	adds r2, r7, r1
	mov r3, r9
	ldrh r0, [r3, #0x00]
	strh r0, [r2, #0x00]
	adds r1, r6, r1
	mov r5, r10
	ldrh r0, [r5, #0x00]
	strh r0, [r1, #0x00]
_0805809E:
	mov r0, r8
	asrs r3, r0, #0x0F
	adds r2, r7, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bne _080580B6
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	beq _08058112
_080580B6:
	mov r0, r8
	lsrs r1, r0, #0x10
	movs r5, #0x00
	ldsh r2, [r2, r5]
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r3, [r0, r5]
	adds r0, r4, #0x0
	bl sub_8058944
	b _08058112
_080580CC:
	lsls r3, r5, #0x01
	adds r1, r4, #0x0
	adds r1, #0x4E
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r1, [r2, #0x00]
	strh r1, [r0, #0x00]
	adds r7, r4, #0x0
	adds r7, #0x66
	adds r6, r4, #0x0
	adds r6, #0x6C
	movs r0, #0x6A
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x70
	adds r1, r1, r4
	mov r10, r1
_08058112:
	ldr r0, _08058144 @ =0xFFFF0000
	add r0, r8
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	blt _0805811E
	b _08057FDA
_0805811E:
	movs r0, #0x00
	mov r2, r9
	strh r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x68
	strh r0, [r1, #0x00]
	strh r0, [r7, #0x00]
	mov r3, r10
	strh r0, [r3, #0x00]
	adds r1, #0x06
	strh r0, [r1, #0x00]
	strh r0, [r6, #0x00]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058144: .4byte 0xFFFF0000
	thumb_func_start sub_8058148
sub_8058148:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r0, #0x00
	mov r9, r0
_0805815A:
	ldr r2, _08058214 @ =room_solidity_index_table
	movs r1, #0x02
	mov r0, r9
	subs r1, r1, r0
	lsls r1, r1, #0x01
	ldrh r0, [r4, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08058218 @ =0x0000FFFF
	cmp r1, r0
	beq _08058224
	adds r0, r4, #0x0
	adds r0, #0x8A
	mov r1, r9
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	mov r2, r9
	lsls r2, r2, #0x01
	mov r8, r2
	movs r1, #0x66
	adds r1, r1, r4
	mov r10, r1
	adds r2, r4, #0x0
	adds r2, #0x6C
	str r2, [sp, #0x000]
	cmp r0, #0x00
	beq _08058206
	adds r0, r4, #0x0
	adds r0, #0x8D
	mov r1, r9
	adds r7, r0, r1
	adds r0, #0x03
	add r0, r9
	ldrb r1, [r0, #0x00]
	ldrb r2, [r7, #0x00]
	adds r1, r1, r2
	strb r1, [r7, #0x00]
	mov r6, r10
	add r6, r8
	ldr r3, _0805821C @ =0x083A75DC
	ldrb r2, [r5, #0x00]
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x01
	adds r0, r0, r3
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r0, r1
	strh r0, [r6, #0x00]
	ldr r3, [sp, #0x000]
	add r3, r8
	ldr r2, _08058220 @ =0x083A75EC
	ldrb r1, [r5, #0x00]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldrb r0, [r7, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	strh r1, [r3, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bne _080581F2
	lsls r0, r1, #0x10
	cmp r0, #0x00
	beq _08058206
_080581F2:
	movs r0, #0x00
	ldsh r2, [r6, r0]
	movs r1, #0x00
	ldsh r3, [r3, r1]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_8058944
	movs r2, #0x00
	strb r2, [r7, #0x00]
_08058206:
	mov r0, r10
	add r0, r8
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [sp, #0x000]
	add r0, r8
	b _08058256
_08058214: .4byte room_solidity_index_table
_08058218: .4byte 0x0000FFFF
_0805821C: .4byte 0x083A75DC
_08058220: .4byte 0x083A75EC
_08058224:
	mov r0, r9
	lsls r3, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x4E
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0x52
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	adds r2, r2, r3
	adds r0, r4, #0x0
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r3
	ldrh r1, [r2, #0x00]
_08058256:
	strh r1, [r0, #0x00]
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bhi _08058268
	b _0805815A
_08058268:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8058278
sub_8058278:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x00
_0805827E:
	lsls r2, r5, #0x01
	mov r3, r12
	adds r3, #0x4E
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x72
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x52
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r6, #0x00
	ldsh r0, [r0, r6]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	mov r3, r12
	adds r3, #0x54
	adds r3, r3, r2
	mov r1, r12
	adds r1, #0x78
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x58
	movs r6, #0x00
	ldsh r4, [r0, r6]
	adds r0, #0x2C
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r4
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x01
	bls _0805827E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80582DC
sub_80582DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_080582EE:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _0805833C @ =room_solidity_index_table
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08058340 @ =0x0000FFFF
	cmp r0, r2
	bne _0805830C
	b _08058454
_0805830C:
	lsls r0, r0, #0x02
	ldr r5, _08058344 @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08058348
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _0805835E
	.byte 0x00, 0x00
_0805833C: .4byte room_solidity_index_table
_08058340: .4byte 0x0000FFFF
_08058344: .4byte 0x08754D74
_08058348:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_0805835E:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080584F0 @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _080584F0 @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r0, #0x02
	mov r8, r0
	movs r1, #0x00
	mov r9, r1
	movs r0, #0x00
	cmp r0, r3
	bcs _08058454
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r2, r5, #0x10
	str r2, [sp, #0x010]
	str r3, [sp, #0x004]
_080583D2:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x018]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08058448
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	str r0, [sp, #0x014]
	movs r1, #0x98
	add r1, r12
	mov r10, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_080583F0:
	mov r1, r8
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r6, r1
	ldrb r4, [r1, #0x00]
	movs r5, #0x00
	adds r7, r2, #0x4
_08058402:
	movs r2, #0xC0
	ands r2, r4
	lsls r2, r2, #0x02
	mov r1, r8
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	orrs r3, r2
	ldr r0, [sp, #0x014]
	add r0, r9
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	lsls r0, r4, #0x1A
	lsrs r4, r0, #0x18
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x03
	bls _08058402
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	ldr r5, [sp, #0x008]
	cmp r2, r5
	bcc _080583F0
_08058448:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _080583D2
_08058454:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08058464
	b _080582EE
_08058464:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _080584F4 @ =room_solidity_index_table
	ldr r3, _080584F0 @ =0x0000FFFF
_0805846C:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _080584D2
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_080584D2:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _0805846C
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080584F0: .4byte 0x0000FFFF
_080584F4: .4byte room_solidity_index_table
	thumb_func_start sub_80584F8
sub_80584F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r6, r0, #0x0
	ldr r0, _08058674 @ =0x00000579
	adds r1, r6, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x004]
_08058512:
	ldr r2, _08058678 @ =room_solidity_index_table
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r6, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _0805867C @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x030]
	cmp r1, r0
	bne _08058532
	b _0805879C
_08058532:
	adds r0, r6, #0x0
	adds r0, #0x8A
	ldr r4, [sp, #0x004]
	adds r0, r0, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08058546
	b _08058680
_08058546:
	lsls r1, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	movs r2, #0x00
	str r1, [sp, #0x038]
	str r1, [sp, #0x024]
_08058588:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r1, [sp, #0x00C]
	cmp r3, r1
	bge _08058662
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	asrs r1, r7, #0x10
	ldr r4, [sp, #0x018]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	str r1, [sp, #0x020]
	str r1, [sp, #0x028]
	movs r5, #0x42
	adds r5, r5, r6
	mov r10, r5
	movs r0, #0x48
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [sp, #0x004]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x02C]
	adds r2, r6, #0x0
	adds r2, #0x98
	str r2, [sp, #0x034]
_080585C2:
	lsls r1, r3, #0x10
	asrs r0, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	ldr r5, [sp, #0x020]
	lsrs r4, r5, #0x10
	lsrs r5, r0, #0x10
	mov r8, r1
	cmp r0, #0x00
	bge _080585E8
	ldr r0, [sp, #0x038]
	add r0, r10
	ldrh r1, [r0, #0x00]
_080585DE:
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	blt _080585DE
_080585E8:
	lsls r0, r4, #0x10
	lsls r1, r5, #0x10
	cmp r0, #0x00
	bge _08058600
	ldr r0, [sp, #0x038]
	add r0, r9
	ldrh r2, [r0, #0x00]
_080585F6:
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r0, #0x00
	blt _080585F6
_08058600:
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x024]
	add r1, r10
	ldrh r1, [r1, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x024]
	add r1, r9
	ldrh r1, [r1, #0x00]
	bl __modsi3
	mov r1, r8
	asrs r4, r1, #0x10
	ldr r3, [sp, #0x01C]
	adds r2, r3, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x008]
	muls r0, r1
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldr r3, [sp, #0x02C]
	adds r0, r3, r0
	adds r0, r0, r1
	ldr r5, [sp, #0x034]
	ldr r1, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x004]
	ldr r5, [sp, #0x028]
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _080585C2
_08058662:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _08058588
	b _0805879C
_08058674: .4byte 0x00000579
_08058678: .4byte room_solidity_index_table
_0805867C: .4byte 0x0000FFFF
_08058680:
	ldr r4, [sp, #0x004]
	lsls r2, r4, #0x01
	adds r0, r6, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	subs r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	movs r5, #0x12
	str r5, [sp, #0x00C]
	movs r0, #0x0D
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bne _080586D4
	movs r4, #0x11
	str r4, [sp, #0x00C]
	ldr r5, [sp, #0x014]
	lsls r0, r5, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080586D4:
	adds r1, #0x0F
	adds r0, r6, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080586EC
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_080586EC:
	adds r1, r3, #0x0
	cmp r1, #0x00
	bne _08058704
	movs r5, #0x0C
	str r5, [sp, #0x010]
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x09
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
_08058704:
	adds r1, #0x0A
	adds r0, r6, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _0805871C
	ldr r0, [sp, #0x00C]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
_0805871C:
	movs r2, #0x00
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bge _0805879C
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
_0805872C:
	movs r3, #0x00
	lsls r7, r2, #0x10
	ldr r2, [sp, #0x00C]
	cmp r3, r2
	bge _0805878C
	ldr r4, [sp, #0x014]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x03C]
	asrs r0, r7, #0x10
	add r0, r10
	lsls r5, r0, #0x10
	mov r9, r5
	ldr r2, [sp, #0x008]
	adds r1, r0, #0x0
	muls r1, r2
	mov r8, r1
_0805874E:
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x03C]
	adds r2, r4, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r5, [sp, #0x004]
	lsls r0, r5, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r3
	adds r1, r6, #0x0
	adds r1, #0x98
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r5, r9
	asrs r3, r5, #0x10
	bl sub_8058898
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0x00C]
	cmp r4, r0
	blt _0805874E
_0805878C:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x010]
	cmp r0, r3
	blt _0805872C
_0805879C:
	ldr r4, [sp, #0x030]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _080587AA
	b _08058512
_080587AA:
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80587BC
sub_80587BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _0805887C @ =0x086FFC20
	mov r9, r6
	ldr r3, _08058880 @ =0x03000DD0
	ldrb r7, [r3, #0x04]
	ldr r2, _08058884 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r6
	ldr r1, [r1, #0x00]
	adds r5, r1, r6
	movs r4, #0x00
	mov r10, r3
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r3, _08058888 @ =0x000007FF
	mov r12, r2
_080587EC:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _080587EC
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r5, r6, r0
	movs r4, #0x00
	mov r2, r12
	movs r7, #0x80
	lsls r7, r7, #0x05
	ldr r6, _08058888 @ =0x000007FF
_0805881A:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r7
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	bls _0805881A
	mov r1, r10
	ldrb r0, [r1, #0x0A]
	cmp r0, #0x00
	beq _0805886E
	ldr r2, _0805888C @ =0x089744D0
	ldr r1, _08058890 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x04]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r5, r0, r2
	movs r4, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x06
	ldr r3, _08058894 @ =0x000003FF
_08058856:
	ldr r1, [r2, #0x00]
	lsls r0, r4, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r3
	bls _08058856
_0805886E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805887C: .4byte 0x086FFC20
_08058880: .4byte 0x03000DD0
_08058884: .4byte 0x083AAC4C
_08058888: .4byte 0x000007FF
_0805888C: .4byte 0x089744D0
_08058890: .4byte 0x083B7108
_08058894: .4byte 0x000003FF
	thumb_func_start sub_8058898
sub_8058898:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _080588E0
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805890A
_080588E0:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805890A:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8058944
sub_8058944:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x050
	mov r10, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	adds r0, #0x8A
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	cmp r0, #0x00
	beq _0805897A
	b _08058B84
_0805897A:
	ldr r0, [sp, #0x008]
	lsls r2, r0, #0x01
	mov r5, r10
	adds r5, #0x4E
	adds r7, r5, r2
	ldrh r3, [r7, #0x00]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r4, r10
	adds r4, #0x54
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	mov r6, r9
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	strh r0, [r7, #0x00]
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r6, [r1, #0x00]
	adds r0, r0, r6
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	adds r6, r2, #0x0
	str r5, [sp, #0x03C]
	str r4, [sp, #0x040]
	cmp r0, #0x00
	bge _080589CC
	mov r2, r12
	strh r2, [r7, #0x00]
	b _080589E0
_080589CC:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	mov r1, r10
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080589E0
	strh r1, [r7, #0x00]
_080589E0:
	ldr r5, [sp, #0x040]
	adds r2, r5, r6
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080589F2
	movs r0, #0x00
	strh r0, [r2, #0x00]
	b _08058A06
_080589F2:
	movs r3, #0x00
	ldsh r0, [r2, r3]
	mov r1, r10
	adds r1, #0x3C
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08058A06
	strh r1, [r2, #0x00]
_08058A06:
	ldr r5, [sp, #0x03C]
	adds r0, r5, r6
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r3, r1, #0x10
	str r3, [sp, #0x01C]
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x00C]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08058A90
	adds r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	mov r3, r8
	lsls r7, r3, #0x10
	ldr r5, [sp, #0x010]
	lsls r5, r5, #0x10
	mov r9, r5
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r0, r1
	bgt _08058AE0
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r8, r0
	ldr r0, _08058A8C @ =0xFFFF0000
	adds r5, r7, r0
_08058A5E:
	asrs r4, r2, #0x10
	mov r1, r8
	ldrh r0, [r1, #0x00]
	subs r0, #0x10
	cmp r4, r0
	bge _08058A7C
	adds r2, r4, #0x0
	adds r2, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805905C
_08058A7C:
	adds r0, r4, #0x1
	lsls r2, r0, #0x10
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	cmp r2, r0
	ble _08058A5E
	b _08058AE0
	.byte 0x00, 0x00
_08058A8C: .4byte 0xFFFF0000
_08058A90:
	mov r5, r8
	lsls r7, r5, #0x10
	ldr r2, [sp, #0x010]
	lsls r2, r2, #0x10
	mov r9, r2
	mov r3, r10
	adds r3, #0x5A
	str r3, [sp, #0x044]
	mov r5, r10
	adds r5, #0x60
	str r5, [sp, #0x048]
	cmp r1, r0
	bge _08058AE0
	subs r0, #0x01
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r1
	blt _08058AE0
	ldr r0, _08058B2C @ =0xFFFF0000
	adds r0, r0, r7
	mov r8, r0
	str r1, [sp, #0x04C]
_08058ABC:
	asrs r4, r2, #0x10
	cmp r4, #0x00
	ble _08058AD4
	subs r2, r4, #0x1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r8
	asrs r3, r5, #0x10
	bl sub_805905C
_08058AD4:
	subs r0, r4, #0x1
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	ldr r1, [sp, #0x04C]
	cmp r0, r1
	bge _08058ABC
_08058AE0:
	asrs r1, r7, #0x10
	mov r2, r9
	asrs r0, r2, #0x10
	cmp r1, r0
	ble _08058B30
	adds r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	bgt _08058B64
	mov r0, r10
	adds r0, #0x48
	adds r0, r0, r6
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B2C @ =0xFFFF0000
	adds r5, r0, r1
_08058B04:
	asrs r4, r3, #0x10
	mov r2, r8
	ldrh r0, [r2, #0x00]
	subs r0, #0x0B
	cmp r4, r0
	bge _08058B22
	adds r3, r4, #0x0
	adds r3, #0x0B
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B22:
	adds r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	ble _08058B04
	b _08058B64
_08058B2C: .4byte 0xFFFF0000
_08058B30:
	cmp r1, r0
	bge _08058B64
	subs r0, #0x01
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, r1
	blt _08058B64
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058B80 @ =0xFFFF0000
	adds r5, r0, r1
_08058B46:
	asrs r4, r3, #0x10
	cmp r4, #0x00
	ble _08058B5C
	subs r3, r4, #0x1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8058ED0
_08058B5C:
	subs r0, r4, #0x1
	lsls r3, r0, #0x10
	cmp r3, r7
	bge _08058B46
_08058B64:
	ldr r2, [sp, #0x044]
	adds r1, r2, r6
	ldr r3, [sp, #0x03C]
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r5, [sp, #0x048]
	adds r1, r5, r6
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	b _08058EBC
	.byte 0x00, 0x00
_08058B80: .4byte 0xFFFF0000
_08058B84:
	ldr r3, [sp, #0x008]
	lsls r6, r3, #0x01
	mov r3, r10
	adds r3, #0x5A
	adds r3, r3, r6
	ldrh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x014]
	mov r2, r10
	adds r2, #0x60
	adds r2, r2, r6
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	mov r5, r9
	lsls r5, r5, #0x10
	mov r12, r5
	asrs r5, r5, #0x10
	adds r1, r5, r1
	strh r1, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	mov r0, r8
	lsls r0, r0, #0x10
	mov r9, r0
	asrs r4, r0, #0x10
	adds r1, r4, r1
	strh r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x024]
	movs r1, #0x4E
	add r1, r10
	mov r8, r1
	adds r7, r1, r6
	ldrh r2, [r7, #0x00]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x00C]
	mov r3, r10
	adds r3, #0x54
	adds r1, r3, r6
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r5, r5, r2
	strh r5, [r7, #0x00]
	ldrh r0, [r1, #0x00]
	adds r4, r4, r0
	strh r4, [r1, #0x00]
	ldrh r2, [r7, #0x00]
	movs r5, #0x00
	ldsh r0, [r7, r5]
	mov r1, r8
	str r1, [sp, #0x03C]
	str r3, [sp, #0x040]
	mov r3, r12
	str r3, [sp, #0x034]
	mov r5, r9
	str r5, [sp, #0x038]
	cmp r0, #0x00
	bge _08058C30
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	b _08058C42
_08058C30:
	movs r0, #0x00
	ldsh r1, [r7, r0]
	mov r0, r10
	adds r0, #0x36
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C44
	subs r0, r2, r0
_08058C42:
	strh r0, [r7, #0x00]
_08058C44:
	ldr r1, [sp, #0x040]
	adds r2, r1, r6
	ldrh r3, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	bge _08058C5E
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	adds r0, r3, r0
	b _08058C70
_08058C5E:
	movs r0, #0x00
	ldsh r1, [r2, r0]
	mov r0, r10
	adds r0, #0x3C
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08058C72
	subs r0, r3, r0
_08058C70:
	strh r0, [r2, #0x00]
_08058C72:
	ldr r1, [sp, #0x03C]
	adds r0, r1, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	ldr r2, [sp, #0x040]
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r3, [sp, #0x034]
	cmp r3, #0x00
	ble _08058D1C
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058D1C
	movs r4, #0x00
	ldr r3, [sp, #0x00C]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x028]
	mov r0, r10
	adds r0, #0x42
	adds r0, r0, r6
	mov r9, r0
	b _08058CFE
_08058CBA:
	adds r4, r7, #0x0
	adds r4, #0x10
	ldr r1, [sp, #0x028]
	adds r0, r1, r4
	mov r2, r9
	ldrh r1, [r2, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	adds r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058D18 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	adds r0, r7, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058CFE:
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	ldr r2, [sp, #0x034]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058D0C
	adds r0, #0x0F
_08058D0C:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r7, r0
	blt _08058CBA
	b _08058DA2
	.byte 0x00, 0x00
_08058D18: .4byte 0xFFFF0000
_08058D1C:
	ldr r3, [sp, #0x034]
	asrs r2, r3, #0x10
	cmp r2, #0x00
	bge _08058DA2
	ldr r5, [sp, #0x020]
	lsls r1, r5, #0x10
	ldr r3, [sp, #0x014]
	lsls r0, r3, #0x10
	adds r5, r0, #0x0
	cmp r1, r5
	beq _08058DA2
	negs r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r4, #0x00
	ldr r1, [sp, #0x00C]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x02C]
	mov r0, r10
	adds r0, #0x42
	adds r7, r0, r6
	b _08058D8A
_08058D4C:
	adds r4, #0x01
	ldr r2, [sp, #0x02C]
	subs r0, r2, r4
	ldrh r1, [r7, #0x00]
	bl __modsi3
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	lsls r3, r0, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r3, r3, r1
	asrs r0, r5, #0x10
	subs r0, r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r3, r3, #0x10
	bl sub_80592C8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058D8A:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058D9A
	adds r0, #0x0F
_08058D9A:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058D4C
_08058DA2:
	ldr r3, [sp, #0x038]
	cmp r3, #0x00
	ble _08058E2C
	ldr r5, [sp, #0x024]
	lsls r1, r5, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058E2C
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058DCC @ =0xFFFF0000
	adds r5, r0, r1
	b _08058E10
	.byte 0x00, 0x00
_08058DCC: .4byte 0xFFFF0000
_08058DD0:
	adds r0, r4, #0x0
	adds r0, #0x0B
	add r0, r8
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r2, [sp, #0x020]
	lsls r0, r2, #0x10
	ldr r1, _08058E28 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	adds r0, r0, r4
	adds r0, #0x0B
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	asrs r2, r5, #0x10
	bl sub_8059190
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08058E10:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	ldr r2, [sp, #0x038]
	asrs r0, r2, #0x10
	cmp r0, #0x00
	bge _08058E1E
	adds r0, #0x0F
_08058E1E:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r4, r0
	blt _08058DD0
	b _08058EBC
_08058E28: .4byte 0xFFFF0000
_08058E2C:
	ldr r5, [sp, #0x038]
	asrs r3, r5, #0x10
	cmp r3, #0x00
	bge _08058EBC
	ldr r0, [sp, #0x024]
	lsls r1, r0, #0x10
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	adds r7, r0, #0x0
	cmp r1, r7
	beq _08058EBC
	negs r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r4, #0x00
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x030]
	ldr r5, [sp, #0x01C]
	lsls r0, r5, #0x10
	ldr r1, _08058E60 @ =0xFFFF0000
	adds r1, r1, r0
	mov r9, r1
	b _08058EA4
_08058E60: .4byte 0xFFFF0000
_08058E64:
	adds r4, r5, #0x1
	ldr r2, [sp, #0x030]
	subs r0, r2, r4
	mov r1, r10
	adds r1, #0x48
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldr r1, [sp, #0x020]
	lsls r0, r1, #0x10
	ldr r2, _08058ECC @ =0xFFFF0000
	adds r0, r0, r2
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	asrs r0, r7, #0x10
	subs r0, r0, r5
	subs r0, #0x01
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x004]
	mov r0, r10
	ldr r1, [sp, #0x008]
	mov r5, r9
	asrs r2, r5, #0x10
	bl sub_8059190
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
_08058EA4:
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08058EB4
	adds r0, #0x0F
_08058EB4:
	asrs r0, r0, #0x04
	adds r0, #0x01
	cmp r5, r0
	blt _08058E64
_08058EBC:
	add sp, #0x050
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08058ECC: .4byte 0xFFFF0000
	thumb_func_start sub_8058ED0
sub_8058ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r12, r1
	lsls r2, r2, #0x10
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	ldr r0, _08058FD0 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsrs r1, r2, #0x10
	mov r9, r1
	asrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x0F
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ands r0, r3
	mov r2, r12
	lsls r5, r2, #0x0B
	lsls r1, r0, #0x06
	adds r1, r5, r1
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, #0x01
	lsls r0, r0, #0x05
	adds r0, r5, r0
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x004]
	movs r6, #0x80
	lsls r6, r6, #0x03
	adds r2, r6, #0x0
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r2, _08058FD4 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r12
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08058FD8 @ =0x0000FFFF
	cmp r1, r0
	beq _0805904A
	mov r2, r12
	lsls r1, r2, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r6, r8
	cmp r6, #0x00
	bge _08058F64
	movs r1, #0x00
	mov r9, r1
_08058F64:
	adds r1, r3, #0x0
	muls r1, r0
	adds r1, r5, r1
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r6, #0x00
	mov r12, r6
	adds r6, r4, #0x0
	adds r6, #0x94
	adds r5, r4, #0x0
	adds r5, #0x98
_08058F84:
	mov r0, r12
	add r0, r9
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0x00
	beq _08058FDC
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r0, [sp, #0x008]
	adds r3, r0, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	add r4, r10
	b _08059016
	.byte 0x00, 0x00
_08058FD0: .4byte 0x00000579
_08058FD4: .4byte room_solidity_index_table
_08058FD8: .4byte 0x0000FFFF
_08058FDC:
	movs r0, #0x0F
	ands r4, r0
	lsls r4, r4, #0x01
	ldr r1, [sp, #0x000]
	adds r3, r1, r4
	ldr r1, [r6, #0x00]
	lsls r3, r3, #0x01
	adds r1, r3, r1
	mov r2, r8
	add r2, r12
	ldr r0, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r3, r3, r0
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x02]
	strh r0, [r3, #0x02]
	ldr r0, [sp, #0x004]
	adds r4, r0, r4
_08059016:
	ldr r1, [r6, #0x00]
	lsls r4, r4, #0x01
	adds r1, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r2, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	adds r4, r4, r0
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	ldrh r0, [r2, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r7
	ldrh r0, [r0, #0x06]
	strh r0, [r4, #0x02]
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	cmp r0, #0x11
	bls _08058F84
_0805904A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805905C
sub_805905C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r3, r3, #0x10
	adds r0, #0xA8
	ldr r6, [r0, #0x00]
	ldr r0, _08059108 @ =0x00000579
	adds r1, r4, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r12, r2
	movs r0, #0x0F
	ands r0, r2
	lsrs r1, r3, #0x10
	mov r10, r1
	asrs r3, r3, #0x10
	lsls r7, r5, #0x0B
	lsls r0, r0, #0x01
	adds r0, r7, r0
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	ldr r2, _0805910C @ =room_solidity_index_table
	movs r0, #0x02
	subs r0, r0, r5
	lsls r0, r0, #0x01
	ldrh r1, [r4, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059110 @ =0x0000FFFF
	cmp r1, r0
	beq _0805917E
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	mov r9, r0
	cmp r3, #0x00
	bge _080590D0
	movs r0, #0x00
	mov r10, r0
_080590D0:
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, r9
	muls r2, r0
	adds r0, r2, #0x0
	adds r0, r7, r0
	add r0, r12
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0x00
	mov r8, r0
	adds r5, r4, #0x0
	adds r5, #0x94
	adds r4, #0x98
_080590EE:
	mov r0, r8
	add r0, r10
	movs r1, #0x0F
	ands r0, r1
	lsls r1, r0, #0x06
	movs r0, #0x10
	mov r2, r12
	ands r0, r2
	cmp r0, #0x00
	beq _08059114
	ldr r0, [sp, #0x004]
	b _08059116
	.byte 0x00, 0x00
_08059108: .4byte 0x00000579
_0805910C: .4byte room_solidity_index_table
_08059110: .4byte 0x0000FFFF
_08059114:
	ldr r0, [sp, #0x000]
_08059116:
	adds r2, r0, r1
	ldr r1, [r5, #0x00]
	lsls r2, r2, #0x01
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	lsls r3, r7, #0x01
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x02]
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x00]
	adds r1, r2, r1
	adds r1, #0x40
	ldr r0, [r4, #0x00]
	adds r0, r3, r0
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	adds r2, r2, r0
	adds r2, #0x42
	ldr r0, [r4, #0x00]
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r6
	ldrh r0, [r0, #0x06]
	strh r0, [r2, #0x00]
	mov r1, r9
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x0C
	bls _080590EE
_0805917E:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8059190
sub_8059190:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [sp, #0x034]
	ldr r4, [sp, #0x038]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r12, r4
	ldr r0, _08059204 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059208 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r9
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _0805920C @ =0x0000FFFF
	cmp r1, r0
	beq _080592B6
	mov r2, r9
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r10, r1
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	str r0, [sp, #0x010]
	cmp r1, #0x00
	bge _08059210
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r4, [sp, #0x010]
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	adds r0, r0, r3
	b _08059220
_08059204: .4byte 0x00000579
_08059208: .4byte room_solidity_index_table
_0805920C: .4byte 0x0000FFFF
_08059210:
	adds r0, r5, #0x0
	adds r0, #0x48
	ldr r7, [sp, #0x010]
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059224
	subs r0, r3, r0
_08059220:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08059224:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	bge _08059240
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r2, [sp, #0x010]
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r8, r1
	b _08059256
_08059240:
	adds r1, r5, #0x0
	adds r1, #0x42
	ldr r4, [sp, #0x010]
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r8, r1
	cmp r2, r0
	blt _08059256
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059256:
	movs r4, #0x00
	mov r7, r12
	lsls r7, r7, #0x10
	str r7, [sp, #0x00C]
	lsls r0, r3, #0x10
	mov r2, r9
	lsls r1, r2, #0x0B
	adds r3, r5, #0x0
	adds r3, #0x98
	str r3, [sp, #0x008]
	asrs r0, r0, #0x10
	mov r7, r10
	muls r7, r0
	adds r0, r7, #0x0
	adds r1, r1, r0
	mov r10, r1
_08059276:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x010]
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r1, [sp, #0x004]
	adds r2, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	ldr r3, [sp, #0x008]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r9
	ldr r7, [sp, #0x00C]
	asrs r3, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x11
	bls _08059276
_080592B6:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80592C8
sub_80592C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r5, r0, #0x0
	ldr r0, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r10, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x004]
	ldr r0, _08059340 @ =0x00000579
	adds r1, r5, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, _08059344 @ =room_solidity_index_table
	movs r0, #0x02
	mov r1, r10
	subs r0, r0, r1
	lsls r0, r0, #0x01
	ldrh r1, [r5, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	ldr r0, _08059348 @ =0x0000FFFF
	cmp r1, r0
	beq _080593EA
	mov r2, r10
	lsls r0, r2, #0x01
	adds r1, r5, #0x0
	adds r1, #0x2A
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	str r1, [sp, #0x008]
	lsls r1, r6, #0x10
	asrs r2, r1, #0x10
	mov r8, r0
	cmp r2, #0x00
	bge _0805934C
	adds r1, r5, #0x0
	adds r1, #0x48
	adds r0, r1, r0
	ldrh r0, [r0, #0x00]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r9, r1
	b _08059362
	.byte 0x00, 0x00
_08059340: .4byte 0x00000579
_08059344: .4byte room_solidity_index_table
_08059348: .4byte 0x0000FFFF
_0805934C:
	adds r1, r5, #0x0
	adds r1, #0x48
	mov r4, r8
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	mov r9, r1
	cmp r2, r0
	blt _08059362
	subs r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08059362:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x00
	bge _08059376
	adds r0, r5, #0x0
	adds r0, #0x42
	add r0, r8
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	b _08059384
_08059376:
	adds r0, r5, #0x0
	adds r0, #0x42
	add r0, r8
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	blt _08059388
	subs r0, r7, r0
_08059384:
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08059388:
	movs r4, #0x00
	lsls r3, r3, #0x10
	str r3, [sp, #0x014]
	mov r0, r10
	lsls r0, r0, #0x0B
	str r0, [sp, #0x00C]
	adds r1, r5, #0x0
	adds r1, #0x98
	str r1, [sp, #0x010]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x018]
_080593A0:
	adds r0, r4, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	add r1, r8
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r2, [sp, #0x004]
	adds r3, r4, r2
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #0x008]
	muls r0, r7
	ldr r1, [sp, #0x00C]
	adds r0, r1, r0
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldr r7, [sp, #0x010]
	ldr r1, [r7, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r10
	ldr r7, [sp, #0x014]
	asrs r2, r7, #0x10
	bl sub_8058898
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0C
	bls _080593A0
_080593EA:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x00, 0xB5, 0x09, 0x06, 0x08, 0x0E, 0x12, 0x04, 0x12, 0x0C, 0x10, 0x28, 0x00, 0xD9
	.byte 0x8B, 0xE0, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0x1C, 0x94
	.byte 0x05, 0x08, 0x60, 0x94, 0x05, 0x08, 0x6C, 0x94, 0x05, 0x08, 0x78, 0x94, 0x05, 0x08, 0x84, 0x94
	.byte 0x05, 0x08, 0x90, 0x94, 0x05, 0x08, 0x9C, 0x94, 0x05, 0x08, 0xA8, 0x94, 0x05, 0x08, 0xB4, 0x94
	.byte 0x05, 0x08, 0xC0, 0x94, 0x05, 0x08, 0xCC, 0x94, 0x05, 0x08, 0xD8, 0x94, 0x05, 0x08, 0xE4, 0x94
	.byte 0x05, 0x08, 0xF0, 0x94, 0x05, 0x08, 0xFC, 0x94, 0x05, 0x08, 0x08, 0x95, 0x05, 0x08, 0x14, 0x95
	.byte 0x05, 0x08, 0x20, 0x95, 0x05, 0x08, 0x01, 0x48, 0x02, 0x70, 0x5E, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x70, 0x58, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x70, 0x52, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x71, 0x4C, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x71, 0x46, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x71, 0x40, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x71, 0x3A, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x72, 0x34, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x72, 0x2E, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x82, 0x72, 0x28, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0xC2, 0x72, 0x22, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x82, 0x81, 0x1C, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0xC2, 0x81, 0x16, 0xE0, 0x00, 0x00, 0xD0, 0x0D
	.byte 0x00, 0x03, 0x01, 0x48, 0x02, 0x82, 0x10, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48
	.byte 0x42, 0x82, 0x0A, 0xE0, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x02, 0x75, 0x04, 0xE0
	.byte 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x01, 0x48, 0x42, 0x70, 0x01, 0xBC, 0x00, 0x47, 0xD0, 0x0D
	.byte 0x00, 0x03
	thumb_func_start sub_805952C
sub_805952C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	strh r1, [r7, #0x22]
	strh r2, [r7, #0x24]
	movs r0, #0x02
_08059540:
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	str r0, [sp, #0x004]
	cmp r2, #0x02
	beq _08059634
	adds r0, r7, #0x0
	adds r0, #0x8A
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r10, r0
	cmp r0, #0x00
	bne _08059634
	lsls r6, r2, #0x01
	movs r0, #0x4E
	adds r0, r0, r7
	mov r8, r0
	adds r0, r0, r6
	mov r12, r0
	adds r1, r7, #0x0
	adds r1, #0x72
	adds r1, r1, r6
	movs r2, #0x5E
	adds r2, r2, r7
	mov r9, r2
	movs r3, #0x00
	ldsh r2, [r2, r3]
	adds r0, r7, #0x0
	adds r0, #0x7E
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x54
	adds r2, r4, r6
	str r2, [sp, #0x008]
	adds r1, r7, #0x0
	adds r1, #0x78
	adds r1, r1, r6
	adds r3, r7, #0x0
	adds r3, #0x64
	movs r5, #0x00
	ldsh r2, [r3, r5]
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r0, r0, r6
	movs r5, #0x00
	ldsh r0, [r0, r5]
	muls r0, r2
	asrs r0, r0, #0x02
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	mov r2, r12
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r5, r4, #0x0
	str r3, [sp, #0x000]
	cmp r0, #0x00
	bge _080595D2
	mov r0, r10
	strh r0, [r2, #0x00]
	b _080595EA
_080595D2:
	mov r1, r12
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r1, r7, #0x0
	adds r1, #0x36
	adds r1, r1, r6
	ldrh r1, [r1, #0x00]
	subs r1, #0xF0
	cmp r0, r1
	ble _080595EA
	mov r3, r12
	strh r1, [r3, #0x00]
_080595EA:
	ldr r0, [sp, #0x004]
	asrs r3, r0, #0x0F
	adds r2, r5, r3
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _080595FE
	movs r3, #0x00
	strh r3, [r2, #0x00]
	b _08059612
_080595FE:
	movs r1, #0x00
	ldsh r0, [r2, r1]
	adds r1, r7, #0x0
	adds r1, #0x3C
	adds r1, r1, r3
	ldrh r1, [r1, #0x00]
	subs r1, #0xA0
	cmp r0, r1
	ble _08059612
	strh r1, [r2, #0x00]
_08059612:
	ldr r2, [sp, #0x004]
	asrs r1, r2, #0x0F
	adds r4, r7, #0x0
	adds r4, #0x5A
	adds r2, r4, r1
	mov r3, r8
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x60
	adds r2, r3, r1
	adds r1, r5, r1
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	adds r5, r3, #0x0
	b _08059670
_08059634:
	ldr r5, [sp, #0x004]
	asrs r2, r5, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r7, #0x22]
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r1, [r7, #0x24]
	strh r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x5A
	adds r1, r3, r2
	ldrh r0, [r7, #0x22]
	strh r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r2, r1, r2
	ldrh r0, [r7, #0x24]
	strh r0, [r2, #0x00]
	movs r0, #0x5E
	adds r0, r0, r7
	mov r9, r0
	adds r2, r7, #0x0
	adds r2, #0x64
	str r2, [sp, #0x000]
	adds r4, r3, #0x0
	adds r5, r1, #0x0
_08059670:
	ldr r3, [sp, #0x004]
	asrs r1, r3, #0x10
	lsls r2, r1, #0x01
	adds r0, r7, #0x0
	adds r0, #0x66
	adds r0, r0, r2
	movs r3, #0x00
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x6C
	adds r0, r0, r2
	strh r3, [r0, #0x00]
	subs r1, #0x01
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r1, #0x00
	blt _08059694
	b _08059540
_08059694:
	ldr r3, _080596F0 @ =0x02000014
	ldrh r2, [r4, #0x00]
	ldr r1, _080596F4 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	adds r0, r7, #0x0
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _080596F8 @ =0x0200001C
	mov r3, r9
	ldrh r0, [r3, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080596FC @ =0x02000016
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x000]
	ldrb r0, [r5, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_80584F8
	ldr r0, _08059700 @ =0x00000579
	adds r1, r7, r0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080596F0: .4byte 0x02000014
_080596F4: .4byte 0x000001FF
_080596F8: .4byte 0x0200001C
_080596FC: .4byte 0x02000016
_08059700: .4byte 0x00000579
	thumb_func_start sub_8059704
sub_8059704:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r3, #0x0
	ldr r6, [sp, #0x018]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl process_add
	ldr r0, _080597E0 @ =0x08CDC278
	str r0, [r7, #0x18]
	movs r4, #0x00
	ldr r0, _080597E4 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	strh r5, [r7, #0x1E]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	adds r0, r7, #0x0
	adds r0, #0x7C
	strh r6, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _080597E8 @ =0x081E27C4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x68]
	movs r0, #0xC0
	lsls r0, r0, #0x07
	ldr r2, _080597EC @ =0x081E27CC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x70]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, _080597F0 @ =0x081E27D4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x78]
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x68]
	ldr r2, _080597F4 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x70]
	ldr r2, _080597F8 @ =0x01001800
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x78]
	ldr r2, _080597FC @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	ldrh r1, [r7, #0x1E]
	ldr r0, _08059800 @ =0x00007FFF
	ands r0, r1
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r2, _08059804 @ =room_props_table
	ldr r0, _08059808 @ =0x03000DE8
	adds r1, r1, r2
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	adds r0, r7, #0x0
	adds r0, #0x52
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080597E0: .4byte 0x08CDC278
_080597E4: .4byte 0x0000FFFB
_080597E8: .4byte 0x081E27C4
_080597EC: .4byte 0x081E27CC
_080597F0: .4byte 0x081E27D4
_080597F4: .4byte 0x01000C00
_080597F8: .4byte 0x01001800
_080597FC: .4byte 0x01000080
_08059800: .4byte 0x00007FFF
_08059804: .4byte room_props_table
_08059808: .4byte 0x03000DE8
	thumb_func_start sub_805980C
sub_805980C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r6, _08059830 @ =0x086527F4
	adds r7, r6, #0x0
	ldr r0, _08059834 @ =0x03000DE8
	ldrb r5, [r0, #0x03]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _08059826
	b _0805991C
_08059826:
	lsls r0, r0, #0x02
	ldr r1, _08059838 @ =0x0805983C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08059830: .4byte 0x086527F4
_08059834: .4byte 0x03000DE8
_08059838: .4byte 0x0805983C
	.byte 0x50, 0x98, 0x05, 0x08, 0x88, 0x98, 0x05, 0x08, 0xC4, 0x98, 0x05, 0x08, 0x00, 0x99, 0x05, 0x08
	.byte 0x10, 0x99, 0x05, 0x08, 0x20, 0x1C, 0x00, 0xF0, 0x9B, 0xFA, 0x00, 0x23, 0x09, 0x4A, 0x13, 0x60
	.byte 0x09, 0x48, 0xA9, 0x00, 0x09, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x56, 0xD0, 0x80, 0x00, 0xC0, 0x19
	.byte 0x00, 0x68, 0x30, 0x18, 0x50, 0x60, 0x20, 0x6F, 0x90, 0x60, 0xD3, 0x60, 0x10, 0x1C, 0xBF, 0xF7
	.byte 0xC5, 0xFF, 0x4A, 0xE0, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x0C, 0x4B, 0x1A, 0x68
	.byte 0x00, 0x2A, 0x45, 0xD1, 0x0B, 0x48, 0xA9, 0x00, 0x01, 0x31, 0x09, 0x18, 0x08, 0x78, 0xFF, 0x28
	.byte 0x3B, 0xD0, 0x80, 0x00, 0xC0, 0x19, 0x00, 0x68, 0x30, 0x18, 0x58, 0x60, 0x20, 0x6F, 0x80, 0x21
	.byte 0x89, 0x01, 0x40, 0x18, 0x98, 0x60, 0xDA, 0x60, 0x18, 0x1C, 0xBF, 0xF7, 0xA7, 0xFF, 0x2C, 0xE0
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x0C, 0x4B, 0x1A, 0x68, 0x00, 0x2A, 0x27, 0xD1
	.byte 0x0B, 0x48, 0xA9, 0x00, 0x02, 0x31, 0x09, 0x18, 0x08, 0x78, 0xFF, 0x28, 0x1D, 0xD0, 0x80, 0x00
	.byte 0xC0, 0x19, 0x00, 0x68, 0x30, 0x18, 0x58, 0x60, 0x20, 0x6F, 0x80, 0x21, 0xC9, 0x01, 0x40, 0x18
	.byte 0x98, 0x60, 0xDA, 0x60, 0x18, 0x1C, 0xBF, 0xF7, 0x89, 0xFF, 0x0E, 0xE0, 0xC0, 0x0D, 0x00, 0x03
	.byte 0x6C, 0xAA, 0x3A, 0x08, 0x02, 0x48, 0x00, 0x68, 0x00, 0x28, 0x09, 0xD1, 0x05, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x20, 0x1C, 0x00, 0xF0, 0x63, 0xFA, 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83
_0805991C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8059924
sub_8059924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	movs r0, #0x00
	str r0, [sp, #0x004]
_08059936:
	ldr r2, _08059A84 @ =room_solidity_index_table
	movs r1, #0x02
	ldr r3, [sp, #0x004]
	subs r1, r1, r3
	lsls r1, r1, #0x01
	ldrh r0, [r7, #0x1E]
	lsls r0, r0, #0x03
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	ldr r0, _08059A88 @ =0x0000FFFF
	adds r3, #0x01
	str r3, [sp, #0x018]
	cmp r1, r0
	bne _08059956
	b _08059A64
_08059956:
	ldr r5, [sp, #0x004]
	lsls r2, r5, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	subs r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x14
	subs r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r6, #0x11
	mov r10, r6
	movs r0, #0x0D
	str r0, [sp, #0x00C]
	cmp r1, #0x00
	bne _080599A8
	movs r5, #0x10
	mov r10, r5
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #0x09
	adds r0, r0, r5
	lsrs r0, r0, #0x10
	str r0, [sp, #0x010]
_080599A8:
	adds r1, #0x0F
	adds r0, r7, #0x0
	adds r0, #0x42
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599C0
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599C0:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bne _080599D4
	movs r6, #0x0C
	str r6, [sp, #0x00C]
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080599D4:
	adds r1, #0x0A
	adds r0, r7, #0x0
	adds r0, #0x48
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	ble _080599EC
	mov r0, r10
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
_080599EC:
	movs r2, #0x00
	ldr r5, [sp, #0x00C]
	cmp r2, r5
	bge _08059A64
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x014]
_080599FA:
	movs r1, #0x00
	lsls r2, r2, #0x10
	str r2, [sp, #0x01C]
	cmp r1, r10
	bge _08059A52
	ldr r6, [sp, #0x010]
	lsls r0, r6, #0x10
	asrs r5, r0, #0x10
	asrs r0, r2, #0x10
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	lsls r3, r0, #0x10
	mov r9, r3
	ldr r2, [sp, #0x008]
	adds r6, r0, #0x0
	muls r6, r2
	mov r8, r6
_08059A1C:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, [sp, #0x004]
	lsls r0, r3, #0x0B
	add r0, r8
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r7, #0x6C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r3, #0x0
	mov r6, r9
	asrs r3, r6, #0x10
	bl sub_8059A8C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r10
	blt _08059A1C
_08059A52:
	ldr r1, [sp, #0x01C]
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	blt _080599FA
_08059A64:
	ldr r5, [sp, #0x018]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x004]
	cmp r0, #0x02
	bhi _08059A72
	b _08059936
_08059A72:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059A84: .4byte room_solidity_index_table
_08059A88: .4byte 0x0000FFFF
	thumb_func_start sub_8059A8C
sub_8059A8C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r5, [sp, #0x014]
	lsls r1, r1, #0x10
	lsls r5, r5, #0x10
	ldr r4, [r0, #0x74]
	mov r8, r4
	movs r6, #0x0F
	lsrs r1, r1, #0x06
	ands r3, r6
	lsls r4, r3, #0x06
	adds r4, r1, r4
	ands r2, r6
	lsls r2, r2, #0x01
	adds r4, r4, r2
	lsls r4, r4, #0x10
	lsls r3, r3, #0x01
	adds r3, #0x01
	lsls r3, r3, #0x05
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	adds r2, r0, #0x0
	adds r2, #0x7C
	ldrh r2, [r2, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x10
	ldr r3, [r0, #0x68]
	lsrs r4, r4, #0x0F
	adds r4, r4, r3
	lsrs r5, r5, #0x0D
	add r5, r8
	ldrh r0, [r5, #0x00]
	adds r0, r2, r0
	strh r0, [r4, #0x00]
	ldrh r0, [r5, #0x02]
	adds r0, r2, r0
	strh r0, [r4, #0x02]
	lsrs r1, r1, #0x0F
	adds r1, r1, r3
	ldrh r0, [r5, #0x04]
	adds r0, r2, r0
	strh r0, [r1, #0x00]
	ldrh r0, [r5, #0x06]
	adds r2, r2, r0
	strh r2, [r1, #0x02]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8059AF4
sub_8059AF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r12, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_08059B06:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r5, _08059B54 @ =room_solidity_index_table
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	ldr r2, _08059B58 @ =0x0000FFFF
	cmp r0, r2
	bne _08059B24
	b _08059C60
_08059B24:
	lsls r0, r0, #0x02
	ldr r5, _08059B5C @ =0x08754D74
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r6, r1, r0
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _08059B60
	ldr r2, [sp, #0x000]
	lsls r1, r2, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _08059B76
	.byte 0x00, 0x00
_08059B54: .4byte room_solidity_index_table
_08059B58: .4byte 0x0000FFFF
_08059B5C: .4byte 0x08754D74
_08059B60:
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r1, r12
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_08059B76:
	mov r1, r12
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r6, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r12
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x26]
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r1, _08059CFC @ =0x0000FFFF
	ands r0, r1
	mov r2, r12
	strh r0, [r2, #0x28]
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r12
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r6, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r7, #0x02
	movs r0, #0x00
	mov r8, r0
	cmp r0, r3
	bcs _08059C60
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r1, r5, #0x10
	str r1, [sp, #0x010]
	str r3, [sp, #0x004]
_08059BE6:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r5, [sp, #0x010]
	cmp r2, r5
	bcs _08059C54
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x0B
	mov r10, r0
	mov r1, r12
	ldr r1, [r1, #0x6C]
	mov r9, r1
	ldr r5, [sp, #0x00C]
	lsrs r5, r5, #0x10
	str r5, [sp, #0x008]
_08059C04:
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r3, [r1, #0x00]
	movs r4, #0x00
	adds r5, r2, #0x4
_08059C14:
	movs r2, #0xC0
	ands r2, r3
	lsls r2, r2, #0x02
	adds r1, r7, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r1, r6, r1
	ldrb r1, [r1, #0x00]
	orrs r1, r2
	mov r0, r10
	add r0, r8
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	lsls r0, r3, #0x1A
	lsrs r3, r0, #0x18
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x03
	bls _08059C14
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _08059C04
_08059C54:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _08059BE6
_08059C60:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _08059C70
	b _08059B06
_08059C70:
	movs r5, #0x00
	str r5, [sp, #0x000]
	ldr r4, _08059D00 @ =room_solidity_index_table
	ldr r3, _08059CFC @ =0x0000FFFF
_08059C78:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r12
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	cmp r0, r3
	bne _08059CDE
	ldr r5, [sp, #0x000]
	lsls r2, r5, #0x01
	mov r0, r12
	adds r0, #0x2A
	adds r0, r0, r2
	mov r5, r12
	ldrh r1, [r5, #0x2E]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x30
	adds r0, r0, r2
	ldrh r1, [r5, #0x34]
	strh r1, [r0, #0x00]
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r2
	ldrh r1, [r5, #0x3A]
	strh r1, [r0, #0x00]
	mov r1, r12
	adds r1, #0x3C
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x42
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x46
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	mov r1, r12
	adds r1, #0x48
	adds r1, r1, r2
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
_08059CDE:
	ldr r0, [sp, #0x000]
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x01
	bls _08059C78
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059CFC: .4byte 0x0000FFFF
_08059D00: .4byte room_solidity_index_table
	thumb_func_start sub_8059D04
sub_8059D04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _08059D7C @ =0x086FFC20
	mov r9, r5
	ldr r1, _08059D80 @ =0x03000DE8
	ldrb r7, [r1, #0x04]
	ldr r2, _08059D84 @ =0x083AAC4C
	lsls r1, r7, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	ldr r2, [r0, #0x74]
	ldr r6, _08059D88 @ =0x000007FF
	mov r12, r2
_08059D2E:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bls _08059D2E
	lsls r0, r7, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r4, r5, r0
	movs r3, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x05
	ldr r5, _08059D88 @ =0x000007FF
_08059D5A:
	lsls r0, r3, #0x01
	adds r1, r0, r2
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _08059D5A
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08059D7C: .4byte 0x086FFC20
_08059D80: .4byte 0x03000DE8
_08059D84: .4byte 0x083AAC4C
_08059D88: .4byte 0x000007FF
	thumb_func_start sub_8059D8C
sub_8059D8C:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _08059DA4 @ =0x0300034C
	ldr r1, _08059DA8 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059DB0
	ldr r2, _08059DAC @ =0x088D4808
	b _08059DB2
_08059DA4: .4byte 0x0300034C
_08059DA8: .4byte 0x00000888
_08059DAC: .4byte 0x088D4808
_08059DB0:
	ldr r2, _08059DD0 @ =0x088C8730
_08059DB2:
	ldr r1, _08059DD4 @ =0x083AAD68
	ldr r0, _08059DD8 @ =0x03000DE8
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, [r3, #0x78]
	movs r2, #0x78
	bl CpuFastSet
	pop {r0}
	bx r0
_08059DD0: .4byte 0x088C8730
_08059DD4: .4byte 0x083AAD68
_08059DD8: .4byte 0x03000DE8
	thumb_func_start sub_8059DDC
sub_8059DDC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _08059E4C @ =0x081E27DC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x6C]
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _08059E50 @ =0x081E27E4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x74]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x6C]
	ldr r2, _08059E54 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x74]
	ldr r2, _08059E58 @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	adds r0, r5, #0x0
	bl sub_8059AF4
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8059D04
	adds r0, r5, #0x0
	bl sub_8059924
	ldr r0, [r5, #0x74]
	cmp r0, #0x00
	beq _08059E3A
	bl free_heap_8018D9C
_08059E3A:
	ldr r0, [r5, #0x6C]
	cmp r0, #0x00
	beq _08059E44
	bl free_heap_8018D9C
_08059E44:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08059E4C: .4byte 0x081E27DC
_08059E50: .4byte 0x081E27E4
_08059E54: .4byte 0x01000C00
_08059E58: .4byte 0x01000A00
	thumb_func_start sub_8059E5C
sub_8059E5C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08059E94 @ =0x08CDC278
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x78]
	cmp r0, #0x00
	beq _08059E70
	bl free_heap_8018D9C
_08059E70:
	ldr r0, [r4, #0x70]
	cmp r0, #0x00
	beq _08059E7A
	bl free_heap_8018D9C
_08059E7A:
	ldr r0, [r4, #0x68]
	cmp r0, #0x00
	beq _08059E84
	bl free_heap_8018D9C
_08059E84:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059E94: .4byte 0x08CDC278
	.byte 0x09, 0x04, 0x09, 0x0C, 0x03, 0x4A, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00, 0x80, 0x18, 0x40, 0x78
	.byte 0x70, 0x47, 0x00, 0x00, 0xD4, 0x78, 0x3A, 0x08, 0x09, 0x04, 0x09, 0x0C, 0x03, 0x4A, 0x48, 0x00
	.byte 0x40, 0x18, 0xC0, 0x00, 0x80, 0x18, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x78, 0x3A, 0x08
	thumb_func_start sub_8059EC8
sub_8059EC8:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x03
	ldr r1, _08059EE8 @ =room_props_table
	ldr r0, _08059EEC @ =0x03000DD0
	adds r2, r2, r1
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
_08059EE8: .4byte room_props_table
_08059EEC: .4byte 0x03000DD0
	thumb_func_start sub_8059EF0
sub_8059EF0:
	lsls r0, r0, #0x10
	ldr r1, _08059EFC @ =0x083AF418
	lsrs r0, r0, #0x0E
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bx lr
_08059EFC: .4byte 0x083AF418
	.byte 0x00, 0xB5, 0x00, 0x22, 0x00, 0x49, 0x03, 0xE0, 0xD4, 0x78, 0x3A, 0x08, 0x18, 0x31, 0x01, 0x32
	.byte 0x08, 0x78, 0xFF, 0x28, 0x02, 0xD0, 0x48, 0x78, 0xFF, 0x28, 0xF7, 0xD1, 0x10, 0x04, 0x00, 0x0C
	.byte 0x02, 0xBC, 0x08, 0x47
	thumb_func_start sub_8059F24
sub_8059F24:
	mov r12, r0
	ldr r3, _08059F70 @ =0x02000014
	adds r0, #0x5A
	ldrh r2, [r0, #0x00]
	ldr r1, _08059F74 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	adds r3, #0x04
	mov r0, r12
	adds r0, #0x5C
	ldrh r2, [r0, #0x00]
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _08059F78 @ =0x0200001C
	mov r0, r12
	adds r0, #0x5E
	ldrh r0, [r0, #0x00]
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _08059F7C @ =0x02000016
	mov r0, r12
	adds r0, #0x60
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x62
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0x64
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	bx lr
	.byte 0x00, 0x00
_08059F70: .4byte 0x02000014
_08059F74: .4byte 0x000001FF
_08059F78: .4byte 0x0200001C
_08059F7C: .4byte 0x02000016
	thumb_func_start sub_8059F80
sub_8059F80:
	push {lr}
	ldr r0, _08059F98 @ =0x0300034C
	ldr r1, _08059F9C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08059FA4
	ldr r2, _08059FA0 @ =0x088D4808
	b _08059FA6
	.byte 0x00, 0x00
_08059F98: .4byte 0x0300034C
_08059F9C: .4byte 0x00000888
_08059FA0: .4byte 0x088D4808
_08059FA4:
	ldr r2, _08059FCC @ =0x088C8730
_08059FA6:
	ldr r1, _08059FD0 @ =0x083AAD68
	ldr r0, _08059FD4 @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r2, r0
	ldr r1, _08059FD8 @ =0x02000080
	movs r2, #0x78
	bl CpuFastSet
	ldr r1, _08059FDC @ =0x0300034C
	ldr r0, _08059FE0 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08059FCC: .4byte 0x088C8730
_08059FD0: .4byte 0x083AAD68
_08059FD4: .4byte 0x03000DD0
_08059FD8: .4byte 0x02000080
_08059FDC: .4byte 0x0300034C
_08059FE0: .4byte 0x00007FFF
	thumb_func_start sub_8059FE4
sub_8059FE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8059F24
	adds r0, r4, #0x0
	bl sub_80582DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_80587BC
	adds r0, r4, #0x0
	bl sub_8058278
	adds r0, r4, #0x0
	bl sub_80584F8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start stage_room_solidity_grid
stage_room_solidity_grid:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	ldr r2, _0805A028 @ =solidity_grid_offset_table
	ldr r1, _0805A02C @ =room_solidity_index_table
	ldrh r0, [r3, #0x1E]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r0, [r0, #0x06]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r7, r0, r2
	movs r5, #0x00
	b _0805A056
_0805A028: .4byte solidity_grid_offset_table
_0805A02C: .4byte room_solidity_index_table
_0805A030:
	movs r2, #0x00
	ldrh r0, [r3, #0x26]
	adds r6, r5, #0x1
	cmp r2, r0
	bge _0805A054
	adds r4, r3, #0x0
	adds r4, #0x9C
_0805A03E:
	muls r0, r5
	ldr r1, [r4, #0x00]
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strb r0, [r1, #0x00]
	adds r2, #0x01
	ldrh r0, [r3, #0x26]
	cmp r2, r0
	blt _0805A03E
_0805A054:
	adds r5, r6, #0x0
_0805A056:
	ldrh r0, [r3, #0x28]
	cmp r5, r0
	blt _0805A030
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start load_col_set_to_dest
load_col_set_to_dest: @ 0805A064
	push {r4, lr}
	ldr r1, _0805A0E4 @ =0x03000DD0
	ldrb r1, [r1, #0x06]
	ldr r2, _0805A0E8 @ =col_set_ptr_table
	lsls r1, r1, #0x02
	adds r1, r1, r2
	movs r4, #0x00
	adds r3, r0, #0x0
	adds r3, #0xA0
	ldr r2, [r1, #0x00]
_0805A078:
	ldr r1, [r3, #0x00]
	lsls r0, r4, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	str r1, [r0, #0x00]
	adds r1, r4, #0x1
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x04]
	str r0, [r1, #0x00]
	adds r1, r4, #0x2
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x08]
	str r0, [r1, #0x00]
	adds r1, r4, #0x3
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x0C]
	str r0, [r1, #0x00]
	adds r1, r4, #0x4
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x00]
	adds r1, r4, #0x5
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x00]
	adds r1, r4, #0x6
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	adds r1, r4, #0x7
	ldr r0, [r3, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r2, #0x1C]
	str r0, [r1, #0x00]
	adds r2, #0x20
	adds r4, #0x08
	cmp r4, #0xFF
	ble _0805A078
	pop {r4}
	pop {r0}
	bx r0
_0805A0E4: .4byte 0x03000DD0
_0805A0E8: .4byte col_set_ptr_table
	thumb_func_start sub_805A0EC
sub_805A0EC:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x0F
	adds r4, r0, #0x0
	adds r4, #0x36
	adds r4, r4, r1
	ldrh r4, [r4, #0x00]
	strh r4, [r2, #0x00]
	adds r0, #0x3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r3, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start get_coldef_ptr_by_idx
get_coldef_ptr_by_idx: @ 0805A10C
	lsls r1, r1, #0x18
	adds r0, #0xA0
	lsrs r1, r1, #0x16
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	bx lr
	thumb_func_start get_coldef_ptr_by_xz
get_coldef_ptr_by_xz: @ 0805A118
	push {lr}
	mov r12, r0
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x00
	blt _0805A144
	mov r3, r12
	adds r3, #0x46
	ldrh r3, [r3, #0x00]
	cmp r1, r3
	bge _0805A144
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x00
	blt _0805A144
	mov r0, r12
	adds r0, #0x4C
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	blt _0805A14C
_0805A144:
	ldr r0, _0805A148 @ =0x083A75D8
	b _0805A168
_0805A148: .4byte 0x083A75D8
_0805A14C:
	mov r3, r12
	ldrh r0, [r3, #0x26]
	muls r0, r2
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r12
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	adds r1, r1, r0
	ldrb r1, [r1, #0x00]
	mov r0, r12
	bl get_coldef_ptr_by_idx
_0805A168:
	pop {r1}
	bx r1
	.byte 0x12, 0x04, 0x12, 0x14, 0xC3, 0x8C, 0x5A, 0x43, 0x09, 0x04, 0x09, 0x14, 0x89, 0x18, 0x09, 0x04
	.byte 0x09, 0x0C, 0x9C, 0x30, 0x00, 0x68, 0x40, 0x18, 0x00, 0x78, 0x70, 0x47, 0x10, 0xB5, 0x09, 0x04
	.byte 0xC9, 0x0B, 0x04, 0x1C, 0x4E, 0x34, 0x64, 0x18, 0x24, 0x88, 0x14, 0x80, 0x54, 0x30, 0x40, 0x18
	.byte 0x00, 0x88, 0x18, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_805A1A8
sub_805A1A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r5, #0xC0
	lsls r5, r5, #0x13
	adds r0, r5, #0x0
	bl sub_80184F4
	adds r4, #0xA4
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805A1C4
	bl free_heap_8018D9C
_0805A1C4:
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r2, _0805A1DC @ =0x01002000
	mov r0, sp
	adds r1, r5, #0x0
	bl CpuFastSet
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805A1DC: .4byte 0x01002000
	.byte 0x70, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x07, 0x48, 0xA0, 0x61, 0x20, 0x1C
	.byte 0x20, 0x30, 0x02, 0x21, 0x02, 0xF0, 0x64, 0xFD, 0x20, 0x1C, 0x29, 0x1C, 0xBF, 0xF7, 0x1E, 0xFD
	.byte 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x98, 0xC2, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0x09, 0x06, 0x09, 0x0E, 0xBF, 0xF7, 0xC8, 0xFB, 0x04, 0x48, 0xA0, 0x61, 0x20, 0x1C, 0x20, 0x30
	.byte 0x02, 0xF0, 0x5A, 0xFD, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x98, 0xC2, 0xCD, 0x08
	thumb_func_start sub_805A230
sub_805A230:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r6, r3, #0x0
	ldr r0, [sp, #0x024]
	mov r8, r0
	ldr r3, [sp, #0x028]
	mov r9, r3
	ldr r4, [sp, #0x02C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _0805A340 @ =0x08CDC2A8
	str r0, [r7, #0x18]
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r7, r1
	str r4, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	ldr r2, _0805A344 @ =0x081E27EC
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x38]
	movs r4, #0x80
	lsls r4, r4, #0x04
	ldr r2, _0805A348 @ =0x081E27F4
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x3C]
	ldr r2, _0805A34C @ =0x081E27FC
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x44]
	ldr r2, _0805A350 @ =0x081E2804
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x40]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x38]
	ldr r2, _0805A354 @ =0x01000800
	mov r10, r2
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x3C]
	ldr r5, _0805A358 @ =0x01000200
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x44]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x40]
	mov r0, sp
	mov r2, r10
	bl CpuFastSet
	ldr r0, _0805A35C @ =0x0000FFFC
	strh r0, [r7, #0x1C]
	strh r6, [r7, #0x1E]
	mov r3, r8
	strh r3, [r7, #0x32]
	mov r5, r9
	strh r5, [r7, #0x36]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x20]
	ldr r2, _0805A360 @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x08]
	lsrs r0, r0, #0x04
	lsls r0, r0, #0x05
	strh r0, [r7, #0x24]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x08]
	movs r0, #0x0F
	ands r0, r1
	lsls r0, r0, #0x04
	strh r0, [r7, #0x26]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _0805A374
	cmp r1, #0x10
	bgt _0805A364
	cmp r1, #0x00
	beq _0805A36E
	b _0805A38E
_0805A340: .4byte 0x08CDC2A8
_0805A344: .4byte 0x081E27EC
_0805A348: .4byte 0x081E27F4
_0805A34C: .4byte 0x081E27FC
_0805A350: .4byte 0x081E2804
_0805A354: .4byte 0x01000800
_0805A358: .4byte 0x01000200
_0805A35C: .4byte 0x0000FFFC
_0805A360: .4byte 0x083AFC5C
_0805A364:
	cmp r1, #0x20
	beq _0805A37A
	cmp r1, #0x30
	beq _0805A380
	b _0805A38E
_0805A36E:
	movs r1, #0x04
	movs r0, #0x04
	b _0805A384
_0805A374:
	movs r1, #0x01
	movs r0, #0x01
	b _0805A384
_0805A37A:
	movs r1, #0x02
	movs r0, #0x02
	b _0805A384
_0805A380:
	movs r1, #0x08
	movs r0, #0x08
_0805A384:
	strh r0, [r7, #0x28]
	strh r0, [r7, #0x2A]
	adds r0, r7, #0x0
	adds r0, #0x2E
	strb r1, [r0, #0x00]
_0805A38E:
	ldr r2, _0805A3AC @ =0x083AFC5C
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x07]
	movs r1, #0x03
	ands r1, r0
	cmp r1, #0x01
	bne _0805A3B0
	movs r0, #0x04
	strh r0, [r7, #0x2A]
	b _0805A3B8
	.byte 0x00, 0x00
_0805A3AC: .4byte 0x083AFC5C
_0805A3B0:
	cmp r1, #0x02
	bne _0805A3B8
	movs r0, #0x04
	strh r0, [r7, #0x28]
_0805A3B8:
	adds r1, r7, #0x0
	adds r1, #0x2D
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x32
	ldsh r1, [r7, r0]
	movs r3, #0x28
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x24]
	adds r0, r0, r5
	strh r0, [r7, #0x30]
	movs r0, #0x36
	ldsh r1, [r7, r0]
	movs r3, #0x2A
	ldsh r0, [r7, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r5, [r7, #0x26]
	adds r0, r0, r5
	strh r0, [r7, #0x34]
	ldrh r1, [r7, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x09]
	lsrs r0, r1, #0x04
	movs r2, #0x0F
	ands r2, r1
	ldr r4, _0805A430 @ =0x02000008
	ldr r3, _0805A434 @ =0x081E280A
	lsls r0, r0, #0x01
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x07
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	lsls r2, r2, #0x01
	adds r2, r2, r3
	ldrh r0, [r2, #0x00]
	movs r2, #0xB8
	lsls r2, r2, #0x07
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0805A430: .4byte 0x02000008
_0805A434: .4byte 0x081E280A
	thumb_func_start sub_805A438
sub_805A438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r7, _0805A46C @ =0x089FC058
	ldr r2, _0805A470 @ =0x083AFC5C
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	mov r8, r1
	movs r0, #0x1C
	ldsh r3, [r5, r0]
	movs r0, #0x03
	negs r0, r0
	mov r12, r2
	cmp r3, r0
	beq _0805A4B0
	cmp r3, r0
	bgt _0805A474
	subs r0, #0x01
	cmp r3, r0
	beq _0805A484
	b _0805A536
_0805A46C: .4byte 0x089FC058
_0805A470: .4byte 0x083AFC5C
_0805A474:
	movs r0, #0x02
	negs r0, r0
	cmp r3, r0
	beq _0805A4FC
	adds r0, #0x01
	cmp r3, r0
	beq _0805A51C
	b _0805A536
_0805A484:
	ldr r0, _0805A4A8 @ =0x03000DC0
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r2, _0805A4AC @ =0x083AFE48
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r7
	ldr r1, [r1, #0x00]
	adds r1, r1, r7
	str r1, [r0, #0x04]
	ldr r1, [r5, #0x40]
	str r1, [r0, #0x08]
	str r3, [r0, #0x0C]
	bl sub_8019808
	b _0805A52E
_0805A4A8: .4byte 0x03000DC0
_0805A4AC: .4byte 0x083AFE48
_0805A4B0:
	ldr r6, _0805A4F4 @ =0x03000DC0
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805A4BA
	b _0805A60E
_0805A4BA:
	ldr r0, [r5, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	str r4, [r6, #0x00]
	ldr r1, _0805A4F8 @ =0x083AFE48
	mov r2, r8
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	adds r0, r1, r7
	str r0, [r6, #0x04]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x08]
	str r4, [r6, #0x0C]
	adds r0, r6, #0x0
	bl sub_8019808
	b _0805A60E
	.byte 0x00, 0x00
_0805A4F4: .4byte 0x03000DC0
_0805A4F8: .4byte 0x083AFE48
_0805A4FC:
	ldr r0, _0805A514 @ =0x03000DC0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805A506
	b _0805A60E
_0805A506:
	ldr r0, [r5, #0x40]
	ldr r1, _0805A518 @ =0x06002000
	movs r2, #0x80
	lsls r2, r2, #0x04
	bl CpuFastSet
	b _0805A52E
_0805A514: .4byte 0x03000DC0
_0805A518: .4byte 0x06002000
_0805A51C:
	adds r0, r5, #0x0
	bl sub_805A618
	adds r0, r5, #0x0
	bl sub_805B074
	adds r0, r5, #0x0
	bl sub_805AEC8
_0805A52E:
	ldrh r0, [r5, #0x1C]
	adds r0, #0x01
	strh r0, [r5, #0x1C]
	b _0805A60E
_0805A536:
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _0805A54C
	ldrh r0, [r5, #0x20]
	ldrh r3, [r5, #0x32]
	adds r0, r0, r3
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x22]
	ldrh r1, [r5, #0x36]
	adds r0, r0, r1
	strh r0, [r5, #0x36]
_0805A54C:
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r1, [r0, #0x07]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805A5D8
	adds r6, r5, #0x0
	adds r6, #0x2D
	adds r0, r5, #0x0
	adds r0, #0x2E
	ldrb r1, [r0, #0x00]
	ldrb r2, [r6, #0x00]
	adds r1, r1, r2
	strb r1, [r6, #0x00]
	ldr r4, _0805A5D0 @ =0x083A75DC
	ldrh r2, [r5, #0x1E]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r3, [r0, #0x07]
	movs r2, #0x07
	adds r0, r2, #0x0
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1A
	muls r1, r0
	ldrh r0, [r5, #0x20]
	adds r1, r1, r0
	ldrh r0, [r5, #0x30]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	ldr r3, _0805A5D4 @ =0x083A75EC
	ldrh r1, [r5, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	add r0, r12
	ldrb r0, [r0, #0x07]
	ands r2, r0
	lsls r2, r2, #0x01
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrb r0, [r6, #0x00]
	lsrs r0, r0, #0x02
	muls r1, r0
	ldrh r0, [r5, #0x22]
	adds r1, r1, r0
	ldrh r0, [r5, #0x34]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
	ldrb r1, [r6, #0x00]
	movs r0, #0x03
	ands r0, r1
	strb r0, [r6, #0x00]
	b _0805A5FC
	.byte 0x00, 0x00
_0805A5D0: .4byte 0x083A75DC
_0805A5D4: .4byte 0x083A75EC
_0805A5D8:
	movs r2, #0x32
	ldsh r1, [r5, r2]
	movs r3, #0x28
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x24]
	adds r0, r0, r1
	strh r0, [r5, #0x30]
	movs r2, #0x36
	ldsh r1, [r5, r2]
	movs r3, #0x2A
	ldsh r0, [r5, r3]
	muls r0, r1
	asrs r0, r0, #0x02
	ldrh r1, [r5, #0x26]
	adds r0, r0, r1
	strh r0, [r5, #0x34]
_0805A5FC:
	movs r0, #0x00
	strh r0, [r5, #0x22]
	strh r0, [r5, #0x20]
	adds r0, r5, #0x0
	bl sub_805AC98
	adds r0, r5, #0x0
	bl sub_805A95C
_0805A60E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A618
sub_805A618:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, _0805A680 @ =0x02000010
	ldrh r2, [r4, #0x30]
	ldr r1, _0805A684 @ =0x000001FF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A688 @ =0x02000014
	ldrh r0, [r4, #0x32]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r3, #0x02
	ldrh r2, [r4, #0x34]
	movs r1, #0xFF
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r3, #0x00]
	ldr r2, _0805A68C @ =0x02000016
	ldrh r0, [r4, #0x36]
	ands r1, r0
	strh r1, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_805A6EC
	adds r0, r4, #0x0
	bl sub_805A900
	adds r0, r4, #0x0
	bl sub_805A7C0
	ldr r0, [r4, #0x38]
	ldr r1, _0805A690 @ =0x0600D000
	movs r2, #0x80
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, _0805A694 @ =0x0300034C
	ldr r1, _0805A698 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805A6A0
	ldr r5, _0805A69C @ =0x08A53B30
	b _0805A6A2
	.byte 0x00, 0x00
_0805A680: .4byte 0x02000010
_0805A684: .4byte 0x000001FF
_0805A688: .4byte 0x02000014
_0805A68C: .4byte 0x02000016
_0805A690: .4byte 0x0600D000
_0805A694: .4byte 0x0300034C
_0805A698: .4byte 0x00000888
_0805A69C: .4byte 0x08A53B30
_0805A6A0:
	ldr r5, _0805A6D4 @ =0x08A4FCCC
_0805A6A2:
	ldr r3, _0805A6D8 @ =0x083AFFD8
	ldr r2, _0805A6DC @ =0x083AFC5C
	ldrh r1, [r4, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x02]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	adds r0, r5, r0
	ldr r1, _0805A6E0 @ =0x02000080
	movs r2, #0x40
	bl CpuFastSet
	ldr r1, _0805A6E4 @ =0x0300034C
	ldr r0, _0805A6E8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A6D4: .4byte 0x08A4FCCC
_0805A6D8: .4byte 0x083AFFD8
_0805A6DC: .4byte 0x083AFC5C
_0805A6E0: .4byte 0x02000080
_0805A6E4: .4byte 0x0300034C
_0805A6E8: .4byte 0x00007FFF
	thumb_func_start sub_805A6EC
sub_805A6EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _0805A768 @ =0x08A46198
	mov r9, r0
	ldr r2, _0805A76C @ =0x083AFC5C
	mov r3, r8
	ldrh r1, [r3, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	mov r10, r0
	movs r2, #0x00
_0805A710:
	lsls r0, r2, #0x01
	mov r3, r10
	lsls r1, r3, #0x02
	adds r0, r0, r1
	ldr r1, _0805A770 @ =0x083AFF3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r3, _0805A774 @ =0x0000FFFF
	cmp r0, r3
	beq _0805A778
	lsls r0, r0, #0x02
	ldr r1, _0805A768 @ =0x08A46198
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r3, r9
	adds r7, r3, r0
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r6, r2, #0x09
	mov r3, r8
	ldr r5, [r3, #0x3C]
_0805A73C:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r3, r0, #0x05
_0805A742:
	adds r1, r6, r2
	adds r1, r3, r1
	lsls r1, r1, #0x01
	adds r1, r1, r5
	adds r0, r3, r2
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A742
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A73C
	b _0805A7A8
	.byte 0x00, 0x00
_0805A768: .4byte 0x08A46198
_0805A76C: .4byte 0x083AFC5C
_0805A770: .4byte 0x083AFF3C
_0805A774: .4byte 0x0000FFFF
_0805A778:
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r5, r2, #0x09
	mov r1, r8
	ldr r3, [r1, #0x3C]
	movs r6, #0x00
_0805A786:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r1, r0, #0x05
_0805A78C:
	adds r0, r5, r2
	adds r0, r1, r0
	lsls r0, r0, #0x01
	adds r0, r0, r3
	strh r6, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A78C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A786
_0805A7A8:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x01
	bls _0805A710
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A7C0
sub_805A7C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r2, _0805A85C @ =0x083AFC5C
	ldrh r1, [r0, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	str r0, [sp, #0x004]
	movs r0, #0x00
	mov r9, r0
_0805A7E2:
	mov r1, r9
	lsls r0, r1, #0x01
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x02
	adds r0, r0, r1
	ldr r3, _0805A860 @ =0x083AFF3C
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	mov r1, r9
	adds r1, #0x01
	str r1, [sp, #0x008]
	ldr r2, _0805A864 @ =0x0000FFFF
	cmp r0, r2
	beq _0805A840
	movs r0, #0x00
	mov r3, r9
	lsls r3, r3, #0x09
	mov r10, r3
_0805A806:
	movs r4, #0x00
	lsls r6, r0, #0x10
	lsls r5, r0, #0x05
	adds r7, r0, #0x1
_0805A80E:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r1, r10
	adds r0, r5, r1
	adds r0, r0, r4
	mov r3, r8
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r8
	mov r1, r9
	asrs r3, r6, #0x10
	bl sub_805A868
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x1F
	bls _0805A80E
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A806
_0805A840:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #0x01
	bls _0805A7E2
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805A85C: .4byte 0x083AFC5C
_0805A860: .4byte 0x083AFF3C
_0805A864: .4byte 0x0000FFFF
	thumb_func_start sub_805A868
sub_805A868:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r12, r0
	ldr r7, [r6, #0x44]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805A8AC
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805A8D6
_0805A8AC:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805A8D6:
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r3, [r6, #0x38]
	lsls r1, r0, #0x01
	adds r1, r1, r3
	mov r0, r12
	lsls r2, r0, #0x03
	adds r2, r2, r7
	ldrh r0, [r2, #0x00]
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	strh r0, [r1, #0x02]
	lsls r0, r4, #0x01
	adds r0, r0, r3
	ldrh r1, [r2, #0x04]
	strh r1, [r0, #0x00]
	ldrh r1, [r2, #0x06]
	strh r1, [r0, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805A900
sub_805A900:
	push {r4, r5, lr}
	ldr r4, _0805A944 @ =0x08A2711C
	ldr r3, _0805A948 @ =0x083AFC5C
	ldrh r2, [r0, #0x1E]
	lsls r1, r2, #0x01
	adds r1, r1, r2
	lsls r1, r1, #0x02
	adds r1, r1, r3
	ldrb r1, [r1, #0x01]
	ldr r2, _0805A94C @ =0x083AFEC0
	lsls r1, r1, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	adds r4, r1, r4
	movs r2, #0x00
	ldr r3, [r0, #0x44]
	ldr r5, _0805A950 @ =0x000003FF
_0805A928:
	lsls r0, r2, #0x01
	adds r1, r0, r3
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0805A928
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805A944: .4byte 0x08A2711C
_0805A948: .4byte 0x083AFC5C
_0805A94C: .4byte 0x083AFEC0
_0805A950: .4byte 0x000003FF
	thumb_func_start sub_805A954
sub_805A954:
	strh r1, [r0, #0x20]
	strh r2, [r0, #0x22]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_805A95C
sub_805A95C:
	push {r4, lr}
	ldr r4, _0805A98C @ =0x02000010
	ldrh r3, [r0, #0x30]
	ldr r2, _0805A990 @ =0x000001FF
	adds r1, r2, #0x0
	ands r1, r3
	strh r1, [r4, #0x00]
	ldr r3, _0805A994 @ =0x02000014
	ldrh r1, [r0, #0x32]
	ands r2, r1
	strh r2, [r3, #0x00]
	adds r4, #0x02
	ldrh r3, [r0, #0x34]
	movs r2, #0xFF
	adds r1, r2, #0x0
	ands r1, r3
	strh r1, [r4, #0x00]
	ldr r1, _0805A998 @ =0x02000016
	ldrh r0, [r0, #0x36]
	ands r2, r0
	strh r2, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0805A98C: .4byte 0x02000010
_0805A990: .4byte 0x000001FF
_0805A994: .4byte 0x02000014
_0805A998: .4byte 0x02000016
	thumb_func_start sub_805A99C
sub_805A99C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805A9E4 @ =0x08CDC2A8
	str r0, [r4, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	beq _0805A9B8
	bl free_heap_8018D9C
_0805A9B8:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	beq _0805A9C2
	bl free_heap_8018D9C
_0805A9C2:
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	beq _0805A9CC
	bl free_heap_8018D9C
_0805A9CC:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _0805A9D6
	bl free_heap_8018D9C
_0805A9D6:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0805A9E4: .4byte 0x08CDC2A8
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x84, 0xB0, 0x80, 0x46, 0x49, 0x4A
	.byte 0xC1, 0x8B, 0x48, 0x00, 0x40, 0x18, 0x80, 0x00, 0x80, 0x18, 0x00, 0x79, 0x46, 0x49, 0x80, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x00, 0x90, 0x00, 0x20, 0x84, 0x46, 0x98, 0x23, 0x00, 0x22, 0x60, 0x46
	.byte 0x58, 0x43, 0x44, 0x46, 0x21, 0x18, 0x08, 0x1C, 0x48, 0x30, 0x02, 0x70, 0x01, 0x30, 0x02, 0x70
	.byte 0x01, 0x30, 0x02, 0x70, 0x01, 0x30, 0x02, 0x70, 0x60, 0x46, 0x01, 0x30, 0x00, 0x04, 0x00, 0x0C
	.byte 0x84, 0x46, 0x03, 0x28, 0xEB, 0xD9, 0x00, 0x98, 0x00, 0x28, 0x62, 0xD0, 0x00, 0x21, 0x8C, 0x46
	.byte 0x4E, 0x34, 0x01, 0x94, 0x42, 0x46, 0x60, 0x32, 0x02, 0x92, 0x52, 0x34, 0x03, 0x94, 0x80, 0x20
	.byte 0x82, 0x46, 0x98, 0x21, 0x63, 0x46, 0x4B, 0x43, 0x42, 0x46, 0xD4, 0x18, 0x20, 0x1C, 0x48, 0x30
	.byte 0x51, 0x46, 0x01, 0x70, 0x60, 0x46, 0xC2, 0x00, 0x00, 0x99, 0x52, 0x18, 0x11, 0x78, 0x7F, 0x20
	.byte 0x08, 0x40, 0x21, 0x1C, 0x49, 0x31, 0x08, 0x70, 0x20, 0x1C, 0x4A, 0x30, 0x00, 0x24, 0x04, 0x70
	.byte 0x57, 0x68, 0x00, 0x25, 0x01, 0x20, 0x60, 0x44, 0x81, 0x46, 0x1E, 0x1C, 0xAB, 0x19, 0x01, 0x99
	.byte 0xCB, 0x18, 0x2C, 0x1C, 0x62, 0x00, 0x12, 0x19, 0x92, 0x00, 0xD2, 0x19, 0x11, 0x78, 0x7F, 0x20
	.byte 0x08, 0x40, 0x18, 0x70, 0xA0, 0x00, 0x80, 0x19, 0x02, 0x99, 0x0B, 0x18, 0x51, 0x68, 0x19, 0x60
	.byte 0x03, 0x99, 0x08, 0x18, 0x91, 0x68, 0x01, 0x60, 0x60, 0x1C, 0x00, 0x04, 0x05, 0x0C, 0x60, 0x00
	.byte 0x00, 0x19, 0x80, 0x00, 0xC0, 0x19, 0x01, 0x78, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28, 0xDD, 0xD0
	.byte 0x98, 0x22, 0x60, 0x46, 0x50, 0x43, 0x44, 0x46, 0x22, 0x18, 0x10, 0x1C, 0x4C, 0x30, 0x05, 0x70
	.byte 0x02, 0x30, 0x01, 0x78, 0x03, 0x38, 0x01, 0x70, 0x61, 0x46, 0x4A, 0x46, 0x10, 0x04, 0x00, 0x0C
	.byte 0x84, 0x46, 0xC9, 0x00, 0x00, 0x9C, 0x09, 0x19, 0x09, 0x78, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28
	.byte 0xA7, 0xD0, 0x04, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x5C, 0xFC, 0x3A, 0x08, 0xE4, 0x00, 0x3B, 0x08, 0xF0, 0xB5, 0x47, 0x46
	.byte 0x80, 0xB4, 0x81, 0xB0, 0x06, 0x1C, 0x00, 0x20, 0x80, 0x46, 0x00, 0x27, 0x98, 0x20, 0x3D, 0x1C
	.byte 0x45, 0x43, 0x71, 0x19, 0x08, 0x1C, 0x48, 0x30, 0x00, 0x78, 0x00, 0x28, 0x36, 0xD0, 0x0B, 0x1C
	.byte 0x4B, 0x33, 0x18, 0x78, 0x01, 0x38, 0x18, 0x70, 0x00, 0x06, 0x04, 0x0E, 0x00, 0x2C, 0x2D, 0xD1
	.byte 0x0A, 0x1C, 0x4A, 0x32, 0x10, 0x78, 0x01, 0x30, 0x10, 0x70, 0x4C, 0x31, 0x00, 0x06, 0x00, 0x0E
	.byte 0x09, 0x78, 0x88, 0x42, 0x00, 0xD3, 0x14, 0x70, 0x11, 0x78, 0x4A, 0x19, 0x30, 0x1C, 0x4E, 0x30
	.byte 0x80, 0x18, 0x00, 0x78, 0x18, 0x70, 0x89, 0x00, 0x4C, 0x19, 0x30, 0x1C, 0x60, 0x30, 0x00, 0x19
	.byte 0x02, 0x68, 0x00, 0x2A, 0x03, 0xD0, 0x30, 0x1C, 0x00, 0x21, 0x00, 0xF0, 0x29, 0xF8, 0x30, 0x1C
	.byte 0xA0, 0x30, 0x00, 0x19, 0x02, 0x68, 0x00, 0x2A, 0x03, 0xD0, 0x30, 0x1C, 0x01, 0x21, 0x00, 0xF0
	.byte 0x1F, 0xF8, 0x40, 0x46, 0x01, 0x30, 0x00, 0x06, 0x00, 0x0E, 0x80, 0x46, 0x78, 0x1C, 0x00, 0x06
	.byte 0x07, 0x0E, 0x03, 0x2F, 0xBA, 0xD9, 0x40, 0x46, 0x00, 0x28, 0x08, 0xD0, 0xB0, 0x6B, 0x07, 0x49
	.byte 0x80, 0x22, 0x92, 0x01, 0x00, 0x23, 0x00, 0x93, 0x20, 0x23, 0xBD, 0xF7, 0x21, 0xFB, 0x01, 0xB0
	.byte 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0xD0, 0x00, 0x06
	thumb_func_start sub_805ABE8
sub_805ABE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x004]
	str r2, [sp, #0x00C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x08
	str r1, [sp, #0x010]
	movs r1, #0xFF
	adds r2, r1, #0x0
	ands r2, r0
	str r2, [sp, #0x014]
	ldr r3, [sp, #0x00C]
	ldrh r0, [r3, #0x02]
	lsrs r2, r0, #0x08
	mov r10, r2
	mov r8, r1
	mov r3, r8
	ands r3, r0
	mov r8, r3
	movs r6, #0x02
	movs r2, #0x00
	cmp r2, r8
	bcs _0805AC88
_0805AC24:
	ldr r1, [sp, #0x008]
	lsls r0, r1, #0x09
	ldr r1, [sp, #0x014]
	adds r3, r1, r2
	lsls r1, r3, #0x05
	adds r0, r0, r1
	ldr r1, [sp, #0x010]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r4, #0x00
	adds r2, #0x01
	mov r9, r2
	cmp r4, r10
	bcs _0805AC7E
	lsls r5, r3, #0x10
_0805AC44:
	lsls r0, r6, #0x01
	ldr r2, [sp, #0x00C]
	adds r0, r0, r2
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0805AC6E
	adds r0, r7, r4
	ldr r3, [sp, #0x004]
	ldr r1, [r3, #0x3C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r2, [r0, #0x00]
	ldr r1, [sp, #0x010]
	adds r2, r1, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	ldr r1, [sp, #0x008]
	asrs r3, r5, #0x10
	bl sub_805A868
_0805AC6E:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r10
	bcc _0805AC44
_0805AC7E:
	mov r2, r9
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r8
	bcc _0805AC24
_0805AC88:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805AC98
sub_805AC98:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r1, #0xEE
	lsls r1, r1, #0x03
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805ACB0
	b _0805AEB0
_0805ACB0:
	movs r2, #0x00
	mov r8, r2
	movs r4, #0x0F
	mov r9, r4
_0805ACB8:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	movs r0, #0xAA
	lsls r0, r0, #0x02
	adds r5, r3, r0
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805ACDC
	cmp r0, #0x10
	bgt _0805ACD6
	b _0805AEA0
_0805ACD6:
	cmp r0, #0x20
	beq _0805AD00
	b _0805AEA0
_0805ACDC:
	ldr r2, _0805ACFC @ =0x000002AD
	adds r1, r3, r2
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805ACEE
	b _0805AEA0
_0805ACEE:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805AEA0
	.byte 0x00, 0x00
_0805ACFC: .4byte 0x000002AD
_0805AD00:
	mov r0, r9
	ands r0, r1
	movs r4, #0x00
	mov r12, r4
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805AD88
	cmp r2, #0x01
	bgt _0805AD1E
	cmp r2, #0x00
	beq _0805AD26
	b _0805AEA0
_0805AD1E:
	cmp r2, #0x02
	bne _0805AD24
	b _0805AE3C
_0805AD24:
	b _0805AEA0
_0805AD26:
	ldr r5, _0805AD74 @ =0x000002AF
	adds r4, r3, r5
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r2, _0805AD78 @ =0x000002AE
	adds r1, r3, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805AD46
	mov r5, r12
	strb r5, [r4, #0x00]
_0805AD46:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	ldr r2, _0805AD7C @ =0x000002D2
	adds r0, r6, r2
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r5, _0805AD80 @ =0x000002AD
	adds r0, r3, r5
	strb r1, [r0, #0x00]
	ldr r1, _0805AD84 @ =0x000002AA
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	subs r2, #0x26
	adds r0, r3, r2
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805AE16
	.byte 0x00, 0x00
_0805AD74: .4byte 0x000002AF
_0805AD78: .4byte 0x000002AE
_0805AD7C: .4byte 0x000002D2
_0805AD80: .4byte 0x000002AD
_0805AD84: .4byte 0x000002AA
_0805AD88:
	movs r5, #0xAC
	lsls r5, r5, #0x02
	adds r4, r3, r5
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805ADB8
	ldr r0, _0805ADB4 @ =0x000002AF
	adds r1, r3, r0
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805ADDE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805ADDE
	.byte 0x00, 0x00
_0805ADB4: .4byte 0x000002AF
_0805ADB8:
	ldr r1, _0805AE28 @ =0x000002AF
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r5, _0805AE2C @ =0x000002AE
	adds r3, r3, r5
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805ADDE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805ADDE:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	ldr r0, _0805AE28 @ =0x000002AF
	adds r3, r2, r0
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldr r5, _0805AE30 @ =0x000002D2
	adds r0, r6, r5
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	subs r5, #0x25
	adds r0, r2, r5
	strb r1, [r0, #0x00]
	ldr r1, _0805AE34 @ =0x000002AA
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	subs r5, #0x01
	adds r2, r2, r5
	ldrb r2, [r2, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805AE16:
	ldr r4, _0805AE38 @ =0x000002B2
	adds r0, r6, r4
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805B120
	b _0805AEA0
	.byte 0x00, 0x00
_0805AE28: .4byte 0x000002AF
_0805AE2C: .4byte 0x000002AE
_0805AE30: .4byte 0x000002D2
_0805AE34: .4byte 0x000002AA
_0805AE38: .4byte 0x000002B2
_0805AE3C:
	ldr r0, _0805AE60 @ =0x000002AF
	adds r4, r3, r0
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r2, _0805AE64 @ =0x000002AE
	adds r1, r3, r2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805AE68
	mov r4, r12
	strb r4, [r5, #0x00]
	b _0805AEA0
	.byte 0x00, 0x00
_0805AE60: .4byte 0x000002AF
_0805AE64: .4byte 0x000002AE
_0805AE68:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	ldr r5, _0805AEBC @ =0x000002D2
	adds r0, r6, r5
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldr r2, _0805AEC0 @ =0x000002AD
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	subs r5, #0x28
	adds r0, r3, r5
	ldrh r1, [r0, #0x00]
	subs r2, #0x01
	adds r0, r3, r2
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	ldr r4, _0805AEC4 @ =0x000002B2
	adds r0, r6, r4
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805B120
_0805AEA0:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x0F
	bhi _0805AEB0
	b _0805ACB8
_0805AEB0:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805AEBC: .4byte 0x000002D2
_0805AEC0: .4byte 0x000002AD
_0805AEC4: .4byte 0x000002B2
	thumb_func_start sub_805AEC8
sub_805AEC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r12, r0
	movs r1, #0xEE
	lsls r1, r1, #0x03
	add r1, r12
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r7, #0x00
	ldr r0, _0805AF94 @ =0x083AFC5C
	mov r10, r0
	movs r1, #0x4C
	mov r9, r1
	movs r3, #0x00
	ldr r2, _0805AF98 @ =0x000002B2
	add r2, r12
	mov r8, r2
	ldr r5, _0805AF9C @ =0x000002D2
	add r5, r12
_0805AEF6:
	mov r2, r9
	muls r2, r7
	mov r4, r12
	adds r1, r4, r2
	movs r4, #0xAA
	lsls r4, r4, #0x02
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x02
	adds r0, r1, r4
	strh r3, [r0, #0x00]
	adds r4, #0x02
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	adds r4, #0x01
	adds r0, r1, r4
	strb r3, [r0, #0x00]
	movs r0, #0xAC
	lsls r0, r0, #0x02
	adds r1, r1, r0
	strb r3, [r1, #0x00]
	movs r4, #0x00
	adds r6, r7, #0x1
_0805AF30:
	lsls r0, r4, #0x01
	adds r0, r0, r2
	mov r7, r8
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	adds r0, r5, r0
	strh r3, [r0, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x0F
	bls _0805AF30
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x0F
	bls _0805AEF6
	mov r1, r12
	ldrh r0, [r1, #0x1E]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x02
	add r1, r10
	ldrb r0, [r1, #0x04]
	lsls r0, r0, #0x02
	ldr r2, _0805AFA0 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805B054
	movs r7, #0x00
_0805AF6E:
	lsls r0, r7, #0x03
	ldr r4, [sp, #0x000]
	adds r3, r0, r4
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805AFA4
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	add r0, r12
	movs r2, #0xAA
	lsls r2, r2, #0x02
	adds r0, r0, r2
	movs r4, #0x00
	strb r4, [r0, #0x00]
	adds r6, r7, #0x1
	b _0805B03E
_0805AF94: .4byte 0x083AFC5C
_0805AF98: .4byte 0x000002B2
_0805AF9C: .4byte 0x000002D2
_0805AFA0: .4byte 0x083B283C
_0805AFA4:
	movs r0, #0x4C
	adds r2, r7, #0x0
	muls r2, r0
	add r2, r12
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	movs r4, #0xAA
	lsls r4, r4, #0x02
	adds r1, r2, r4
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r4, #0x02
	adds r1, r2, r4
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	movs r1, #0xAB
	lsls r1, r1, #0x02
	adds r2, r2, r1
	strb r0, [r2, #0x00]
	ldr r5, [r3, #0x04]
	movs r4, #0x00
	adds r6, r7, #0x1
	movs r0, #0x4C
	adds r2, r7, #0x0
	muls r2, r0
	mov r10, r2
	ldr r0, _0805B064 @ =0x000002B2
	add r0, r12
	mov r9, r0
	adds r1, #0x26
	add r1, r12
	mov r8, r1
_0805AFF0:
	adds r3, r4, #0x0
	lsls r2, r3, #0x01
	add r2, r10
	mov r0, r9
	adds r4, r0, r2
	lsls r1, r3, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	add r2, r8
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B068 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r3, r3, #0x02
	adds r3, r3, r5
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805AFF0
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	add r0, r12
	ldr r2, _0805B06C @ =0x000002AE
	adds r1, r0, r2
	strb r4, [r1, #0x00]
	ldr r4, _0805B070 @ =0x000002AF
	adds r1, r0, r4
	movs r2, #0x00
	strb r2, [r1, #0x00]
	adds r4, #0x01
	adds r0, r0, r4
	strb r2, [r0, #0x00]
_0805B03E:
	adds r1, r7, #0x0
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x03
	ldr r0, [sp, #0x000]
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805AF6E
_0805B054:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B064: .4byte 0x000002B2
_0805B068: .4byte 0x00007FFF
_0805B06C: .4byte 0x000002AE
_0805B070: .4byte 0x000002AF
	thumb_func_start sub_805B074
sub_805B074:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	movs r5, #0x00
	ldr r0, _0805B110 @ =0x0000076C
	adds r2, r6, r0
	movs r3, #0xFF
_0805B082:
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	bls _0805B082
	movs r1, #0xED
	lsls r1, r1, #0x03
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B108
	ldr r2, _0805B114 @ =0x083AFC5C
	ldrh r1, [r6, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x05]
	ldr r1, _0805B118 @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r7, [r0, #0x00]
	cmp r7, #0x00
	beq _0805B108
	movs r5, #0x00
_0805B0BC:
	adds r4, r5, #0x0
	lsls r0, r4, #0x02
	adds r2, r0, r7
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0805B0F4
	movs r3, #0xED
	lsls r3, r3, #0x03
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	ldrb r2, [r2, #0x01]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r2, r1
	ldr r1, _0805B11C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	ldr r2, _0805B110 @ =0x0000076C
	adds r1, r6, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805B0F4:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x02
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B0BC
_0805B108:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B110: .4byte 0x0000076C
_0805B114: .4byte 0x083AFC5C
_0805B118: .4byte 0x083B79C4
_0805B11C: .4byte 0x0000FFFF
	thumb_func_start sub_805B120
sub_805B120:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805B150 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	movs r3, #0xC0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0805B150: .4byte 0x08940C9C
	thumb_func_start sub_805B154
sub_805B154:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x0F
	mov r9, r1
_0805B166:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	adds r5, r3, #0x0
	adds r5, #0xAC
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805B188
	cmp r0, #0x10
	bgt _0805B182
	b _0805B2FE
_0805B182:
	cmp r0, #0x20
	beq _0805B1A6
	b _0805B2FE
_0805B188:
	adds r1, r3, #0x0
	adds r1, #0xB1
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805B19A
	b _0805B2FE
_0805B19A:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805B2FE
_0805B1A6:
	mov r0, r9
	ands r0, r1
	movs r1, #0x00
	mov r12, r1
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805B214
	cmp r2, #0x01
	bgt _0805B1C4
	cmp r2, #0x00
	beq _0805B1CA
	b _0805B2FE
_0805B1C4:
	cmp r2, #0x02
	beq _0805B2A6
	b _0805B2FE
_0805B1CA:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805B1EA
	mov r0, r12
	strb r0, [r4, #0x00]
_0805B1EA:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805B296
_0805B214:
	adds r4, r3, #0x0
	adds r4, #0xB4
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805B23C
	adds r1, r3, #0x0
	adds r1, #0xB3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805B260
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805B260
_0805B23C:
	adds r2, r3, #0x0
	adds r2, #0xB3
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r3, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805B260
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805B260:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	adds r3, r2, #0x0
	adds r3, #0xB3
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805B296:
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805C9A4
	b _0805B2FE
_0805B2A6:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805B2C8
	mov r1, r12
	strb r1, [r5, #0x00]
	b _0805B2FE
_0805B2C8:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805C9A4
_0805B2FE:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x0F
	bhi _0805B30E
	b _0805B166
_0805B30E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805B31C
sub_805B31C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r7, #0x00
	ldr r0, _0805B3C8 @ =0x03000DD0
	mov r8, r0
	ldr r1, _0805B3CC @ =0x083B283C
	mov r10, r1
	movs r5, #0x4C
	movs r3, #0x00
	mov r0, r9
	adds r0, #0xB6
	str r0, [sp, #0x004]
	mov r1, r9
	adds r1, #0xD6
	str r1, [sp, #0x008]
_0805B344:
	adds r1, r7, #0x0
	muls r1, r5
	mov r0, r9
	adds r2, r0, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r6, r7, #0x1
	adds r4, r1, #0x0
_0805B370:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	ldr r7, [sp, #0x004]
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805B370
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x0F
	bls _0805B344
	mov r3, r8
	ldrb r0, [r3, #0x07]
	lsls r0, r0, #0x02
	add r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805B47C
	movs r7, #0x00
_0805B3A4:
	lsls r0, r7, #0x03
	ldr r1, [sp, #0x000]
	adds r3, r0, r1
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805B3D0
	movs r3, #0x4C
	adds r0, r7, #0x0
	muls r0, r3
	add r0, r9
	adds r0, #0xAC
	movs r1, #0x00
	strb r1, [r0, #0x00]
	adds r6, r7, #0x1
	b _0805B466
	.byte 0x00, 0x00
_0805B3C8: .4byte 0x03000DD0
_0805B3CC: .4byte 0x083B283C
_0805B3D0:
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	mov r1, r9
	adds r2, r1, r0
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	adds r1, r2, #0x0
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	ldr r5, [r3, #0x04]
	movs r2, #0x00
	adds r6, r7, #0x1
	movs r0, #0x4C
	adds r3, r7, #0x0
	muls r3, r0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	mov r10, r0
	ldr r1, [sp, #0x004]
	mov r12, r1
_0805B414:
	adds r3, r2, #0x0
	lsls r2, r3, #0x01
	add r2, r8
	mov r0, r12
	adds r4, r0, r2
	lsls r1, r3, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [sp, #0x008]
	adds r2, r0, r2
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B48C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r3, r3, #0x02
	adds r3, r3, r5
	ldrh r1, [r3, #0x02]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0805B414
	movs r1, #0x4C
	adds r0, r7, #0x0
	muls r0, r1
	mov r3, r9
	adds r1, r3, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r2, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	strb r1, [r0, #0x00]
_0805B466:
	adds r1, r7, #0x0
	lsls r0, r6, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x03
	ldr r3, [sp, #0x000]
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B3A4
_0805B47C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805B48C: .4byte 0x00007FFF
	thumb_func_start sub_805B490
sub_805B490:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r7, #0x00
	adds r0, #0xAC
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B4C4
	movs r1, #0x4C
_0805B4AC:
	adds r0, r7, #0x1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r7, #0x0
	muls r0, r1
	adds r0, r6, r0
	adds r0, #0xAC
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805B4C4
	cmp r7, #0x0F
	bls _0805B4AC
_0805B4C4:
	cmp r7, #0x0F
	bhi _0805B574
	ldr r0, _0805B584 @ =0x03000DD0
	ldrb r0, [r0, #0x07]
	ldr r1, _0805B588 @ =0x083B283C
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0805B574
	lsls r0, r7, #0x03
	adds r0, r0, r4
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805B574
	movs r0, #0x4C
	adds r3, r7, #0x0
	muls r3, r0
	adds r0, r6, r3
	mov r12, r0
	lsls r2, r2, #0x03
	adds r2, r2, r4
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	mov r1, r12
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	ldr r5, [r2, #0x04]
	movs r4, #0x00
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0x08
	mov r10, r0
	movs r0, #0xB6
	adds r0, r0, r6
	mov r12, r0
_0805B52E:
	adds r2, r4, #0x0
	lsls r3, r2, #0x01
	add r3, r8
	mov r0, r12
	adds r4, r0, r3
	lsls r1, r2, #0x02
	adds r1, r1, r5
	ldrh r0, [r1, #0x00]
	strh r0, [r4, #0x00]
	add r3, r9
	ldrh r1, [r1, #0x02]
	ldr r0, _0805B58C @ =0x00007FFF
	ands r0, r1
	strh r0, [r3, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r2, r2, #0x02
	adds r2, r2, r5
	ldrh r1, [r2, #0x02]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0805B52E
	movs r0, #0x4C
	muls r0, r7
	adds r0, r6, r0
	adds r2, r0, #0x0
	adds r2, #0xB2
	movs r1, #0x00
	strb r4, [r2, #0x00]
	adds r2, #0x01
	strb r1, [r2, #0x00]
	adds r0, #0xB4
	strb r1, [r0, #0x00]
_0805B574:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B584: .4byte 0x03000DD0
_0805B588: .4byte 0x083B283C
_0805B58C: .4byte 0x00007FFF
	thumb_func_start sub_805B590
sub_805B590:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _0805B608 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805B600
	ldr r1, _0805B60C @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r4, #0x00
	ldr r6, _0805B610 @ =0x00007FFF
_0805B5A8:
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r2, [r0, #0x10]
	adds r0, r6, #0x0
	ands r0, r2
	cmp r0, r6
	beq _0805B5E6
	lsls r2, r2, #0x11
	ldr r0, _0805B614 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r2, #0x01
	movs r1, #0xE4
	lsls r1, r1, #0x13
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0805B5E6
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_805B618
_0805B5E6:
	adds r1, r4, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B5A8
_0805B600:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B608: .4byte 0x03000DD0
_0805B60C: .4byte 0x083B7108
_0805B610: .4byte 0x00007FFF
_0805B614: .4byte 0x03000FC0
	thumb_func_start sub_805B618
sub_805B618:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _0805B6AC @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805B6A6
	ldr r1, _0805B6B0 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r4, r0, r1
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0805B646
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_805B6C4
_0805B646:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0805B654
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_805B6C4
_0805B654:
	ldr r2, [r4, #0x08]
	cmp r2, #0x00
	beq _0805B662
	adds r0, r5, #0x0
	movs r1, #0x02
	bl sub_805B6C4
_0805B662:
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	beq _0805B66E
	adds r0, r5, #0x0
	bl sub_805C824
_0805B66E:
	ldr r1, _0805B6B4 @ =0x00000579
	adds r0, r5, r1
	movs r6, #0x01
	strb r6, [r0, #0x00]
	ldrh r2, [r4, #0x10]
	ldr r1, _0805B6B8 @ =0x00007FFF
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	beq _0805B6A0
	lsls r2, r2, #0x11
	ldr r0, _0805B6BC @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	lsrs r2, r2, #0x01
	movs r1, #0xE4
	lsls r1, r1, #0x13
	adds r2, r2, r1
	lsrs r2, r2, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
_0805B6A0:
	ldr r1, _0805B6C0 @ =0x00000599
	adds r0, r5, r1
	strb r6, [r0, #0x00]
_0805B6A6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805B6AC: .4byte 0x03000DD0
_0805B6B0: .4byte 0x083B7108
_0805B6B4: .4byte 0x00000579
_0805B6B8: .4byte 0x00007FFF
_0805B6BC: .4byte 0x03000FC0
_0805B6C0: .4byte 0x00000599
	thumb_func_start sub_805B6C4
sub_805B6C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r7, r0, #0x0
	str r2, [sp, #0x004]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x08
	str r1, [sp, #0x008]
	movs r1, #0xFF
	adds r2, r1, #0x0
	ands r2, r0
	str r2, [sp, #0x00C]
	ldr r3, [sp, #0x004]
	ldrh r0, [r3, #0x02]
	lsrs r2, r0, #0x08
	str r2, [sp, #0x010]
	adds r3, r1, #0x0
	ands r3, r0
	str r3, [sp, #0x014]
	mov r0, r8
	lsls r1, r0, #0x01
	adds r0, r7, #0x0
	adds r0, #0x54
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0x4E
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	movs r1, #0x02
	mov r9, r1
	movs r3, #0x00
	ldr r2, [sp, #0x014]
	cmp r3, r2
	bcs _0805B7DE
	mov r0, r8
	lsls r0, r0, #0x0B
	str r0, [sp, #0x020]
_0805B730:
	ldr r1, [sp, #0x00C]
	adds r2, r1, r3
	mov r0, r8
	lsls r1, r0, #0x01
	adds r0, r7, #0x0
	adds r0, #0x2A
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	muls r0, r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x00
	adds r5, r2, #0x0
	adds r3, #0x01
	str r3, [sp, #0x024]
	ldr r2, [sp, #0x010]
	cmp r4, r2
	bcs _0805B7D2
	adds r6, r7, #0x0
	adds r6, #0x98
_0805B762:
	mov r3, r9
	lsls r0, r3, #0x01
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	cmp r2, #0x00
	beq _0805B7BC
	mov r3, r10
	adds r1, r3, r4
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r0, r1, r0
	strh r2, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0805B7BC
	ldr r2, [sp, #0x018]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	subs r0, r2, #0x1
	cmp r5, r0
	blt _0805B7BC
	adds r0, #0x0C
	cmp r5, r0
	bgt _0805B7BC
	ldr r3, [sp, #0x008]
	adds r2, r3, r4
	ldr r3, [sp, #0x01C]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	subs r0, r3, #0x1
	cmp r2, r0
	blt _0805B7BC
	adds r0, #0x11
	cmp r2, r0
	bgt _0805B7BC
	adds r3, r5, #0x0
	ldrh r0, [r1, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r1, r8
	bl sub_8058898
_0805B7BC:
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x010]
	cmp r4, r0
	bcc _0805B762
_0805B7D2:
	ldr r1, [sp, #0x024]
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [sp, #0x014]
	cmp r3, r2
	bcc _0805B730
_0805B7DE:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805B7F0
sub_805B7F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r1, _0805B89C @ =0x0000056C
	adds r6, r0, r1
	movs r2, #0x00
	strb r2, [r6, #0x00]
	ldr r3, _0805B8A0 @ =0x0000056D
	adds r1, r0, r3
	strb r2, [r1, #0x00]
	movs r1, #0xAE
	lsls r1, r1, #0x03
	adds r5, r0, r1
	movs r1, #0x00
	strh r2, [r5, #0x00]
	adds r3, #0x05
	adds r3, r3, r0
	mov r12, r3
	strh r2, [r3, #0x00]
	ldr r3, _0805B8A4 @ =0x0000056E
	adds r7, r0, r3
	strb r1, [r7, #0x00]
	ldr r1, _0805B8A8 @ =0x00000574
	adds r3, r0, r1
	str r2, [r3, #0x00]
	ldr r0, _0805B8AC @ =0x02000052
	mov r8, r0
	strh r2, [r0, #0x00]
	ldr r1, _0805B8B0 @ =0x02000050
	mov r9, r1
	strh r2, [r1, #0x00]
	ldr r0, _0805B8B4 @ =0x03000DD0
	ldrb r0, [r0, #0x09]
	ldr r1, _0805B8B8 @ =0x083B78AC
	lsls r2, r0, #0x03
	adds r0, r1, #0x4
	adds r4, r2, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805B88E
	adds r2, r2, r1
	ldrb r0, [r2, #0x01]
	lsrs r0, r0, #0x04
	adds r0, #0x80
	strb r0, [r6, #0x00]
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x1A
	lsls r1, r1, #0x08
	adds r1, #0x40
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	adds r0, r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	mov r1, r12
	strh r0, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	mov r3, r8
	strh r0, [r3, #0x00]
	ldrh r0, [r5, #0x00]
	mov r1, r9
	strh r0, [r1, #0x00]
_0805B88E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805B89C: .4byte 0x0000056C
_0805B8A0: .4byte 0x0000056D
_0805B8A4: .4byte 0x0000056E
_0805B8A8: .4byte 0x00000574
_0805B8AC: .4byte 0x02000052
_0805B8B0: .4byte 0x02000050
_0805B8B4: .4byte 0x03000DD0
_0805B8B8: .4byte 0x083B78AC
	thumb_func_start sub_805B8BC
sub_805B8BC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0805B904 @ =0x0000056C
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805B9BE
	ldr r4, _0805B908 @ =0x00000572
	adds r1, r5, r4
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0805B9B2
	ldrb r0, [r2, #0x00]
	movs r2, #0x03
	ands r2, r0
	cmp r2, #0x01
	bne _0805B94E
	ldr r0, _0805B90C @ =0x0000056D
	adds r4, r5, r0
	ldrb r0, [r4, #0x00]
	ands r2, r0
	cmp r2, #0x00
	beq _0805B91A
	ldr r2, _0805B910 @ =0x0000056E
	adds r1, r5, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0805B914
	adds r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B938
_0805B904: .4byte 0x0000056C
_0805B908: .4byte 0x00000572
_0805B90C: .4byte 0x0000056D
_0805B910: .4byte 0x0000056E
_0805B914:
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _0805B97C
_0805B91A:
	ldr r0, _0805B940 @ =0x0000056E
	adds r3, r5, r0
	ldrb r2, [r3, #0x00]
	ldr r1, _0805B944 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r2, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B948
	subs r0, r2, #0x1
	strb r0, [r3, #0x00]
_0805B938:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	b _0805B97C
_0805B940: .4byte 0x0000056E
_0805B944: .4byte 0x00000574
_0805B948:
	adds r0, r2, #0x1
	strb r0, [r3, #0x00]
	b _0805B97C
_0805B94E:
	cmp r2, #0x00
	bne _0805B97C
	ldr r4, _0805B970 @ =0x0000056E
	adds r2, r5, r4
	ldrb r3, [r2, #0x00]
	ldr r1, _0805B974 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x02]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0805B978
	movs r0, #0x00
	b _0805B97A
_0805B970: .4byte 0x0000056E
_0805B974: .4byte 0x00000574
_0805B978:
	adds r0, r3, #0x1
_0805B97A:
	strb r0, [r2, #0x00]
_0805B97C:
	ldr r2, _0805B9C4 @ =0x0000056E
	adds r3, r5, r2
	ldrb r0, [r3, #0x00]
	ldr r4, _0805B9C8 @ =0x00000574
	adds r2, r5, r4
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	lsrs r0, r0, #0x18
	subs r4, #0x02
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	ldr r4, _0805B9CC @ =0x02000052
	ldrb r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r1, r0, #0x16
	lsrs r1, r1, #0x1B
	lsls r1, r1, #0x08
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, r0, r1
	strh r0, [r4, #0x00]
_0805B9B2:
	ldr r0, _0805B9D0 @ =0x02000050
	movs r2, #0xAE
	lsls r2, r2, #0x03
	adds r1, r5, r2
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
_0805B9BE:
	pop {r4, r5}
	pop {r0}
	bx r0
_0805B9C4: .4byte 0x0000056E
_0805B9C8: .4byte 0x00000574
_0805B9CC: .4byte 0x02000052
_0805B9D0: .4byte 0x02000050
	thumb_func_start sub_805B9D4
sub_805B9D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r7, r0, #0x0
	movs r5, #0x00
	movs r0, #0xB0
	lsls r0, r0, #0x03
	adds r2, r7, r0
	movs r3, #0xFF
_0805B9E4:
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	orrs r1, r3
	strb r1, [r0, #0x00]
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x03
	bls _0805B9E4
	ldr r1, _0805BA68 @ =0x0000057C
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805BA5E
	ldr r0, _0805BA6C @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805BA70 @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _0805BA5E
	movs r5, #0x00
_0805BA12:
	adds r4, r5, #0x0
	lsls r0, r4, #0x02
	adds r2, r0, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0805BA4A
	ldr r3, _0805BA68 @ =0x0000057C
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	ldrb r2, [r2, #0x01]
	movs r3, #0xA0
	lsls r3, r3, #0x07
	adds r1, r3, #0x0
	orrs r2, r1
	ldr r1, _0805BA74 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r7, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805BA4A:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r0, r4, #0x02
	adds r0, r0, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805BA12
_0805BA5E:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805BA68: .4byte 0x0000057C
_0805BA6C: .4byte 0x03000DD0
_0805BA70: .4byte 0x083B79C4
_0805BA74: .4byte 0x0000FFFF
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x93, 0xB0, 0x00, 0x90, 0x09, 0x06
	.byte 0x09, 0x0E, 0x1B, 0x04, 0x1E, 0x0C, 0xBD, 0xF7, 0x8B, 0xFF, 0x17, 0x48, 0x00, 0x99, 0x88, 0x61
	.byte 0x00, 0x20, 0x08, 0x77, 0x70, 0x00, 0x80, 0x19, 0x00, 0x04, 0x00, 0x0C, 0x82, 0x46, 0x13, 0x4D
	.byte 0xA0, 0x24, 0xA4, 0x00, 0x12, 0x4A, 0x20, 0x1C, 0x01, 0x21, 0x00, 0x23, 0xBD, 0xF7, 0x7E, 0xF9
	.byte 0x28, 0x60, 0x10, 0x4D, 0x10, 0x4A, 0x20, 0x1C, 0x00, 0x21, 0x00, 0x23, 0xBD, 0xF7, 0x76, 0xF9
	.byte 0x28, 0x60, 0x0E, 0x49, 0x52, 0x46, 0x50, 0x00, 0x40, 0x18, 0x00, 0x88, 0xFF, 0x28, 0x00, 0xD1
	.byte 0x4F, 0xE1, 0x0B, 0x48, 0x0B, 0x4B, 0xC0, 0x18, 0x01, 0x78, 0x06, 0x20, 0x08, 0x40, 0x02, 0x28
	.byte 0x14, 0xD1, 0x09, 0x4B, 0x13, 0xE0, 0x00, 0x00, 0xB8, 0xC2, 0xCD, 0x08, 0x00, 0x0E, 0x00, 0x03
	.byte 0x10, 0x28, 0x1E, 0x08, 0x04, 0x0E, 0x00, 0x03, 0x18, 0x28, 0x1E, 0x08, 0xF0, 0x79, 0x3B, 0x08
	.byte 0x4C, 0x03, 0x00, 0x03, 0x88, 0x08, 0x00, 0x00, 0x08, 0x48, 0x8D, 0x08, 0x9D, 0x4B, 0x9E, 0x4A
	.byte 0x9E, 0x49, 0x31, 0x40, 0x48, 0x00, 0x40, 0x18, 0xC0, 0x00, 0x80, 0x18, 0x40, 0x79, 0x9C, 0x49
	.byte 0x40, 0x18, 0x00, 0x78, 0x80, 0x00, 0xC0, 0x18, 0x00, 0x68, 0x40, 0x08, 0x40, 0x00, 0x1C, 0x18
	.byte 0x20, 0x88, 0x1F, 0x23, 0x1D, 0x1C, 0x05, 0x40, 0xF8, 0x22, 0x92, 0x00, 0x16, 0x1C, 0x06, 0x40
	.byte 0x01, 0x96, 0xF8, 0x21, 0xC9, 0x01, 0x0E, 0x1C, 0x06, 0x40, 0x02, 0x96, 0x60, 0x88, 0x1E, 0x1C
	.byte 0x06, 0x40, 0x05, 0x96, 0x16, 0x1C, 0x06, 0x40, 0x06, 0x96, 0x0E, 0x1C, 0x06, 0x40, 0x07, 0x96
	.byte 0xA0, 0x88, 0x03, 0x40, 0x08, 0x93, 0x16, 0x1C, 0x06, 0x40, 0x09, 0x96, 0x01, 0x40, 0x0A, 0x91
	.byte 0x88, 0x49, 0x52, 0x46, 0x50, 0x00, 0x40, 0x18, 0x00, 0x88, 0x03, 0x90, 0x50, 0x46, 0x01, 0x30
	.byte 0x40, 0x00, 0x40, 0x18, 0x00, 0x88, 0x03, 0x9B, 0xC0, 0x1A, 0x00, 0x04, 0x00, 0x0C, 0x04, 0x90
	.byte 0x50, 0x46, 0x02, 0x30, 0x40, 0x00, 0x40, 0x18, 0x00, 0x88, 0x04, 0x9E, 0x80, 0x1B, 0x00, 0x04
	.byte 0x00, 0x0C, 0x82, 0x46, 0x00, 0x26, 0x18, 0x04, 0x00, 0x14, 0x86, 0x42, 0x0B, 0xDA, 0x7A, 0x4B
	.byte 0x02, 0x1C, 0x19, 0x68, 0x70, 0x00, 0x40, 0x18, 0x21, 0x88, 0x01, 0x80, 0x70, 0x1C, 0x00, 0x04
	.byte 0x06, 0x0C, 0x96, 0x42, 0xF5, 0xDB, 0x04, 0x98, 0x00, 0x04, 0x0B, 0x90, 0x00, 0x26, 0x11, 0x90
	.byte 0x51, 0x46, 0x09, 0x04, 0x12, 0x91, 0x00, 0x28, 0x4A, 0xDD, 0x70, 0x49, 0x70, 0x48, 0x09, 0x1A
	.byte 0x8A, 0x46, 0x0C, 0x95, 0x05, 0x9A, 0x52, 0x1B, 0x0D, 0x92, 0x6E, 0x4B, 0x1A, 0x68, 0x52, 0x44
	.byte 0x0D, 0x99, 0x08, 0x1C, 0x70, 0x43, 0x0B, 0x9B, 0x1D, 0x14, 0x29, 0x1C, 0x7E, 0xF1, 0x34, 0xFF
	.byte 0x0C, 0x99, 0x09, 0x18, 0x1F, 0x20, 0x01, 0x40, 0x89, 0x46, 0x66, 0x4B, 0x1A, 0x68, 0x52, 0x44
	.byte 0x01, 0x9C, 0x06, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C, 0x7E, 0xF1, 0x25, 0xFF, 0x24, 0x18
	.byte 0xA0, 0x46, 0xF8, 0x22, 0x92, 0x00, 0x10, 0x1C, 0x43, 0x46, 0x03, 0x40, 0x98, 0x46, 0x5D, 0x48
	.byte 0x02, 0x68, 0x52, 0x44, 0x02, 0x9C, 0x07, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C, 0x7E, 0xF1
	.byte 0x13, 0xFF, 0x27, 0x18, 0xF8, 0x22, 0xD2, 0x01, 0x10, 0x1C, 0x07, 0x40, 0x03, 0x9B, 0x19, 0x04
	.byte 0x09, 0x14, 0x71, 0x18, 0x50, 0x48, 0x00, 0x68, 0x49, 0x00, 0x09, 0x18, 0x48, 0x46, 0x42, 0x46
	.byte 0x10, 0x43, 0x38, 0x43, 0x08, 0x80, 0x70, 0x1C, 0x00, 0x04, 0x06, 0x0C, 0xAE, 0x42, 0xBC, 0xDB
	.byte 0x12, 0x9B, 0x0E, 0x93, 0x00, 0x26, 0x00, 0x2B, 0x4E, 0xDD, 0x48, 0x49, 0x48, 0x48, 0x09, 0x1A
	.byte 0x8A, 0x46, 0x05, 0x98, 0x0F, 0x90, 0x08, 0x99, 0x09, 0x1A, 0x10, 0x91, 0x45, 0x4B, 0x1A, 0x68
	.byte 0x52, 0x44, 0x10, 0x99, 0x08, 0x1C, 0x70, 0x43, 0x0E, 0x9B, 0x1D, 0x14, 0x29, 0x1C, 0x7E, 0xF1
	.byte 0xE3, 0xFE, 0x0F, 0x99, 0x09, 0x18, 0x1F, 0x20, 0x01, 0x40, 0x89, 0x46, 0x3D, 0x4B, 0x1A, 0x68
	.byte 0x52, 0x44, 0x06, 0x9C, 0x09, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C, 0x7E, 0xF1, 0xD4, 0xFE
	.byte 0x24, 0x18, 0xA0, 0x46, 0xF8, 0x22, 0x92, 0x00, 0x10, 0x1C, 0x43, 0x46, 0x03, 0x40, 0x98, 0x46
	.byte 0x34, 0x48, 0x02, 0x68, 0x52, 0x44, 0x07, 0x9C, 0x0A, 0x99, 0x08, 0x1B, 0x70, 0x43, 0x29, 0x1C
	.byte 0x7E, 0xF1, 0xC2, 0xFE, 0x27, 0x18, 0xF8, 0x22, 0xD2, 0x01, 0x10, 0x1C, 0x07, 0x40, 0x11, 0x9B
	.byte 0x19, 0x14, 0x03, 0x9A, 0x10, 0x04, 0x00, 0x14, 0x71, 0x18, 0x09, 0x18, 0x26, 0x48, 0x00, 0x68
	.byte 0x49, 0x00, 0x09, 0x18, 0x48, 0x46, 0x43, 0x46, 0x18, 0x43, 0x38, 0x43, 0x08, 0x80, 0x70, 0x1C
	.byte 0x00, 0x04, 0x06, 0x0C, 0xAE, 0x42, 0xB9, 0xDB, 0x11, 0x99, 0x08, 0x14, 0x80, 0x19, 0x9F, 0x28
	.byte 0x15, 0xDC, 0x04, 0x9A, 0xB0, 0x18, 0x00, 0x04, 0x02, 0x0C, 0x9F, 0x2A, 0x0F, 0xD8, 0x1A, 0x4B
	.byte 0x46, 0x46, 0x48, 0x46, 0x06, 0x43, 0x37, 0x43, 0x38, 0x04, 0x04, 0x14, 0x18, 0x68, 0x51, 0x00
	.byte 0x09, 0x18, 0x0C, 0x80, 0x50, 0x1C, 0x00, 0x04, 0x02, 0x0C, 0x9F, 0x2A, 0xF6, 0xD9, 0x00, 0x26
	.byte 0x15, 0x4C, 0x11, 0x4B, 0x22, 0x68, 0x71, 0x00, 0x8A, 0x18, 0x18, 0x68, 0x09, 0x18, 0x08, 0x88
	.byte 0x10, 0x80, 0x70, 0x1C, 0x00, 0x04, 0x06, 0x0C, 0x9F, 0x2E, 0xF3, 0xD9, 0x01, 0x20, 0x00, 0x99
	.byte 0x08, 0x77, 0x00, 0x98, 0x13, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x30, 0x87, 0x8C, 0x08, 0xD4, 0x78, 0x3A, 0x08, 0xFF, 0x7F, 0x00, 0x00
	.byte 0x68, 0xAD, 0x3A, 0x08, 0xF0, 0x79, 0x3B, 0x08, 0x00, 0x0E, 0x00, 0x03, 0x2C, 0x83, 0x19, 0x08
	.byte 0x20, 0x82, 0x19, 0x08, 0x38, 0x10, 0x00, 0x03, 0x04, 0x0E, 0x00, 0x03, 0xF0, 0xB5, 0x4F, 0x46
	.byte 0x46, 0x46, 0xC0, 0xB4, 0x07, 0x1C, 0x3B, 0x48, 0x3C, 0x18, 0x23, 0x78, 0x00, 0x2B, 0x6B, 0xD1
	.byte 0x39, 0x48, 0xC2, 0x7A, 0x1F, 0x20, 0x02, 0x40, 0x38, 0x48, 0x92, 0x00, 0x12, 0x18, 0x10, 0x78
	.byte 0x80, 0x07, 0x80, 0x0F, 0x36, 0x49, 0xC9, 0x19, 0x88, 0x46, 0x08, 0x70, 0x50, 0x78, 0xC0, 0x08
	.byte 0x34, 0x4D, 0x79, 0x19, 0x08, 0x80, 0x10, 0x88, 0x40, 0x05, 0x00, 0x0F, 0x02, 0x35, 0x79, 0x19
	.byte 0x08, 0x80, 0x91, 0x78, 0x06, 0x3D, 0x78, 0x19, 0x01, 0x70, 0xD1, 0x78, 0x01, 0x35, 0x78, 0x19
	.byte 0x01, 0x70, 0x10, 0x78, 0x40, 0x06, 0x00, 0x0F, 0x01, 0x35, 0x79, 0x19, 0x08, 0x70, 0x10, 0x78
	.byte 0x40, 0x07, 0xC0, 0x0F, 0x28, 0x4A, 0xB9, 0x18, 0x08, 0x70, 0x06, 0x35, 0x78, 0x19, 0x03, 0x80
	.byte 0x01, 0x20, 0x20, 0x70, 0x25, 0x48, 0x81, 0x46, 0xA0, 0x24, 0xE4, 0x00, 0x24, 0x4A, 0x20, 0x1C
	.byte 0x01, 0x21, 0x00, 0x23, 0xBC, 0xF7, 0xBA, 0xFF, 0x49, 0x46, 0x08, 0x60, 0x21, 0x4D, 0x22, 0x4A
	.byte 0x20, 0x1C, 0x00, 0x21, 0x00, 0x23, 0xBC, 0xF7, 0xB1, 0xFF, 0x28, 0x60, 0x00, 0x23, 0x3E, 0x1C
	.byte 0x5A, 0x36, 0x3D, 0x1C, 0x60, 0x35, 0x44, 0x46, 0xC8, 0x46, 0x40, 0x46, 0x02, 0x68, 0x99, 0x00
	.byte 0x8A, 0x18, 0x18, 0x48, 0x00, 0x68, 0x09, 0x18, 0x20, 0x78, 0x40, 0x00, 0x30, 0x18, 0x00, 0x88
	.byte 0x08, 0x80, 0x10, 0x80, 0x20, 0x78, 0x40, 0x00, 0x28, 0x18, 0x00, 0x88, 0x48, 0x80, 0x50, 0x80
	.byte 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0x9F, 0x2B, 0xE7, 0xD9, 0x38, 0x1C, 0x00, 0xF0, 0x5A, 0xF9
	.byte 0x0E, 0x48, 0x00, 0x21, 0xCD, 0xF7, 0xF4, 0xFC, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x84, 0x05, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x58, 0x86, 0x3B, 0x08
	.byte 0x85, 0x05, 0x00, 0x00, 0x8A, 0x05, 0x00, 0x00, 0x97, 0x05, 0x00, 0x00, 0x08, 0x0E, 0x00, 0x03
	.byte 0x20, 0x28, 0x1E, 0x08, 0x0C, 0x0E, 0x00, 0x03, 0x28, 0x28, 0x1E, 0x08, 0x45, 0xC6, 0x05, 0x08
	thumb_func_start sub_805BED8
sub_805BED8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, _0805BFC4 @ =0x00000584
	adds r6, r7, r0
	ldrb r5, [r6, #0x00]
	cmp r5, #0x00
	bne _0805BFB6
	ldr r1, _0805BFC8 @ =0x00000585
	adds r1, r1, r7
	mov r8, r1
	movs r2, #0x02
	strb r2, [r1, #0x00]
	adds r0, #0x06
	adds r1, r7, r0
	movs r4, #0x00
	movs r3, #0x03
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _0805BFCC @ =0x0000058C
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x03
	adds r1, r7, r0
	movs r0, #0x06
	strh r0, [r1, #0x00]
	ldr r1, _0805BFD0 @ =0x00000592
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	subs r1, #0x0A
	adds r0, r7, r1
	strb r2, [r0, #0x00]
	ldr r0, _0805BFD4 @ =0x00000596
	adds r1, r7, r0
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _0805BFD8 @ =0x0000058E
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r1, #0x06
	adds r0, r7, r1
	strh r5, [r0, #0x00]
	adds r1, #0x03
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	adds r1, #0x01
	adds r0, r7, r1
	strb r4, [r0, #0x00]
	ldr r0, _0805BFDC @ =0x03000E08
	mov r9, r0
	movs r4, #0xA0
	lsls r4, r4, #0x03
	ldr r2, _0805BFE0 @ =0x081E2820
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r5, _0805BFE4 @ =0x03000E0C
	ldr r2, _0805BFE8 @ =0x081E2828
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r3, #0x00
	adds r6, r7, #0x0
	adds r6, #0x5A
	adds r5, r7, #0x0
	adds r5, #0x60
	mov r4, r8
	mov r8, r9
_0805BF78:
	mov r0, r8
	ldr r2, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r2, r1, r2
	ldr r0, _0805BFE4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r6, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9F
	bls _0805BF78
	adds r0, r7, #0x0
	bl sub_805C14C
	ldr r0, _0805BFEC @ =0x0805C5F5
	movs r1, #0x00
	bl sub_8029888
_0805BFB6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805BFC4: .4byte 0x00000584
_0805BFC8: .4byte 0x00000585
_0805BFCC: .4byte 0x0000058C
_0805BFD0: .4byte 0x00000592
_0805BFD4: .4byte 0x00000596
_0805BFD8: .4byte 0x0000058E
_0805BFDC: .4byte 0x03000E08
_0805BFE0: .4byte 0x081E2820
_0805BFE4: .4byte 0x03000E0C
_0805BFE8: .4byte 0x081E2828
_0805BFEC: .4byte sub_805C5F4
	thumb_func_start sub_805BFF0
sub_805BFF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, _0805C08C @ =0x00000584
	adds r6, r7, r0
	ldrb r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805C004
	b _0805C122
_0805C004:
	ldr r1, _0805C090 @ =0x00000585
	adds r5, r7, r1
	movs r2, #0x02
	strb r2, [r5, #0x00]
	adds r0, #0x06
	adds r1, r7, r0
	movs r0, #0x00
	mov r12, r0
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _0805C094 @ =0x0000058C
	adds r0, r7, r1
	movs r3, #0x02
	strh r2, [r0, #0x00]
	movs r2, #0xB2
	lsls r2, r2, #0x03
	adds r1, r7, r2
	movs r0, #0x06
	strh r0, [r1, #0x00]
	ldr r0, _0805C098 @ =0x00000592
	adds r1, r7, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x03
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	adds r2, #0x06
	adds r1, r7, r2
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _0805C09C @ =0x0000058E
	adds r0, r7, r1
	strh r4, [r0, #0x00]
	subs r2, #0x02
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	adds r1, #0x09
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r8, r1
	cmp r0, #0x97
	bgt _0805C0A8
	ldr r1, _0805C0A0 @ =0x00000586
	adds r0, r7, r1
	mov r2, r12
	strb r2, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	ldr r2, _0805C0A4 @ =0x00000587
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	b _0805C0B8
_0805C08C: .4byte 0x00000584
_0805C090: .4byte 0x00000585
_0805C094: .4byte 0x0000058C
_0805C098: .4byte 0x00000592
_0805C09C: .4byte 0x0000058E
_0805C0A0: .4byte 0x00000586
_0805C0A4: .4byte 0x00000587
_0805C0A8:
	ldr r1, _0805C12C @ =0x00000586
	adds r0, r7, r1
	movs r1, #0xA0
	strb r1, [r0, #0x00]
	ldr r2, _0805C130 @ =0x00000587
	adds r0, r7, r2
	mov r1, r12
	strb r1, [r0, #0x00]
_0805C0B8:
	ldr r6, _0805C134 @ =0x03000E08
	movs r4, #0xA0
	lsls r4, r4, #0x03
	ldr r2, _0805C138 @ =0x081E2820
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	ldr r5, _0805C13C @ =0x03000E0C
	ldr r2, _0805C140 @ =0x081E2828
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r3, #0x00
	adds r5, r7, #0x0
	adds r5, #0x5A
	ldr r2, _0805C144 @ =0x00000585
	adds r4, r7, r2
_0805C0E6:
	ldr r2, [r6, #0x00]
	lsls r1, r3, #0x02
	adds r2, r1, r2
	ldr r0, _0805C13C @ =0x03000E0C
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9F
	bls _0805C0E6
	adds r0, r7, #0x0
	bl sub_805C14C
	ldr r0, _0805C148 @ =0x0805C5F5
	movs r1, #0x00
	bl sub_8029888
_0805C122:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C12C: .4byte 0x00000586
_0805C130: .4byte 0x00000587
_0805C134: .4byte 0x03000E08
_0805C138: .4byte 0x081E2820
_0805C13C: .4byte 0x03000E0C
_0805C140: .4byte 0x081E2828
_0805C144: .4byte 0x00000585
_0805C148: .4byte sub_805C5F4
	thumb_func_start sub_805C14C
sub_805C14C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r1, _0805C238 @ =0x00000585
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r2, [r0, r3]
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r0, [r0, r5]
	lsls r0, r0, #0x10
	adds r2, r2, r0
	ldr r0, _0805C23C @ =0x03000E08
	ldr r1, [r0, #0x00]
	movs r3, #0x00
_0805C180:
	lsls r0, r3, #0x02
	adds r0, r0, r1
	str r2, [r0, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x9F
	bls _0805C180
	ldr r7, _0805C240 @ =0x0000058E
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	mov r9, r0
	ldr r1, _0805C244 @ =0x00000594
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x02
	str r0, [sp, #0x000]
	ldr r2, _0805C248 @ =0x00000597
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805C258
	ldr r3, _0805C24C @ =0x00000586
	adds r0, r4, r3
	ldrb r3, [r0, #0x00]
	ldr r5, _0805C250 @ =0x00000587
	adds r0, r4, r5
	ldrb r7, [r0, #0x00]
	cmp r3, r7
	bls _0805C1C0
	b _0805C598
_0805C1C0:
	subs r1, #0x0F
	adds r1, r1, r4
	mov r10, r1
	subs r2, #0x0D
	adds r2, r2, r4
	mov r8, r2
	adds r5, #0x05
	adds r5, r5, r4
	mov r12, r5
	adds r7, r0, #0x0
_0805C1D4:
	ldr r0, _0805C23C @ =0x03000E08
	ldr r1, [r0, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r2, r10
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r0, r9
	adds r2, r3, r0
	adds r0, r4, #0x0
	adds r0, #0x60
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r2, r2, r0
	mov r1, r8
	ldrh r0, [r1, #0x00]
	muls r0, r2
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	ldr r2, _0805C254 @ =0x08198504
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0805C212
	adds r1, #0x3F
_0805C212:
	asrs r1, r1, #0x06
	mov r2, r12
	ldrh r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C220
	adds r0, #0xFF
_0805C220:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r5, [r7, #0x00]
	cmp r3, r5
	bls _0805C1D4
	b _0805C598
	.byte 0x00, 0x00
_0805C238: .4byte 0x00000585
_0805C23C: .4byte 0x03000E08
_0805C240: .4byte 0x0000058E
_0805C244: .4byte 0x00000594
_0805C248: .4byte 0x00000597
_0805C24C: .4byte 0x00000586
_0805C250: .4byte 0x00000587
_0805C254: .4byte 0x08198504
_0805C258:
	cmp r0, #0x01
	bne _0805C2F8
	ldr r7, _0805C2E0 @ =0x00000586
	adds r0, r4, r7
	ldrb r2, [r0, #0x00]
	ldr r1, _0805C2E4 @ =0x00000587
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	cmp r2, r3
	bls _0805C26E
	b _0805C598
_0805C26E:
	ldr r5, _0805C2E8 @ =0x00000585
	adds r5, r5, r4
	mov r8, r5
	ldr r7, _0805C2EC @ =0x08198504
	mov r10, r7
	adds r1, #0x03
	adds r1, r1, r4
	mov r12, r1
	ldr r3, _0805C2F0 @ =0x0000058C
	adds r3, r4, r3
	str r3, [sp, #0x00C]
	adds r6, r0, #0x0
_0805C286:
	ldr r5, _0805C2F4 @ =0x03000E08
	ldr r1, [r5, #0x00]
	lsls r0, r2, #0x02
	adds r5, r0, r1
	mov r7, r8
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r3, r1, r0
	mov r0, r9
	adds r1, r2, r0
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r1, r1, r0
	mov r7, r12
	ldrh r0, [r7, #0x00]
	muls r0, r1
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r1, [r0, r7]
	cmp r1, #0x00
	bge _0805C2BC
	adds r1, #0x3F
_0805C2BC:
	asrs r1, r1, #0x06
	ldr r7, [sp, #0x00C]
	ldrh r0, [r7, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C2CA
	adds r0, #0xFF
_0805C2CA:
	asrs r0, r0, #0x08
	ldrh r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r5, #0x02]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r6, #0x00]
	cmp r2, r0
	bls _0805C286
	b _0805C598
_0805C2E0: .4byte 0x00000586
_0805C2E4: .4byte 0x00000587
_0805C2E8: .4byte 0x00000585
_0805C2EC: .4byte 0x08198504
_0805C2F0: .4byte 0x0000058C
_0805C2F4: .4byte 0x03000E08
_0805C2F8:
	cmp r0, #0x02
	beq _0805C2FE
	b _0805C448
_0805C2FE:
	ldr r1, _0805C338 @ =0x00000585
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	adds r5, r1, #0x0
	cmp r0, #0x97
	bgt _0805C344
	ldr r7, _0805C33C @ =0x00000586
	adds r1, r4, r7
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	ldr r3, _0805C340 @ =0x00000587
	adds r1, r4, r3
	strb r0, [r1, #0x00]
	b _0805C354
	.byte 0x00, 0x00
_0805C338: .4byte 0x00000585
_0805C33C: .4byte 0x00000586
_0805C340: .4byte 0x00000587
_0805C344:
	ldr r7, _0805C428 @ =0x00000586
	adds r1, r4, r7
	movs r2, #0x00
	movs r0, #0xA0
	strb r0, [r1, #0x00]
	ldr r1, _0805C42C @ =0x00000587
	adds r0, r4, r1
	strb r2, [r0, #0x00]
_0805C354:
	ldr r2, _0805C428 @ =0x00000586
	adds r0, r4, r2
	ldrb r3, [r0, #0x00]
	ldr r7, _0805C42C @ =0x00000587
	adds r0, r4, r7
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C366
	b _0805C598
_0805C366:
	ldr r0, _0805C430 @ =0x00000585
	adds r0, r0, r4
	mov r12, r0
	ldr r1, _0805C434 @ =0x08198504
	mov r10, r1
	str r5, [sp, #0x00C]
	movs r2, #0xFF
	mov r8, r2
	ldr r5, _0805C438 @ =0x0000058A
	adds r5, r4, r5
	str r5, [sp, #0x004]
_0805C37C:
	ldr r7, _0805C43C @ =0x03000E08
	ldr r1, [r7, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r0, r12
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r7, r9
	adds r2, r3, r7
	ldr r0, [sp, #0x00C]
	adds r1, r0, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	adds r2, r2, r0
	ldr r1, [sp, #0x004]
	ldrh r0, [r1, #0x00]
	muls r0, r2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0805C3B6
	adds r0, #0x3F
_0805C3B6:
	asrs r0, r0, #0x06
	ldr r2, _0805C440 @ =0x0000058C
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C3C6
	adds r0, #0xFF
_0805C3C6:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	mov r5, r12
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r7, [sp, #0x00C]
	adds r2, r7, r0
	ldr r0, [sp, #0x000]
	adds r1, r3, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r1, r0
	movs r7, #0xB2
	lsls r7, r7, #0x03
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	muls r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _0805C3FE
	adds r0, #0x3F
_0805C3FE:
	asrs r0, r0, #0x06
	ldr r7, _0805C444 @ =0x00000592
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C40E
	adds r0, #0xFF
_0805C40E:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r6, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _0805C42C @ =0x00000587
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C37C
	b _0805C598
_0805C428: .4byte 0x00000586
_0805C42C: .4byte 0x00000587
_0805C430: .4byte 0x00000585
_0805C434: .4byte 0x08198504
_0805C438: .4byte 0x0000058A
_0805C43C: .4byte 0x03000E08
_0805C440: .4byte 0x0000058C
_0805C444: .4byte 0x00000592
_0805C448:
	ldr r3, _0805C480 @ =0x00000585
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r5, r1, #0x0
	cmp r0, #0x97
	bgt _0805C488
	ldr r7, _0805C484 @ =0x00000586
	adds r1, r4, r7
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	adds r3, #0x02
	adds r1, r4, r3
	strb r0, [r1, #0x00]
	b _0805C498
_0805C480: .4byte 0x00000585
_0805C484: .4byte 0x00000586
_0805C488:
	ldr r7, _0805C5CC @ =0x00000586
	adds r1, r4, r7
	movs r2, #0x00
	movs r0, #0xA0
	strb r0, [r1, #0x00]
	ldr r1, _0805C5D0 @ =0x00000587
	adds r0, r4, r1
	strb r2, [r0, #0x00]
_0805C498:
	movs r2, #0xB3
	lsls r2, r2, #0x03
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1D
	bls _0805C4C8
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldr r3, _0805C5D4 @ =0x00000592
	adds r1, r4, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x03
	bls _0805C4C4
	ldr r7, _0805C5D8 @ =0x0000058C
	adds r1, r4, r7
	ldrh r0, [r1, #0x00]
	cmp r0, #0x01
	bhi _0805C4C8
_0805C4C4:
	adds r0, #0x01
	strh r0, [r1, #0x00]
_0805C4C8:
	ldr r1, _0805C5CC @ =0x00000586
	adds r0, r4, r1
	ldrb r3, [r0, #0x00]
	ldr r2, _0805C5D0 @ =0x00000587
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bhi _0805C598
	ldr r7, _0805C5DC @ =0x00000585
	adds r7, r7, r4
	mov r12, r7
	ldr r0, _0805C5E0 @ =0x08198504
	mov r10, r0
	str r5, [sp, #0x00C]
	movs r1, #0xFF
	mov r8, r1
	adds r2, #0x03
	adds r2, r4, r2
	str r2, [sp, #0x008]
_0805C4EE:
	ldr r5, _0805C5E4 @ =0x03000E08
	ldr r1, [r5, #0x00]
	lsls r0, r3, #0x02
	adds r6, r0, r1
	mov r7, r12
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x5A
	adds r5, r0, r1
	mov r0, r9
	adds r2, r3, r0
	ldr r7, [sp, #0x00C]
	adds r1, r7, r1
	movs r7, #0x00
	ldsh r0, [r1, r7]
	adds r2, r2, r0
	ldr r1, [sp, #0x008]
	ldrh r0, [r1, #0x00]
	muls r0, r2
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #0x01
	add r0, r10
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _0805C528
	adds r0, #0x3F
_0805C528:
	asrs r0, r0, #0x06
	ldr r2, _0805C5D8 @ =0x0000058C
	adds r1, r4, r2
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C538
	adds r0, #0xFF
_0805C538:
	asrs r0, r0, #0x08
	ldrh r5, [r5, #0x00]
	adds r0, r0, r5
	strh r0, [r6, #0x00]
	mov r5, r12
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	ldr r7, [sp, #0x00C]
	adds r2, r7, r0
	ldr r0, [sp, #0x000]
	adds r1, r3, r0
	movs r5, #0x00
	ldsh r0, [r2, r5]
	adds r1, r1, r0
	movs r7, #0xB2
	lsls r7, r7, #0x03
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	muls r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #0x01
	add r0, r10
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, #0x00
	bge _0805C570
	adds r0, #0x3F
_0805C570:
	asrs r0, r0, #0x06
	ldr r7, _0805C5D4 @ =0x00000592
	adds r1, r4, r7
	ldrh r1, [r1, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _0805C580
	adds r0, #0xFF
_0805C580:
	asrs r0, r0, #0x08
	ldrh r2, [r2, #0x00]
	adds r0, r0, r2
	strh r0, [r6, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _0805C5D0 @ =0x00000587
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	cmp r3, r0
	bls _0805C4EE
_0805C598:
	ldr r3, _0805C5E8 @ =0x0000058E
	adds r2, r4, r3
	movs r5, #0xB1
	lsls r5, r5, #0x03
	adds r1, r4, r5
	ldrh r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r7, _0805C5EC @ =0x00000594
	adds r2, r4, r7
	ldr r0, _0805C5F0 @ =0x00000596
	adds r1, r4, r0
	ldrh r0, [r2, #0x00]
	ldrb r1, [r1, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C5CC: .4byte 0x00000586
_0805C5D0: .4byte 0x00000587
_0805C5D4: .4byte 0x00000592
_0805C5D8: .4byte 0x0000058C
_0805C5DC: .4byte 0x00000585
_0805C5E0: .4byte 0x08198504
_0805C5E4: .4byte 0x03000E08
_0805C5E8: .4byte 0x0000058E
_0805C5EC: .4byte 0x00000594
_0805C5F0: .4byte 0x00000596
	thumb_func_start sub_805C5F4
sub_805C5F4:
	push {r4, r5, lr}
	ldr r2, _0805C62C @ =0x04000014
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r4, _0805C630 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x08]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x0A]
	ldr r0, _0805C634 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C638 @ =0x040000B0
	ldr r1, _0805C63C @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C640 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
_0805C62C: .4byte 0x04000014
_0805C630: .4byte 0x03000E0C
_0805C634: .4byte 0x03000E08
_0805C638: .4byte 0x040000B0
_0805C63C: .4byte 0x040000BA
_0805C640: .4byte 0xA6400001
	thumb_func_start sub_805C644
sub_805C644:
	push {r4, r5, lr}
	ldr r0, _0805C694 @ =0x03000DD0
	ldrb r1, [r0, #0x0B]
	movs r0, #0x1F
	ands r0, r1
	ldr r1, _0805C698 @ =0x083B8658
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	ldr r1, _0805C69C @ =0x04000014
	adds r5, r0, r1
	ldr r4, _0805C6A0 @ =0x03000E0C
	ldr r1, [r4, #0x00]
	ldrh r2, [r1, #0x00]
	strh r2, [r5, #0x00]
	ldr r2, _0805C6A4 @ =0x04000016
	adds r0, r0, r2
	ldrh r2, [r1, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _0805C6A8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	movs r2, #0xA0
	bl CpuFastSet
	ldr r2, _0805C6AC @ =0x040000B0
	ldr r1, _0805C6B0 @ =0x040000BA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x02
	str r0, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _0805C6B4 @ =0xA6400001
	str r0, [r2, #0x08]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C694: .4byte 0x03000DD0
_0805C698: .4byte 0x083B8658
_0805C69C: .4byte 0x04000014
_0805C6A0: .4byte 0x03000E0C
_0805C6A4: .4byte 0x04000016
_0805C6A8: .4byte 0x03000E08
_0805C6AC: .4byte 0x040000B0
_0805C6B0: .4byte 0x040000BA
_0805C6B4: .4byte 0xA6400001
	thumb_func_start sub_805C6B8
sub_805C6B8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0805C6F0 @ =0x040000BA
	movs r5, #0x00
	strh r5, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	ldr r0, _0805C6F4 @ =0x03000E0C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6D6
	bl free_heap_8018D9C
_0805C6D6:
	ldr r0, _0805C6F8 @ =0x03000E08
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C6E2
	bl free_heap_8018D9C
_0805C6E2:
	ldr r1, _0805C6FC @ =0x00000584
	adds r0, r4, r1
	strb r5, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C6F0: .4byte 0x040000BA
_0805C6F4: .4byte 0x03000E0C
_0805C6F8: .4byte 0x03000E08
_0805C6FC: .4byte 0x00000584
	.byte 0x10, 0xB5, 0xA0, 0x24, 0xE4, 0x04, 0x08, 0x48, 0x01, 0x68, 0x08, 0x88, 0x20, 0x80, 0x07, 0x4A
	.byte 0x07, 0x4B, 0x00, 0x20, 0x18, 0x80, 0x02, 0x31, 0x11, 0x60, 0x54, 0x60, 0x05, 0x48, 0x90, 0x60
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x04, 0x0E, 0x00, 0x03, 0xB0, 0x00, 0x00, 0x04
	.byte 0xBA, 0x00, 0x00, 0x04, 0x01, 0x00, 0x40, 0xA2, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_805C73C
sub_805C73C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _0805C77C @ =0x08CDC2B8
	str r0, [r5, #0x18]
	ldr r0, _0805C780 @ =0x040000BA
	movs r4, #0x00
	strh r4, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	strb r4, [r5, #0x1C]
	ldr r0, _0805C784 @ =0x03000E04
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C762
	bl free_heap_8018D9C
_0805C762:
	ldr r0, _0805C788 @ =0x03000E00
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C76E
	bl free_heap_8018D9C
_0805C76E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805C77C: .4byte 0x08CDC2B8
_0805C780: .4byte 0x040000BA
_0805C784: .4byte 0x03000E04
_0805C788: .4byte 0x03000E00
	thumb_func_start sub_805C78C
sub_805C78C:
	push {r4, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _0805C7B0 @ =0x0000057C
	adds r3, r0, r4
	ldr r3, [r3, #0x00]
	adds r4, #0x04
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_8115048
	pop {r4}
	pop {r0}
	bx r0
_0805C7B0: .4byte 0x0000057C
	thumb_func_start sub_805C7B4
sub_805C7B4:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _0805C814 @ =0x0000057C
	adds r0, r5, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0805C80A
	ldr r0, _0805C818 @ =0x03000DD0
	ldrb r0, [r0, #0x08]
	ldr r1, _0805C81C @ =0x083B79C4
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0805C80A
	lsls r0, r4, #0x02
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0805C80A
	ldrb r2, [r2, #0x01]
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r1, #0x0
	orrs r2, r0
	ldr r0, _0805C820 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r1, #0xFF
	movs r3, #0xFF
	bl sub_8114C1C
	movs r2, #0xB0
	lsls r2, r2, #0x03
	adds r1, r5, r2
	adds r1, r1, r4
	strb r0, [r1, #0x00]
_0805C80A:
	add sp, #0x008
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C814: .4byte 0x0000057C
_0805C818: .4byte 0x03000DD0
_0805C81C: .4byte 0x083B79C4
_0805C820: .4byte 0x0000FFFF
	thumb_func_start sub_805C824
sub_805C824:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r8, r0
	adds r4, r1, #0x0
	ldrb r0, [r4, #0x00]
	str r0, [sp, #0x000]
	ldrb r1, [r4, #0x01]
	str r1, [sp, #0x004]
	ldrb r3, [r4, #0x02]
	mov r12, r3
	ldrb r0, [r4, #0x03]
	mov r9, r0
	movs r1, #0x04
	mov r10, r1
	movs r2, #0x00
	cmp r2, r9
	bcs _0805C894
_0805C84E:
	ldr r3, [sp, #0x004]
	adds r1, r3, r2
	mov r3, r8
	ldrh r0, [r3, #0x26]
	muls r0, r1
	ldr r1, [sp, #0x000]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x00
	adds r7, r2, #0x1
	cmp r3, r12
	bcs _0805C88C
	mov r5, r8
	adds r5, #0x9C
_0805C86C:
	ldr r2, [r5, #0x00]
	adds r0, r6, r3
	adds r2, r2, r0
	mov r1, r10
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	adds r1, r4, r1
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r12
	bcc _0805C86C
_0805C88C:
	lsls r0, r7, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r9
	bcc _0805C84E
_0805C894:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805C8A4
sub_805C8A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C900 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C8F6
	ldr r1, _0805C904 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C8C2:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C8DE
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C8DE:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C8C2
_0805C8F6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C900: .4byte 0x03000DD0
_0805C904: .4byte 0x083B7108
	thumb_func_start sub_805C908
sub_805C908:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _0805C964 @ =0x03000DD0
	ldrb r0, [r0, #0x0A]
	cmp r0, #0x00
	beq _0805C95A
	ldr r1, _0805C968 @ =0x083B7108
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	movs r6, #0x00
_0805C926:
	adds r4, r6, #0x0
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r0, [r0, #0x10]
	lsls r0, r0, #0x09
	lsrs r0, r0, #0x18
	cmp r0, r7
	bne _0805C942
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_805B618
_0805C942:
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r0, r4, #0x02
	adds r0, r0, r4
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldrb r1, [r0, #0x13]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0805C926
_0805C95A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C964: .4byte 0x03000DD0
_0805C968: .4byte 0x083B7108
	.byte 0x70, 0xB5, 0x1E, 0x1C, 0x12, 0x04, 0x89, 0x04, 0x0D, 0x0C, 0x00, 0x23, 0x92, 0x0B, 0x93, 0x42
	.byte 0x0E, 0xDA, 0x04, 0x1C, 0xA8, 0x34, 0xE9, 0x18, 0x20, 0x68, 0x49, 0x00, 0x09, 0x18, 0x58, 0x00
	.byte 0x80, 0x19, 0x00, 0x88, 0x08, 0x80, 0x58, 0x1C, 0x00, 0x04, 0x03, 0x0C, 0x93, 0x42, 0xF2, 0xDB
	.byte 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	thumb_func_start sub_805C9A4
sub_805C9A4:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805C9D4 @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805C9D8 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805C9D4: .4byte 0x08940C9C
_0805C9D8: .4byte 0x06004000
	thumb_func_start sub_805C9DC
sub_805C9DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x008]
	ldrb r7, [r0, #0x0A]
	cmp r7, #0x00
	beq _0805C9FA
	movs r0, #0x00
	b _0805CB10
_0805C9FA:
	movs r6, #0x80
	lsls r6, r6, #0x02
	ldr r2, _0805CB20 @ =0x081E2830
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r0, r8
	str r1, [r0, #0x04]
	ldr r4, _0805CB24 @ =0x083A7894
	ldr r2, [sp, #0x008]
	lsls r5, r2, #0x04
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _0805CB28 @ =0x01000080
	add r0, sp, #0x004
	bl CpuFastSet
	mov r1, r8
	ldr r0, [r1, #0x04]
	ldr r1, _0805CB2C @ =0x06003E00
	movs r2, #0x02
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0xA0
	lsls r0, r0, #0x03
	ldr r2, _0805CB30 @ =0x081E2838
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	str r7, [sp, #0x004]
	ldr r2, _0805CB34 @ =0x01000140
	add r0, sp, #0x004
	bl CpuFastSet
	adds r4, #0x04
	adds r5, r5, r4
	ldr r5, [r5, #0x00]
	mov r10, r5
	movs r1, #0x00
	mov r7, r8
	ldr r6, [r7, #0x00]
_0805CA62:
	movs r4, #0x00
	lsls r0, r1, #0x04
	adds r2, r1, #0x1
	mov r9, r2
	lsls r7, r1, #0x05
	str r7, [sp, #0x00C]
	subs r0, r0, r1
	mov r12, r0
	movs r2, #0x13
	subs r0, r2, r1
	lsls r5, r0, #0x05
_0805CA78:
	ldr r7, [sp, #0x00C]
	adds r1, r7, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r0, r12
	adds r3, r0, r4
	add r3, r10
	ldr r2, _0805CB38 @ =0x0000F1F0
	adds r0, r2, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	subs r2, #0x1D
	ldr r0, [sp, #0x00C]
	subs r1, r0, r2
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB3C @ =0x0000F5F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r1, r5, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB40 @ =0x0000F9F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r2, r5, r2
	lsls r2, r2, #0x01
	adds r2, r2, r6
	ldr r1, _0805CB44 @ =0x0000FDF0
	adds r0, r1, #0x0
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0E
	bls _0805CA78
	mov r2, r9
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x09
	bls _0805CA62
	ldr r1, _0805CB48 @ =0x06003000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldr r1, _0805CB4C @ =0x02000008
	movs r7, #0xC0
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0805CB50 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r1, sp
	ldrb r2, [r1, #0x08]
	mov r1, r8
	strb r2, [r1, #0x0B]
	strh r0, [r1, #0x08]
	movs r0, #0x01
	strb r0, [r1, #0x0A]
_0805CB10:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CB20: .4byte 0x081E2830
_0805CB24: .4byte 0x083A7894
_0805CB28: .4byte 0x01000080
_0805CB2C: .4byte 0x06003E00
_0805CB30: .4byte 0x081E2838
_0805CB34: .4byte 0x01000140
_0805CB38: .4byte 0x0000F1F0
_0805CB3C: .4byte 0x0000F5F0
_0805CB40: .4byte 0x0000F9F0
_0805CB44: .4byte 0x0000FDF0
_0805CB48: .4byte 0x06003000
_0805CB4C: .4byte 0x02000008
_0805CB50: .4byte 0x02000010
	thumb_func_start sub_805CB54
sub_805CB54:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x0A]
	cmp r0, #0x00
	bne _0805CB6A
_0805CB66:
	movs r0, #0x00
	b _0805CC6E
_0805CB6A:
	ldr r1, _0805CBC0 @ =0x083A7894
	ldrb r0, [r4, #0x0B]
	lsls r0, r0, #0x04
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x00
	ldr r6, [r4, #0x04]
_0805CB7C:
	ldrh r0, [r4, #0x08]
	adds r2, r1, #0x1
	mov r8, r2
	cmp r1, r0
	bhi _0805CC02
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x0F
	bls _0805CB92
	movs r7, #0x0F
_0805CB92:
	movs r3, #0x00
	movs r0, #0x03
	mov r12, r0
	lsls r5, r1, #0x05
_0805CB9A:
	lsrs r0, r3, #0x02
	lsls r0, r0, #0x04
	adds r0, r0, r7
	add r0, r9
	ldrb r2, [r0, #0x00]
	mov r0, r12
	bics r0, r3
	lsls r0, r0, #0x01
	asrs r2, r0
	mov r1, r12
	ands r2, r1
	cmp r2, #0x01
	beq _0805CBD8
	cmp r2, #0x01
	bgt _0805CBC4
	cmp r2, #0x00
	beq _0805CBCE
	b _0805CBF6
	.byte 0x00, 0x00
_0805CBC0: .4byte 0x083A7894
_0805CBC4:
	cmp r2, #0x02
	beq _0805CBE2
	cmp r2, #0x03
	beq _0805CBEC
	b _0805CBF6
_0805CBCE:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _0805CBF6
_0805CBD8:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x90
	b _0805CBF4
_0805CBE2:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x09
	b _0805CBF4
_0805CBEC:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x99
_0805CBF4:
	strb r1, [r0, #0x00]
_0805CBF6:
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r6, [r4, #0x04]
	cmp r3, #0x1F
	bls _0805CB9A
_0805CC02:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x0F
	bls _0805CB7C
	ldr r1, _0805CC5C @ =0x06003E00
	movs r2, #0x80
	lsls r2, r2, #0x02
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805CC6C
	movs r0, #0x00
	strb r0, [r4, #0x0A]
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0805CC3A
	bl free_heap_8018D9C
_0805CC3A:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805CC44
	bl free_heap_8018D9C
_0805CC44:
	ldr r0, _0805CC60 @ =0x083A7894
	ldrb r1, [r4, #0x0B]
	lsls r1, r1, #0x04
	adds r1, r1, r0
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _0805CB66
	ldr r1, _0805CC64 @ =0x02000008
	ldr r2, _0805CC68 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	b _0805CB66
_0805CC5C: .4byte 0x06003E00
_0805CC60: .4byte 0x083A7894
_0805CC64: .4byte 0x02000008
_0805CC68: .4byte 0x00001508
_0805CC6C:
	movs r0, #0x01
_0805CC6E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x20, 0xA0, 0x72, 0x60, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7
	.byte 0x87, 0xF8, 0x20, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xBC, 0xF7, 0x82, 0xF8, 0x06, 0x48, 0xE1, 0x7A
	.byte 0x09, 0x01, 0x09, 0x18, 0x08, 0x7B, 0x00, 0x28, 0x03, 0xD0, 0x04, 0x49, 0x04, 0x4A, 0x10, 0x1C
	.byte 0x08, 0x80, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x94, 0x78, 0x3A, 0x08, 0x08, 0x00, 0x00, 0x02
	.byte 0x08, 0x15, 0x00, 0x00
	thumb_func_start sub_805CCC0
sub_805CCC0:
	push {lr}
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0805CCD2
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_0805CCD2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805CCD8
sub_805CCD8:
	movs r1, #0x00
	strb r1, [r0, #0x0A]
	bx lr
	.byte 0x00, 0x00
	thumb_func_start sub_805CCE0
sub_805CCE0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	ldr r0, [sp, #0x038]
	mov r8, r0
	ldr r4, [sp, #0x040]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r3, #0x10
	lsrs r0, r5, #0x10
	str r0, [sp, #0x008]
	mov r5, r8
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	ldr r0, [sp, #0x03C]
	lsls r0, r0, #0x10
	str r0, [sp, #0x014]
	lsrs r5, r0, #0x10
	str r5, [sp, #0x010]
	adds r0, r7, #0x0
	bl process_add
	ldr r0, _0805CDF0 @ =0x08CDC2C8
	str r0, [r7, #0x18]
	ldr r1, _0805CDF4 @ =0x00000A3C
	adds r0, r7, r1
	str r4, [r0, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x94
	movs r4, #0xC0
	lsls r4, r4, #0x06
	ldr r2, _0805CDF8 @ =0x081E2840
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r2, #0x98
	adds r2, r2, r7
	mov r9, r2
	ldr r2, _0805CDFC @ =0x081E2848
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r9
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0xA8
	movs r0, #0xA0
	lsls r0, r0, #0x06
	ldr r2, _0805CE00 @ =0x081E2850
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	movs r2, #0xA4
	adds r2, r2, r7
	mov r10, r2
	movs r0, #0x80
	lsls r0, r0, #0x06
	ldr r2, _0805CE04 @ =0x081E2858
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r1, r10
	str r0, [r1, #0x00]
	movs r4, #0x00
	str r4, [sp, #0x000]
	ldr r1, [r5, #0x00]
	ldr r5, _0805CE08 @ =0x01000C00
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x00]
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r6, #0x00]
	ldr r2, _0805CE0C @ =0x01000A00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	mov r5, r10
	ldr r1, [r5, #0x00]
	ldr r2, _0805CE10 @ =0x01000800
	mov r0, sp
	bl CpuFastSet
	ldr r0, _0805CE14 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	mov r0, sp
	ldrh r0, [r0, #0x08]
	strh r0, [r7, #0x1E]
	mov r1, r8
	strh r1, [r7, #0x22]
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r7, #0x24]
	ldrh r1, [r7, #0x1E]
	adds r0, r7, #0x0
	bl sub_805D914
	adds r0, r7, #0x0
	bl sub_805D5C0
	ldr r0, _0805CE18 @ =0x03000DD0
	ldrb r0, [r0, #0x02]
	movs r1, #0x60
	ands r1, r0
	adds r0, r1, #0x0
	movs r2, #0x00
	movs r3, #0x00
	cmp r1, #0x20
	beq _0805CE2A
	cmp r1, #0x20
	bgt _0805CE1C
	cmp r1, #0x00
	beq _0805CE22
	b _0805CE38
	.byte 0x00, 0x00
_0805CDF0: .4byte 0x08CDC2C8
_0805CDF4: .4byte 0x00000A3C
_0805CDF8: .4byte 0x081E2840
_0805CDFC: .4byte 0x081E2848
_0805CE00: .4byte 0x081E2850
_0805CE04: .4byte 0x081E2858
_0805CE08: .4byte 0x01000C00
_0805CE0C: .4byte 0x01000A00
_0805CE10: .4byte 0x01000800
_0805CE14: .4byte 0x0000FFFB
_0805CE18: .4byte 0x03000DD0
_0805CE1C:
	cmp r0, #0x40
	beq _0805CE32
	b _0805CE38
_0805CE22:
	movs r2, #0x01
	movs r3, #0x02
	movs r4, #0x03
	b _0805CE38
_0805CE2A:
	movs r2, #0x01
	movs r3, #0x03
	movs r4, #0x02
	b _0805CE38
_0805CE32:
	movs r2, #0x02
	movs r3, #0x03
	movs r4, #0x01
_0805CE38:
	ldr r1, _0805CE68 @ =0x0200000A
	ldr r5, _0805CE6C @ =0x00004004
	adds r0, r5, #0x0
	orrs r2, r0
	strh r2, [r1, #0x00]
	adds r1, #0x02
	ldr r2, _0805CE70 @ =0x00004204
	adds r0, r2, #0x0
	orrs r3, r0
	strh r3, [r1, #0x00]
	adds r1, #0x02
	ldr r5, _0805CE74 @ =0x00004404
	adds r0, r5, #0x0
	orrs r4, r0
	strh r4, [r1, #0x00]
	adds r0, r7, #0x0
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CE68: .4byte 0x0200000A
_0805CE6C: .4byte 0x00004004
_0805CE70: .4byte 0x00004204
_0805CE74: .4byte 0x00004404
	thumb_func_start sub_805CE78
sub_805CE78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	ldr r0, _0805CEA8 @ =0x086527F4
	mov r9, r0
	mov r10, r9
	ldr r0, _0805CEAC @ =0x03000DD0
	ldrb r5, [r0, #0x03]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _0805CE9C
	b _0805D024
_0805CE9C:
	lsls r0, r0, #0x02
	ldr r1, _0805CEB0 @ =0x0805CEB4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0805CEA8: .4byte 0x086527F4
_0805CEAC: .4byte 0x03000DD0
_0805CEB0: .4byte 0x0805CEB4
	.byte 0xC8, 0xCE, 0x05, 0x08, 0x14, 0xCF, 0x05, 0x08, 0x74, 0xCF, 0x05, 0x08, 0xDC, 0xCF, 0x05, 0x08
	.byte 0x10, 0xD0, 0x05, 0x08, 0x0F, 0x4A, 0xA1, 0x18, 0x01, 0x20, 0x08, 0x70, 0x20, 0x1C, 0x00, 0xF0
	.byte 0xB1, 0xF8, 0x00, 0x23, 0x0C, 0x4A, 0x13, 0x60, 0x0C, 0x49, 0xA8, 0x00, 0x41, 0x18, 0x08, 0x78
	.byte 0xFF, 0x28, 0x00, 0xD1, 0x98, 0xE0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x50, 0x60
	.byte 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x90, 0x60, 0xD3, 0x60, 0x10, 0x1C, 0xBC, 0xF7, 0x82, 0xFC
	.byte 0x8A, 0xE0, 0x00, 0x00, 0x39, 0x0A, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08
	.byte 0x14, 0x4F, 0x3E, 0x68, 0x00, 0x2E, 0x00, 0xD0, 0x85, 0xE0, 0x13, 0x48, 0x80, 0x46, 0xAD, 0x00
	.byte 0x28, 0x18, 0x00, 0x78, 0xFF, 0x28, 0x07, 0xD0, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x0F, 0x49
	.byte 0x80, 0x22, 0x12, 0x01, 0x7D, 0xF1, 0xAE, 0xFB, 0x3E, 0x60, 0x68, 0x1C, 0x42, 0x46, 0x81, 0x18
	.byte 0x08, 0x78, 0xFF, 0x28, 0x68, 0xD0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x78, 0x60
	.byte 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0xB8, 0x60, 0xFE, 0x60, 0x38, 0x1C, 0xBC, 0xF7, 0x52, 0xFC
	.byte 0x5A, 0xE0, 0x00, 0x00, 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x00, 0x40, 0x00, 0x06
	.byte 0x13, 0x4F, 0x3E, 0x68, 0x00, 0x2E, 0x56, 0xD1, 0x12, 0x48, 0x80, 0x46, 0xAD, 0x00, 0x28, 0x18
	.byte 0x40, 0x78, 0xFF, 0x28, 0x07, 0xD0, 0x20, 0x1C, 0xA4, 0x30, 0x00, 0x68, 0x0E, 0x49, 0x80, 0x22
	.byte 0x12, 0x01, 0x7D, 0xF1, 0x7F, 0xFB, 0x3E, 0x60, 0xA8, 0x1C, 0x42, 0x46, 0x81, 0x18, 0x08, 0x78
	.byte 0xFF, 0x28, 0x13, 0xD0, 0x80, 0x00, 0x50, 0x44, 0x00, 0x68, 0x48, 0x44, 0x78, 0x60, 0x20, 0x1C
	.byte 0xA4, 0x30, 0x00, 0x68, 0xB8, 0x60, 0xFE, 0x60, 0x38, 0x1C, 0xBC, 0xF7, 0x23, 0xFC, 0x2B, 0xE0
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x00, 0x60, 0x00, 0x06, 0x01, 0x48, 0xA0, 0x83
	.byte 0x29, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x09, 0x48, 0x00, 0x68, 0x00, 0x28, 0x22, 0xD1
	.byte 0x08, 0x48, 0xA9, 0x00, 0x09, 0x18, 0x88, 0x78, 0xFF, 0x28, 0x15, 0xD0, 0x20, 0x1C, 0xA4, 0x30
	.byte 0x00, 0x68, 0x05, 0x49, 0x80, 0x22, 0x12, 0x01, 0x7D, 0xF1, 0x4C, 0xFB, 0x0C, 0xE0, 0x00, 0x00
	.byte 0xC0, 0x0D, 0x00, 0x03, 0x6C, 0xAA, 0x3A, 0x08, 0x00, 0x80, 0x00, 0x06, 0x20, 0x1C, 0x00, 0xF0
	.byte 0xDB, 0xFC, 0x20, 0x1C, 0x00, 0xF0, 0x0C, 0xFB, 0xA0, 0x8B, 0x01, 0x30, 0xA0, 0x83, 0x02, 0xE0
_0805D024:
	adds r0, r4, #0x0
	bl sub_805D3F8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805D038
sub_805D038:
	push {r4, r5, r6, r7, lr}
	ldr r0, _0805D050 @ =0x0300034C
	ldr r1, _0805D054 @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _0805D05C
	ldr r2, _0805D058 @ =0x088D4808
	b _0805D05E
	.byte 0x00, 0x00
_0805D050: .4byte 0x0300034C
_0805D054: .4byte 0x00000888
_0805D058: .4byte 0x088D4808
_0805D05C:
	ldr r2, _0805D0C4 @ =0x088C8730
_0805D05E:
	ldr r1, _0805D0C8 @ =0x083AAD68
	ldr r0, _0805D0CC @ =0x03000DD0
	ldrb r0, [r0, #0x05]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r6, r2, r0
	movs r0, #0x00
_0805D072:
	movs r4, #0x00
	movs r3, #0x01
	lsls r1, r0, #0x05
	adds r7, r0, #0x1
	adds r5, r1, #0x0
_0805D07C:
	lsls r0, r3, #0x01
	adds r0, r0, r5
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0805D08E
	ldrb r0, [r2, #0x01]
	cmp r0, #0x00
	beq _0805D094
_0805D08E:
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0805D094:
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x0F
	bls _0805D07C
	cmp r4, #0x00
	beq _0805D0AE
	adds r0, r6, r1
	ldr r2, _0805D0D0 @ =0x02000080
	adds r1, r1, r2
	movs r2, #0x08
	bl CpuFastSet
_0805D0AE:
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0E
	bls _0805D072
	ldr r1, _0805D0D4 @ =0x0300034C
	ldr r0, _0805D0D8 @ =0x00007FFF
	strh r0, [r1, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D0C4: .4byte 0x088C8730
_0805D0C8: .4byte 0x083AAD68
_0805D0CC: .4byte 0x03000DD0
_0805D0D0: .4byte 0x02000080
_0805D0D4: .4byte 0x0300034C
_0805D0D8: .4byte 0x00007FFF
	thumb_func_start sub_805D0DC
sub_805D0DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	mov r8, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
_0805D0EE:
	movs r0, #0x02
	ldr r1, [sp, #0x000]
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r8
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r2, _0805D144 @ =room_solidity_index_table
	adds r1, r0, r2
	ldrh r0, [r1, #0x00]
	ldr r2, [sp, #0x000]
	adds r2, #0x01
	str r2, [sp, #0x018]
	ldr r2, _0805D148 @ =0x0000FFFF
	cmp r0, r2
	bne _0805D112
	b _0805D264
_0805D112:
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _0805D14C @ =0x08754D74
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r1, #0x0
	adds r7, r2, r0
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r3, r0, r1
	movs r0, #0x03
	ands r0, r3
	cmp r0, #0x00
	bne _0805D150
	ldr r0, [sp, #0x000]
	lsls r1, r0, #0x01
	mov r0, r8
	adds r0, #0x2A
	adds r0, r0, r1
	movs r5, #0xFC
	ands r5, r3
	strh r5, [r0, #0x00]
	adds r4, r1, #0x0
	b _0805D166
	.byte 0x00, 0x00
_0805D144: .4byte room_solidity_index_table
_0805D148: .4byte 0x0000FFFF
_0805D14C: .4byte 0x08754D74
_0805D150:
	ldr r1, [sp, #0x000]
	lsls r2, r1, #0x01
	mov r1, r8
	adds r1, #0x2A
	adds r1, r1, r2
	asrs r0, r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x1A
	lsrs r5, r0, #0x18
	strh r5, [r1, #0x00]
	adds r4, r2, #0x0
_0805D166:
	mov r1, r8
	adds r1, #0x30
	adds r1, r1, r4
	ldrb r0, [r7, #0x01]
	lsls r3, r0, #0x02
	adds r3, r3, r0
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x18
	strh r3, [r1, #0x00]
	mov r2, r8
	adds r2, #0x42
	adds r2, r2, r4
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _0805D284 @ =0x0000FFFF
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x26]
	mov r2, r8
	adds r2, #0x48
	adds r2, r2, r4
	ldrb r1, [r7, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	strh r0, [r2, #0x00]
	ldr r2, _0805D284 @ =0x0000FFFF
	ands r0, r2
	mov r1, r8
	strh r0, [r1, #0x28]
	mov r2, r8
	adds r2, #0x36
	adds r2, r2, r4
	ldrb r1, [r7, #0x00]
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x04
	strh r0, [r2, #0x00]
	mov r2, r8
	adds r2, #0x3C
	adds r2, r2, r4
	ldrb r1, [r7, #0x01]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x05
	strh r0, [r2, #0x00]
	movs r2, #0x02
	mov r12, r2
	movs r0, #0x00
	mov r9, r0
	ldr r1, [sp, #0x000]
	adds r1, #0x01
	str r1, [sp, #0x018]
	cmp r0, r3
	bcs _0805D264
	lsls r5, r5, #0x10
	str r5, [sp, #0x00C]
	lsrs r2, r5, #0x10
	str r2, [sp, #0x010]
	str r3, [sp, #0x004]
_0805D1E2:
	movs r2, #0x00
	adds r0, #0x01
	str r0, [sp, #0x014]
	ldr r0, [sp, #0x010]
	cmp r2, r0
	bcs _0805D258
	ldr r1, [sp, #0x000]
	lsls r1, r1, #0x0B
	str r1, [sp, #0x01C]
	movs r0, #0x98
	add r0, r8
	mov r10, r0
	ldr r1, [sp, #0x00C]
	lsrs r1, r1, #0x10
	str r1, [sp, #0x008]
_0805D200:
	mov r1, r12
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r1, r7, r1
	ldrb r4, [r1, #0x00]
	movs r5, #0x00
	adds r6, r2, #0x4
_0805D212:
	movs r2, #0xC0
	ands r2, r4
	lsls r2, r2, #0x02
	mov r1, r12
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r1, r7, r1
	ldrb r3, [r1, #0x00]
	orrs r3, r2
	ldr r0, [sp, #0x01C]
	add r0, r9
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	strh r3, [r0, #0x00]
	lsls r0, r4, #0x1A
	lsrs r4, r0, #0x18
	mov r0, r9
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	adds r0, r5, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x03
	bls _0805D212
	lsls r0, r6, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x008]
	cmp r2, r0
	bcc _0805D200
_0805D258:
	ldr r1, [sp, #0x014]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x004]
	cmp r0, r2
	bcc _0805D1E2
_0805D264:
	ldr r1, [sp, #0x018]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	cmp r0, #0x02
	bhi _0805D272
	b _0805D0EE
_0805D272:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D284: .4byte 0x0000FFFF
	thumb_func_start sub_805D288
sub_805D288:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r9, r0
	movs r0, #0x00
	mov r8, r0
_0805D29A:
	movs r0, #0x02
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #0x01
	mov r2, r9
	ldrh r1, [r2, #0x1E]
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, _0805D314 @ =room_solidity_index_table
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r2, _0805D318 @ =0x0000FFFF
	cmp r0, r2
	beq _0805D31C
	movs r2, #0x00
	mov r0, r8
	lsls r0, r0, #0x0B
	str r0, [sp, #0x008]
	movs r1, #0x98
	add r1, r9
	mov r10, r1
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x004]
_0805D2CA:
	movs r1, #0x00
	lsls r6, r2, #0x10
	asrs r5, r6, #0x10
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x04
	ldr r2, [sp, #0x008]
	adds r7, r0, r2
_0805D2DA:
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, r7, r4
	mov r2, r10
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	mov r0, r9
	mov r1, r8
	adds r2, r4, #0x0
	adds r3, r5, #0x0
	bl sub_805D34C
	adds r4, #0x01
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1F
	ble _0805D2DA
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _0805D2CA
	b _0805D32A
_0805D314: .4byte room_solidity_index_table
_0805D318: .4byte 0x0000FFFF
_0805D31C:
	ldr r0, _0805D348 @ =0x00000A5A
	add r0, r9
	mov r2, r8
	strb r2, [r0, #0x00]
	mov r0, r8
	adds r0, #0x01
	str r0, [sp, #0x004]
_0805D32A:
	ldr r1, [sp, #0x004]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x02
	bls _0805D29A
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D348: .4byte 0x00000A5A
	thumb_func_start sub_805D34C
sub_805D34C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805D394
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805D3BE
_0805D394:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805D3BE:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805D3F8
sub_805D3F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x0F
	mov r9, r1
_0805D40A:
	movs r0, #0x4C
	mov r7, r8
	muls r7, r0
	adds r3, r6, r7
	adds r5, r3, #0x0
	adds r5, #0xAC
	ldrb r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x10
	beq _0805D42C
	cmp r0, #0x10
	bgt _0805D426
	b _0805D5A2
_0805D426:
	cmp r0, #0x20
	beq _0805D44A
	b _0805D5A2
_0805D42C:
	adds r1, r3, #0x0
	adds r1, #0xB1
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0805D43E
	b _0805D5A2
_0805D43E:
	ldrb r1, [r5, #0x00]
	mov r0, r9
	ands r0, r1
	adds r0, #0x20
	strb r0, [r5, #0x00]
	b _0805D5A2
_0805D44A:
	mov r0, r9
	ands r0, r1
	movs r1, #0x00
	mov r12, r1
	adds r0, #0x10
	strb r0, [r5, #0x00]
	mov r2, r9
	ands r2, r0
	cmp r2, #0x01
	beq _0805D4B8
	cmp r2, #0x01
	bgt _0805D468
	cmp r2, #0x00
	beq _0805D46E
	b _0805D5A2
_0805D468:
	cmp r2, #0x02
	beq _0805D54A
	b _0805D5A2
_0805D46E:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D48E
	mov r0, r12
	strb r0, [r4, #0x00]
_0805D48E:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	b _0805D53A
_0805D4B8:
	adds r4, r3, #0x0
	adds r4, #0xB4
	ldrb r1, [r4, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805D4E0
	adds r1, r3, #0x0
	adds r1, #0xB3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	strb r2, [r1, #0x00]
	b _0805D504
_0805D4E0:
	adds r2, r3, #0x0
	adds r2, #0xB3
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	adds r3, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x00
	ldsb r1, [r3, r1]
	cmp r0, r1
	blt _0805D504
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r2, #0x00]
_0805D504:
	movs r0, #0x4C
	mov r4, r8
	muls r4, r0
	adds r2, r6, r4
	adds r3, r2, #0x0
	adds r3, #0xB3
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r2, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	ldrb r3, [r3, #0x00]
	lsls r3, r3, #0x18
	asrs r3, r3, #0x18
	lsls r3, r3, #0x01
	adds r3, r3, r4
_0805D53A:
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
	b _0805D5A2
_0805D54A:
	adds r4, r3, #0x0
	adds r4, #0xB3
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB2
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	blt _0805D56C
	mov r1, r12
	strb r1, [r5, #0x00]
	b _0805D5A2
_0805D56C:
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	adds r1, r1, r7
	adds r0, r6, #0x0
	adds r0, #0xD6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB1
	strb r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAE
	ldrh r1, [r0, #0x00]
	adds r0, #0x02
	ldrb r2, [r0, #0x00]
	movs r3, #0x00
	ldsb r3, [r4, r3]
	lsls r3, r3, #0x01
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r0, #0xB6
	adds r0, r0, r3
	ldrh r3, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_805D8DC
_0805D5A2:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0x1F
	bhi _0805D5B2
	b _0805D40A
_0805D5B2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805D5C0
sub_805D5C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r4, #0x00
	movs r0, #0x4C
	mov r8, r0
	movs r3, #0x00
	movs r7, #0xB6
	adds r7, r7, r6
	mov r12, r7
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
_0805D5DE:
	mov r1, r8
	muls r1, r4
	adds r2, r6, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r5, r4, #0x1
	adds r4, r1, #0x0
_0805D608:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	mov r7, r12
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	add r0, r9
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805D608
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1F
	bls _0805D5DE
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805D634
sub_805D634:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r10, r0
	ldr r0, _0805D720 @ =0x00000A5A
	add r0, r10
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	asrs r0, r0, #0x1F
	mov r12, r0
	movs r0, #0x10
	mov r1, r12
	ands r1, r0
	mov r12, r1
	movs r4, #0x00
	mov r3, r12
	movs r2, #0x4C
	mov r9, r2
	movs r2, #0x00
	mov r5, r10
	adds r5, #0xB6
	str r5, [sp, #0x008]
	mov r0, r10
	adds r0, #0xD6
	str r0, [sp, #0x00C]
	movs r7, #0x4C
_0805D674:
	mov r0, r9
	muls r0, r3
	mov r5, r10
	adds r1, r5, r0
	adds r0, r1, #0x0
	adds r0, #0xAC
	strb r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	adds r6, r3, #0x1
	adds r0, r3, #0x0
	muls r0, r7
	ldr r3, [sp, #0x00C]
	adds r1, r0, r3
	ldr r5, [sp, #0x008]
	adds r0, r0, r5
	movs r5, #0x0F
_0805D6AE:
	strh r2, [r0, #0x00]
	strh r2, [r1, #0x00]
	strh r2, [r0, #0x02]
	strh r2, [r1, #0x02]
	strh r2, [r0, #0x04]
	strh r2, [r1, #0x04]
	strh r2, [r0, #0x06]
	strh r2, [r1, #0x06]
	strh r2, [r0, #0x08]
	strh r2, [r1, #0x08]
	strh r2, [r0, #0x0A]
	strh r2, [r1, #0x0A]
	strh r2, [r0, #0x0C]
	strh r2, [r1, #0x0C]
	strh r2, [r0, #0x0E]
	strh r2, [r1, #0x0E]
	adds r1, #0x10
	adds r0, #0x10
	subs r5, #0x08
	cmp r5, #0x00
	bge _0805D6AE
	mov r4, r8
	adds r3, r6, #0x0
	cmp r4, #0x0F
	ble _0805D674
	ldr r1, _0805D724 @ =0x03000DD0
	ldrb r0, [r1, #0x07]
	lsls r0, r0, #0x02
	ldr r2, _0805D728 @ =0x083B283C
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x000]
	cmp r0, #0x00
	beq _0805D7C6
	movs r4, #0x00
_0805D6F4:
	lsls r2, r4, #0x03
	ldr r5, [sp, #0x000]
	adds r3, r2, r5
	ldrb r1, [r3, #0x00]
	movs r0, #0x40
	ands r1, r0
	str r2, [sp, #0x004]
	cmp r1, #0x00
	beq _0805D72C
	movs r1, #0x4C
	mov r0, r12
	muls r0, r1
	add r0, r10
	adds r0, #0xAC
	movs r2, #0x00
	strb r2, [r0, #0x00]
	adds r4, #0x01
	mov r8, r4
	movs r3, #0x01
	add r3, r12
	mov r9, r3
	b _0805D7B2
_0805D720: .4byte 0x00000A5A
_0805D724: .4byte 0x03000DD0
_0805D728: .4byte 0x083B283C
_0805D72C:
	movs r5, #0x4C
	mov r0, r12
	muls r0, r5
	mov r1, r10
	adds r2, r1, r0
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	adds r0, #0x20
	adds r1, r2, #0x0
	adds r1, #0xAC
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x0C
	lsrs r0, r0, #0x16
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldrh r0, [r3, #0x02]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1B
	adds r1, #0x02
	strb r0, [r1, #0x00]
	movs r5, #0x00
	adds r4, #0x01
	mov r8, r4
	movs r2, #0x01
	add r2, r12
	mov r9, r2
	ldr r3, [r3, #0x04]
	movs r0, #0x4C
	mov r4, r12
	muls r4, r0
	ldr r7, [sp, #0x008]
	ldr r6, [sp, #0x00C]
_0805D770:
	adds r1, r7, r4
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r2, r6, r4
	ldrh r1, [r3, #0x02]
	ldr r0, _0805D7D8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldrh r1, [r3, #0x02]
	movs r0, #0x80
	lsls r0, r0, #0x08
	ands r0, r1
	adds r3, #0x04
	adds r4, #0x02
	adds r5, #0x01
	cmp r0, #0x00
	beq _0805D770
	movs r3, #0x4C
	mov r0, r12
	muls r0, r3
	mov r2, r10
	adds r1, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xB2
	strb r5, [r0, #0x00]
	adds r2, r1, #0x0
	adds r2, #0xB3
	movs r0, #0xFF
	strb r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	strb r3, [r0, #0x00]
_0805D7B2:
	mov r12, r9
	ldr r5, [sp, #0x004]
	ldr r1, [sp, #0x000]
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r1, r0
	mov r4, r8
	cmp r1, #0x00
	beq _0805D6F4
_0805D7C6:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D7D8: .4byte 0x00007FFF
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x06, 0x1C, 0x09, 0x04, 0x0A, 0x0C
	.byte 0x00, 0x27, 0xAC, 0x30, 0x00, 0x78, 0x00, 0x28, 0x0C, 0xD0, 0x4C, 0x21, 0x78, 0x1C, 0x00, 0x06
	.byte 0x07, 0x0E, 0x38, 0x1C, 0x48, 0x43, 0x30, 0x18, 0xAC, 0x30, 0x00, 0x78, 0x00, 0x28, 0x01, 0xD0
	.byte 0x0F, 0x2F, 0xF3, 0xD9, 0x0F, 0x2F, 0x55, 0xD8, 0x2E, 0x48, 0xC0, 0x79, 0x2E, 0x49, 0x80, 0x00
	.byte 0x40, 0x18, 0x04, 0x68, 0x00, 0x2C, 0x4D, 0xD0, 0xF8, 0x00, 0x00, 0x19, 0x00, 0x78, 0x40, 0x21
	.byte 0x08, 0x40, 0x00, 0x28, 0x46, 0xD0, 0x4C, 0x20, 0x3B, 0x1C, 0x43, 0x43, 0xF0, 0x18, 0x84, 0x46
	.byte 0xD2, 0x00, 0x12, 0x19, 0x50, 0x78, 0x80, 0x07, 0x80, 0x0F, 0x20, 0x30, 0x61, 0x46, 0xAC, 0x31
	.byte 0x08, 0x70, 0x10, 0x68, 0x00, 0x03, 0x80, 0x0D, 0x02, 0x31, 0x08, 0x80, 0x50, 0x88, 0xC0, 0x05
	.byte 0xC0, 0x0E, 0x02, 0x31, 0x08, 0x70, 0x55, 0x68, 0x00, 0x24, 0xD6, 0x20, 0x80, 0x19, 0x81, 0x46
	.byte 0x98, 0x46, 0x80, 0x20, 0x00, 0x02, 0x82, 0x46, 0xB6, 0x20, 0x80, 0x19, 0x84, 0x46, 0x22, 0x1C
	.byte 0x53, 0x00, 0x43, 0x44, 0x60, 0x46, 0xC4, 0x18, 0x91, 0x00, 0x49, 0x19, 0x08, 0x88, 0x20, 0x80
	.byte 0x4B, 0x44, 0x49, 0x88, 0x11, 0x48, 0x08, 0x40, 0x18, 0x80, 0x50, 0x1C, 0x00, 0x06, 0x04, 0x0E
	.byte 0x92, 0x00, 0x52, 0x19, 0x51, 0x88, 0x50, 0x46, 0x08, 0x40, 0x00, 0x28, 0xE7, 0xD0, 0x4C, 0x20
	.byte 0x78, 0x43, 0x30, 0x18, 0x02, 0x1C, 0xB2, 0x32, 0x00, 0x21, 0x14, 0x70, 0x01, 0x32, 0x11, 0x70
	.byte 0xB4, 0x30, 0x01, 0x70, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xD0, 0x0D, 0x00, 0x03, 0x3C, 0x28, 0x3B, 0x08, 0xFF, 0x7F, 0x00, 0x00
	thumb_func_start sub_805D8DC
sub_805D8DC:
	push {r4, lr}
	add sp, #-0x004
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsls r3, r3, #0x10
	ldr r4, _0805D90C @ =0x08940C9C
	lsrs r3, r3, #0x0E
	adds r3, r3, r4
	ldr r0, [r3, #0x00]
	adds r0, r0, r4
	lsrs r1, r1, #0x0B
	ldr r3, _0805D910 @ =0x06004000
	adds r1, r1, r3
	lsrs r2, r2, #0x13
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D90C: .4byte 0x08940C9C
_0805D910: .4byte 0x06004000
	thumb_func_start sub_805D914
sub_805D914:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r1, #0x01
	adds r2, r2, r1
	lsls r2, r2, #0x03
	ldr r1, _0805D934 @ =room_props_table
	ldr r0, _0805D938 @ =0x03000DD0
	adds r2, r2, r1
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	ldm r2!, {r1, r3, r4}
	stm r0!, {r1, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
_0805D934: .4byte room_props_table
_0805D938: .4byte 0x03000DD0
	thumb_func_start sub_805D93C
sub_805D93C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r5, _0805D9BC @ =0x086FFC20
	mov r9, r5
	ldr r1, _0805D9C0 @ =0x03000DD0
	ldrb r6, [r1, #0x04]
	ldr r2, _0805D9C4 @ =0x083AAC4C
	lsls r1, r6, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r5
	ldr r1, [r1, #0x00]
	adds r4, r1, r5
	movs r3, #0x00
	mov r8, r2
	adds r2, r0, #0x0
	adds r2, #0xA8
	ldr r7, _0805D9C8 @ =0x000007FF
	mov r12, r2
_0805D968:
	ldr r1, [r2, #0x00]
	lsls r0, r3, #0x01
	adds r1, r0, r1
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r7
	bls _0805D968
	lsls r0, r6, #0x02
	add r0, r8
	ldrh r0, [r0, #0x02]
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	adds r4, r5, r0
	movs r3, #0x00
	mov r2, r12
	movs r6, #0x80
	lsls r6, r6, #0x05
	ldr r5, _0805D9C8 @ =0x000007FF
_0805D996:
	ldr r1, [r2, #0x00]
	lsls r0, r3, #0x01
	adds r1, r0, r1
	adds r1, r1, r6
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r5
	bls _0805D996
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805D9BC: .4byte 0x086FFC20
_0805D9C0: .4byte 0x03000DD0
_0805D9C4: .4byte 0x083AAC4C
_0805D9C8: .4byte 0x000007FF
	thumb_func_start sub_805D9CC
sub_805D9CC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_805D0DC
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_805D93C
	adds r0, r4, #0x0
	bl sub_805D288
	adds r4, #0x94
	ldr r0, [r4, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xC0
	lsls r2, r2, #0x06
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805DA04
sub_805DA04:
	push {lr}
	ldr r2, _0805DA18 @ =0x0000FFFB
	strh r2, [r0, #0x1C]
	strh r1, [r0, #0x1E]
	ldrh r1, [r0, #0x1E]
	bl sub_805D914
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DA18: .4byte 0x0000FFFB
	thumb_func_start sub_805DA1C
sub_805DA1C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805DA74 @ =0x08CDC2C8
	str r0, [r4, #0x18]
	movs r0, #0xC0
	lsls r0, r0, #0x13
	bl sub_80184F4
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA3C
	bl free_heap_8018D9C
_0805DA3C:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA4A
	bl free_heap_8018D9C
_0805DA4A:
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA58
	bl free_heap_8018D9C
_0805DA58:
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805DA66
	bl free_heap_8018D9C
_0805DA66:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
_0805DA74: .4byte 0x08CDC2C8
	thumb_func_start sub_805DA78
sub_805DA78:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805DA94
	b _0805DCB6
_0805DA94:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805DAA8
	adds r1, #0xFF
_0805DAA8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805DAB2
	adds r2, #0xFF
_0805DAB2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805DABC
	adds r3, #0xFF
_0805DABC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805DCC8 @ =0x000010EE
	bl sub_80DF024
	ldr r0, _0805DCCC @ =0x0805DDD5
	str r0, [r6, #0x4C]
	ldr r4, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0805DAD4
	adds r2, #0xFF
_0805DAD4:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DADE
	adds r0, #0xFF
_0805DADE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DAEA
	adds r0, #0xFF
_0805DAEA:
	asrs r0, r0, #0x08
	movs r1, #0xA0
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	mov r10, r5
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	ldr r1, _0805DCD0 @ =0x0000408E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	mov r2, r10
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	subs r1, #0x81
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r2, r10
	ands r2, r0
	lsls r2, r2, #0x05
	movs r4, #0x21
	negs r4, r4
	ands r1, r4
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _0805DCD4 @ =0x0805DCE1
	str r0, [r5, #0x4C]
	ldr r1, _0805DCD8 @ =0x08087541
	str r1, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	subs r0, #0x02
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r4, r6, #0x0
	adds r4, #0xA4
	str r4, [sp, #0x010]
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA8
	str r0, [sp, #0x014]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x74
	str r1, [sp, #0x018]
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x08]
	movs r2, #0x10
	mov r9, r2
	mov r4, r9
	strh r4, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x06]
	ldr r0, [r6, #0x28]
	mov r12, r0
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0805DBD4
	adds r2, #0xFF
_0805DBD4:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DBDE
	adds r0, #0xFF
_0805DBDE:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DBEA
	adds r0, #0xFF
_0805DBEA:
	asrs r0, r0, #0x08
	mov r4, r8
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	mov r0, r10
	str r0, [sp, #0x008]
	mov r0, r12
	ldr r1, _0805DCDC @ =0x0000408F
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	mov r1, r10
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r0, [r3, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r1, r10
	ands r1, r0
	lsls r1, r1, #0x05
	movs r5, #0x21
	negs r5, r5
	ands r2, r5
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r0, _0805DCD4 @ =0x0805DCE1
	str r0, [r4, #0x4C]
	ldr r1, _0805DCD8 @ =0x08087541
	str r1, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	subs r0, #0x02
	movs r5, #0x00
	strh r5, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r2, [sp, #0x00C]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r5, r8
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x014]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x018]
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	mov r1, r9
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD3
	bl play_sfx_80195B4
_0805DCB6:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DCC8: .4byte 0x000010EE
_0805DCCC: .4byte sub_805DDD4
_0805DCD0: .4byte 0x0000408E
_0805DCD4: .4byte sub_805DCE0
_0805DCD8: .4byte sub_8087540
_0805DCDC: .4byte 0x0000408F
	thumb_func_start sub_805DCE0
sub_805DCE0:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrh r3, [r2, #0x04]
	movs r0, #0x04
	ldsh r1, [r2, r0]
	ldr r0, _0805DD3C @ =0x0000013F
	cmp r1, r0
	bgt _0805DD40
	adds r0, r3, #0x0
	adds r0, #0x0C
	strh r0, [r2, #0x04]
	ldr r1, [r4, #0x08]
	ldrh r0, [r1, #0x06]
	adds r0, #0x0C
	strh r0, [r1, #0x06]
	ldr r1, [r4, #0x38]
	adds r0, r1, #0x0
	subs r0, #0x80
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805DD10
	adds r0, #0xFF
_0805DD10:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805DD1C
	adds r0, #0xFF
_0805DD1C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805DD28
	adds r0, #0xFF
_0805DD28:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _0805DD4A
	.byte 0x00, 0x00
_0805DD3C: .4byte 0x0000013F
_0805DD40:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	strh r1, [r2, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
_0805DD4A:
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805DD66
	ldr r0, [r4, #0x08]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	ldr r0, _0805DD70 @ =0x0805DD75
	str r0, [r4, #0x4C]
_0805DD66:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DD70: .4byte sub_805DD74
	thumb_func_start sub_805DD74
sub_805DD74:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x14
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805DD94
	adds r0, #0xFF
_0805DD94:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805DDA0
	adds r0, #0xFF
_0805DDA0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805DDAC
	adds r0, #0xFF
_0805DDAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805DDCC
	adds r0, r4, #0x0
	bl sub_807C298
_0805DDCC:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805DDD4
sub_805DDD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DDF4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DDFC @ =0x0808750D
	str r0, [r4, #0x4C]
_0805DDF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DDFC: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0xDE, 0x05, 0x08
	thumb_func_start sub_805DE0C
sub_805DE0C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r0, [r0, #0x28]
	mov r12, r0
	mov r2, r12
	adds r2, #0xD8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DE88 @ =0x0805DE91
	str r0, [r4, #0x4C]
	ldr r0, _0805DE8C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DE88: .4byte sub_805DE90
_0805DE8C: .4byte 0x0000011B
	thumb_func_start sub_805DE90
sub_805DE90:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805DEA6
	ldr r0, _0805DEAC @ =0x0805DEB5
	str r0, [r1, #0x4C]
	ldr r0, _0805DEB0 @ =0x0000011B
	bl stop_sfx_80195A8
_0805DEA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DEAC: .4byte sub_805DEB4
_0805DEB0: .4byte 0x0000011B
	thumb_func_start sub_805DEB4
sub_805DEB4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805DED0
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DED8 @ =0x0805DEDD
	str r0, [r4, #0x4C]
_0805DED0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DED8: .4byte sub_805DEDC
	thumb_func_start sub_805DEDC
sub_805DEDC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF3A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0805DF44 @ =0x0805DF4D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805DF10
	adds r1, #0xFF
_0805DF10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805DF1A
	adds r2, #0xFF
_0805DF1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805DF24
	adds r3, #0xFF
_0805DF24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805DF48 @ =0x000010E6
	bl sub_80DF024
	movs r0, #0x90
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805DF3A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF44: .4byte sub_805DF4C
_0805DF48: .4byte 0x000010E6
	thumb_func_start sub_805DF4C
sub_805DF4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805DF7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805DF7C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805DF84 @ =0x0805DA79
	str r0, [r4, #0x4C]
_0805DF7C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DF84: .4byte sub_805DA78
	thumb_func_start sub_805DF88
sub_805DF88:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805DFA4
	b _0805E528
_0805DFA4:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805DFB8
	adds r1, #0xFF
_0805DFB8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805DFC2
	adds r2, #0xFF
_0805DFC2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805DFCC
	adds r3, #0xFF
_0805DFCC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805E0A4 @ =0x000012E2
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805DFE0
	adds r0, #0xFF
_0805DFE0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DFEE
	adds r0, #0xFF
_0805DFEE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DFFA
	adds r0, #0xFF
_0805DFFA:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E0A8 @ =0x0000412E
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805E0AC @ =0x03000E14
	movs r2, #0x01
	strb r4, [r0, #0x00]
	ldr r1, _0805E0B0 @ =0x03000E15
	movs r0, #0x00
	strb r0, [r1, #0x00]
	str r5, [r6, #0x30]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x77
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r5
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r0, _0805E0B4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r2, r6, #0x0
	adds r2, #0x74
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r7, #0x00
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r3, [sp, #0x010]
	str r2, [sp, #0x00C]
	cmp r0, #0x01
	beq _0805E138
	cmp r0, #0x01
	bgt _0805E0B8
	cmp r0, #0x00
	beq _0805E0C0
	b _0805E264
_0805E0A4: .4byte 0x000012E2
_0805E0A8: .4byte 0x0000412E
_0805E0AC: .4byte 0x03000E14
_0805E0B0: .4byte 0x03000E15
_0805E0B4: .4byte sub_8087540
_0805E0B8:
	cmp r0, #0x02
	bne _0805E0BE
	b _0805E1D0
_0805E0BE:
	b _0805E264
_0805E0C0:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x38]
	ldr r3, _0805E130 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x88
	ldr r0, [r6, #0x3C]
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r8, r0
	ldr r0, [r6, #0x40]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	subs r0, #0x10
	str r7, [r0, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0805E104
	adds r0, #0xFF
_0805E104:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	ldr r0, [r3, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0805E112
	adds r0, #0xFF
_0805E112:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r5, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	ldr r0, _0805E134 @ =0x0805E551
	b _0805E262
_0805E130: .4byte 0xFFFFF000
_0805E134: .4byte sub_805E550
_0805E138:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E140
	adds r0, #0xFF
_0805E140:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E152
	adds r0, #0xFF
_0805E152:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E164
	adds r0, #0xFF
_0805E164:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r4, r8
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	movs r4, #0x00
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x12
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x0C
	str r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _0805E1CC @ =0x0805E8B5
	b _0805E262
	.byte 0x00, 0x00
_0805E1CC: .4byte sub_805E8B4
_0805E1D0:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E1D8
	adds r0, #0xFF
_0805E1D8:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E1EA
	adds r0, #0xFF
_0805E1EA:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E1FC
	adds r0, #0xFF
_0805E1FC:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	mov r4, r8
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	movs r4, #0x00
	ldsh r0, [r3, r4]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x12
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r1, #0x0C
	movs r0, #0xB0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _0805E538 @ =0x0805EDE5
_0805E262:
	str r0, [r5, #0x4C]
_0805E264:
	adds r4, r5, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r7, #0x07
_0805E2A0:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r7, #0x04
	cmp r7, #0x00
	bge _0805E2A0
	movs r1, #0x00
	mov r8, r1
	str r1, [r0, #0x00]
	ldr r1, [r5, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E2EE
	adds r0, #0xFF
_0805E2EE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0805E2FC
	adds r3, #0xFF
_0805E2FC:
	asrs r3, r3, #0x08
	adds r3, #0x02
	mov r4, r8
	str r4, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E53C @ =0x0000700C
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	mov r10, r2
	mov r3, r10
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	mov r9, r0
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	movs r0, #0x7F
	strb r0, [r1, #0x00]
	mov r1, r8
	str r1, [r4, #0x4C]
	ldr r1, [r4, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E350
	adds r0, #0xFF
_0805E350:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E35E
	adds r0, #0xFF
_0805E35E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E36A
	adds r0, #0xFF
_0805E36A:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r7, #0x01
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E540 @ =0x0000412F
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r4, r5, #0x0
	adds r4, #0x77
	adds r2, r7, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r4, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r7, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r3, #0x21
	negs r3, r3
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #0x00]
	ldr r4, _0805E544 @ =0x08087541
	str r4, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	mov r0, r9
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, #0x28
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E3F4
	adds r0, #0xFF
_0805E3F4:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E406
	adds r0, #0xFF
_0805E406:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E418
	adds r0, #0xFF
_0805E418:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	mov r2, r8
	strh r2, [r0, #0x00]
	ldr r3, _0805E548 @ =0x0805F49D
	mov r8, r3
	str r3, [r5, #0x4C]
	ldr r1, [r5, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E43A
	adds r0, #0xFF
_0805E43A:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E448
	adds r0, #0xFF
_0805E448:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E454
	adds r0, #0xFF
_0805E454:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805E540 @ =0x0000412F
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	mov r2, r10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [sp, #0x010]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r0, [r3, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, [sp, #0x010]
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r1, r7, #0x0
	ands r1, r0
	lsls r1, r1, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r1, _0805E544 @ =0x08087541
	str r1, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r2, [sp, #0x00C]
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805E4E0
	adds r0, #0xFF
_0805E4E0:
	asrs r0, r0, #0x08
	subs r0, #0x10
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805E4F2
	adds r0, #0xFF
_0805E4F2:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805E504
	adds r0, #0xFF
_0805E504:
	asrs r0, r0, #0x08
	adds r0, #0x30
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	mov r3, r8
	str r3, [r4, #0x4C]
	ldr r0, _0805E54C @ =0x0805F555
	str r0, [r6, #0x4C]
	movs r0, #0x88
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E528:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E538: .4byte sub_805EDE4
_0805E53C: .4byte 0x0000700C
_0805E540: .4byte 0x0000412F
_0805E544: .4byte sub_8087540
_0805E548: .4byte sub_805F49C
_0805E54C: .4byte sub_805F554
	thumb_func_start sub_805E550
sub_805E550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x88
	ldr r2, [r7, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r3, #0xAC
	adds r3, r3, r6
	mov r10, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	str r0, [sp, #0x004]
	movs r3, #0x9C
	adds r3, r3, r6
	mov r9, r3
	ldr r0, [r3, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	ldr r3, [r5, #0x00]
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r7, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5B2
	adds r1, #0xFF
_0805E5B2:
	asrs r2, r1, #0x08
	ldr r1, _0805E64C @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E5CC
	adds r0, #0x3F
_0805E5CC:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	bge _0805E5E2
	adds r1, #0xFF
_0805E5E2:
	asrs r2, r1, #0x08
	ldr r1, _0805E650 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E5F8
	adds r0, #0x3F
_0805E5F8:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x00]
	cmp r0, #0x37
	bgt _0805E610
	adds r0, #0x01
	str r0, [r1, #0x00]
_0805E610:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	adds r0, #0x02
	ands r0, r5
	strh r0, [r2, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x07
	cmp r0, r1
	bgt _0805E63C
	ldr r0, [r7, #0x00]
	cmp r0, r1
	bgt _0805E63C
	str r1, [r3, #0x00]
	str r1, [r7, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xA4
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _0805E654 @ =0x0805E659
	str r0, [r6, #0x4C]
_0805E63C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E64C: .4byte 0x08198584
_0805E650: .4byte 0x08198504
_0805E654: .4byte sub_805E658
	thumb_func_start sub_805E658
sub_805E658:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r6
	mov r9, r3
	ldr r2, [r3, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r7, [r5, #0x00]
	mov r12, r7
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r10, r0
	movs r3, #0x00
	ldsh r0, [r0, r3]
	str r0, [sp, #0x004]
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r3, r9
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	mov r1, r10
	ldrh r0, [r1, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	mov r3, r10
	strh r0, [r3, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x37
	bgt _0805E6C8
	adds r0, #0x01
	str r0, [r7, #0x00]
_0805E6C8:
	adds r1, r6, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0805E71C
	ldr r0, _0805E72C @ =0x0805E731
	str r0, [r6, #0x4C]
	mov r7, r8
	ldr r0, [r7, #0x00]
	negs r0, r0
	cmp r0, #0x00
	bge _0805E6E6
	adds r0, #0xFF
_0805E6E6:
	lsls r0, r0, #0x08
	asrs r2, r0, #0x10
	mov r0, r9
	ldr r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0805E6FA
	adds r0, #0xFF
_0805E6FA:
	lsls r1, r0, #0x08
	asrs r1, r1, #0x10
	adds r0, r2, #0x0
	bl sub_81DA690
	adds r1, r6, #0x0
	adds r1, #0xA8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r1, #0x00]
	subs r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	mov r1, r10
	strh r0, [r1, #0x00]
_0805E71C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E72C: .4byte sub_805E730
	thumb_func_start sub_805E730
sub_805E730:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	subs r0, #0x01
	strh r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _0805E7A2
	ldr r0, _0805E7B0 @ =0x0805E7B9
	str r0, [r7, #0x4C]
	ldr r0, _0805E7B4 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805E7A2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E7B0: .4byte sub_805E7B8
_0805E7B4: .4byte 0x0000010F
	thumb_func_start sub_805E7B8
sub_805E7B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r6, #0x0
	adds r7, #0x84
	ldr r1, [r7, #0x00]
	movs r0, #0x88
	adds r0, r0, r6
	mov r8, r0
	ldr r2, [r0, #0x00]
	mov r12, r2
	adds r5, r6, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r10, r3
	movs r4, #0x22
	str r4, [sp, #0x000]
	movs r0, #0xAC
	adds r0, r0, r6
	mov r9, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	mov r2, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r5, #0x00]
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_805F508
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E81A
	adds r0, #0xFF
_0805E81A:
	asrs r4, r0, #0x08
	ldr r1, _0805E8AC @ =0x08198584
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0xFF
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805E834
	adds r0, #0x3F
_0805E834:
	asrs r0, r0, #0x06
	adds r1, r4, #0x0
	muls r1, r0
	ldr r0, [r7, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805E848
	adds r0, #0xFF
_0805E848:
	asrs r2, r0, #0x08
	ldr r1, _0805E8B0 @ =0x08198504
	ldr r0, [r3, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805E85E
	adds r0, #0x3F
_0805E85E:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	mov r3, r9
	ldrh r0, [r3, #0x00]
	adds r0, #0x04
	ands r0, r5
	strh r0, [r3, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0805E89C
	ldr r0, [r6, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r6, #0x0
	bl sub_807C298
_0805E89C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805E8AC: .4byte 0x08198584
_0805E8B0: .4byte 0x08198504
	thumb_func_start sub_805E8B4
sub_805E8B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805E97C @ =0xFFFFFE80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r3, r7, #0x0
	adds r3, #0xB0
	str r3, [sp, #0x010]
	movs r0, #0x00
	ldsh r4, [r3, r0]
	lsls r4, r4, #0x08
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805E96A
	adds r0, r1, #0x0
	subs r0, #0x30
	str r0, [r2, #0x00]
	movs r0, #0x00
	ldr r3, [sp, #0x010]
	strh r0, [r3, #0x00]
	ldr r0, _0805E980 @ =0x0805E985
	str r0, [r7, #0x4C]
_0805E96A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805E97C: .4byte 0xFFFFFE80
_0805E980: .4byte sub_805E984
	thumb_func_start sub_805E984
sub_805E984:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805E9FA
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EA08 @ =0x0805EA0D
	str r0, [r7, #0x4C]
_0805E9FA:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EA08: .4byte sub_805EA0C
	thumb_func_start sub_805EA0C
sub_805EA0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EA98
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EA86
	adds r0, #0xFF
_0805EA86:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _0805EAA8 @ =0x0805EAB1
	str r0, [r7, #0x4C]
	ldr r0, _0805EAAC @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EA98:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EAA8: .4byte sub_805EAB0
_0805EAAC: .4byte 0x0000010F
	thumb_func_start sub_805EAB0
sub_805EAB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	subs r2, r2, r1
	str r2, [r6, #0x00]
	adds r0, #0x06
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r10, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r0, r10
	str r4, [r0, #0x00]
	ldr r1, [r6, #0x00]
	movs r2, #0x8C
	adds r2, r2, r7
	mov r9, r2
	ldr r3, [r2, #0x00]
	movs r0, #0x22
	mov r8, r0
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r3, r10
	ldr r2, [r3, #0x00]
	mov r0, r9
	ldr r3, [r0, #0x00]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, _0805EB74 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r6, #0x00]
	cmp r1, r0
	bge _0805EB64
	ldr r0, _0805EB78 @ =0x0805EB7D
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	movs r0, #0x30
	strh r0, [r1, #0x00]
_0805EB64:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EB74: .4byte 0xFFFFD000
_0805EB78: .4byte sub_805EB7C
	thumb_func_start sub_805EB7C
sub_805EB7C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r9, r0
	ldr r1, [r0, #0x00]
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	ldr r2, [r3, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r0, [r6, #0x00]
	mov r12, r0
	movs r5, #0x22
	str r5, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r9
	ldr r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x00]
	ldr r3, [r6, #0x00]
	str r5, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EBF2
	ldr r0, _0805EC00 @ =0x0805EC05
	str r0, [r7, #0x4C]
	movs r0, #0x00
	strh r0, [r1, #0x00]
_0805EBF2:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EC00: .4byte sub_805EC04
	thumb_func_start sub_805EC04
sub_805EC04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r12, r3
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	ldr r3, [r5, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EC8C
	ldr r0, _0805EC9C @ =0x0805ECA1
	str r0, [r7, #0x4C]
	mov r3, r9
	strh r3, [r1, #0x00]
	subs r1, #0x0A
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	subs r0, #0x71
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EC8C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EC9C: .4byte sub_805ECA0
	thumb_func_start sub_805ECA0
sub_805ECA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	movs r0, #0x84
	adds r0, r0, r7
	mov r10, r0
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xAE
	str r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r4, [r0, r5]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r5, r8
	str r4, [r5, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r2, #0xB2
	adds r2, r2, r7
	mov r9, r2
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	mov r3, r10
	ldr r1, [r3, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	mov r8, r0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r5, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	subs r0, #0x18
	lsls r0, r0, #0x08
	mov r2, r10
	ldr r1, [r2, #0x00]
	cmp r1, r0
	ble _0805EDA4
	ldr r1, _0805ED80 @ =0x03000E15
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0805ED84 @ =0xFFFFFEE0
	adds r0, r0, r3
	str r0, [r6, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	ble _0805ED88
	subs r0, r1, #0x1
	strh r0, [r4, #0x00]
	b _0805EDA4
	.byte 0x00, 0x00
_0805ED80: .4byte 0x03000E15
_0805ED84: .4byte 0xFFFFFEE0
_0805ED88:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDA4:
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	cmp r0, r1
	ble _0805EDD4
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDD4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805EDE4
sub_805EDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805EEB4 @ =0xFFFFFD80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	adds r7, r5, #0x0
	adds r7, #0x88
	muls r0, r2
	bl __divsi3
	subs r2, r4, r0
	str r2, [r7, #0x00]
	ldr r1, [r6, #0x00]
	movs r3, #0x8C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	movs r3, #0x22
	mov r9, r3
	str r3, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EE5C
	adds r0, #0xFF
_0805EE5C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	ldr r2, [r7, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805EEA2
	str r1, [r6, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0805EEB8 @ =0x0805EEBD
	str r0, [r5, #0x4C]
_0805EEA2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EEB4: .4byte 0xFFFFFD80
_0805EEB8: .4byte sub_805EEBC
	thumb_func_start sub_805EEBC
sub_805EEBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r10, r7
	ldr r2, [r7, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EEFC
	adds r0, #0xFF
_0805EEFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r7, r10
	ldr r2, [r7, #0x00]
	ldr r3, [r6, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EF3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EF4C @ =0x0805EF51
	str r0, [r4, #0x4C]
_0805EF3C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EF4C: .4byte sub_805EF50
	thumb_func_start sub_805EF50
sub_805EF50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	movs r7, #0x8C
	adds r7, r7, r5
	mov r10, r7
	ldr r3, [r7, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r7, #0x00
	ldsh r0, [r4, r7]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EF90
	adds r0, #0xFF
_0805EF90:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805F016
	ldr r1, [r6, #0x00]
	ldr r0, _0805EFDC @ =0x00005FFF
	cmp r1, r0
	bgt _0805EFE0
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0805EFE6
	.byte 0x00, 0x00
_0805EFDC: .4byte 0x00005FFF
_0805EFE0:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, _0805F028 @ =0xFFFFE000
_0805EFE6:
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x10
	bl __divsi3
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r0, _0805F02C @ =0x0805F035
	str r0, [r5, #0x4C]
	ldr r0, _0805F030 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805F016:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F028: .4byte 0xFFFFE000
_0805F02C: .4byte sub_805F034
_0805F030: .4byte 0x0000010F
	thumb_func_start sub_805F034
sub_805F034:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r6, r4, #0x0
	adds r6, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	subs r1, r0, r1
	str r1, [r6, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r8, r7
	ldr r2, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F082
	adds r0, #0xFF
_0805F082:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _0805F0C8 @ =0x000007FF
	cmp r1, r0
	bgt _0805F0B6
	ldr r0, _0805F0CC @ =0x0805F0D1
	str r0, [r4, #0x4C]
_0805F0B6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F0C8: .4byte 0x000007FF
_0805F0CC: .4byte sub_805F0D0
	thumb_func_start sub_805F0D0
sub_805F0D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _0805F11C
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r7, _0805F118 @ =0xFFFFFF00
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	bgt _0805F14C
	b _0805F148
	.byte 0x00, 0x00
_0805F118: .4byte 0xFFFFFF00
_0805F11C:
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	ldr r1, _0805F1C8 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	blt _0805F14C
_0805F148:
	ldr r0, _0805F1CC @ =0x0805F1D1
	str r0, [r4, #0x4C]
_0805F14C:
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r7, [r6, #0x00]
	mov r12, r7
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805F17A
	adds r0, #0xFF
_0805F17A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r2, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r0, #0x51
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805F1C8: .4byte 0xFFFFFF00
_0805F1CC: .4byte sub_805F1D0
	thumb_func_start sub_805F1D0
sub_805F1D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r7, r4, #0x0
	adds r7, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r7, #0x00]
	adds r1, r0, r1
	str r1, [r7, #0x00]
	movs r2, #0x88
	adds r2, r2, r4
	mov r9, r2
	ldr r2, [r2, #0x00]
	movs r3, #0x8C
	adds r3, r3, r4
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F220
	adds r0, #0xFF
_0805F220:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	mov r3, r8
	ldr r3, [r3, #0x00]
	mov r8, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, _0805F278 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	adds r5, r2, #0x0
	cmp r1, r0
	ble _0805F29C
	ldr r0, _0805F27C @ =0x03000E15
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	ble _0805F280
	subs r0, r1, #0x1
	strh r0, [r6, #0x00]
	b _0805F29C
_0805F278: .4byte 0xFFFFD000
_0805F27C: .4byte 0x03000E15
_0805F280:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F29C:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _0805F2C4
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F2C4:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805F2D4
sub_805F2D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	str r1, [sp, #0x00C]
	mov r10, r2
	str r3, [sp, #0x010]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F328
	ldr r6, _0805F48C @ =0x03000E14
	ldr r4, _0805F490 @ =0x03000E15
	ldrb r0, [r6, #0x00]
	ldrb r1, [r4, #0x00]
	cmp r0, r1
	beq _0805F328
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldrb r0, [r4, #0x00]
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bne _0805F328
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0805F328:
	ldr r2, _0805F494 @ =0x08198584
	mov r9, r2
	movs r1, #0xFF
	ldr r0, [sp, #0x03C]
	ands r0, r1
	lsls r7, r0, #0x01
	adds r0, r7, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F340
	adds r0, #0x3F
_0805F340:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r6
	adds r4, r1, #0x0
	ldr r0, [sp, #0x040]
	ands r4, r0
	lsls r3, r4, #0x01
	mov r1, r9
	adds r0, r3, r1
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _0805F35E
	adds r0, #0x3F
_0805F35E:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F368
	adds r0, #0xFF
_0805F368:
	asrs r2, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r2
	ldr r1, _0805F498 @ =0x08198504
	adds r0, r3, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F37C
	adds r0, #0x3F
_0805F37C:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r3, [sp, #0x00C]
	adds r2, r0, r3
	str r2, [r5, #0x10]
	mov r0, r10
	adds r3, r6, r0
	str r3, [r5, #0x14]
	adds r0, r7, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F398
	adds r0, #0x3F
_0805F398:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r6, [sp, #0x010]
	adds r1, r0, r6
	str r1, [r5, #0x18]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F3AC
	adds r0, #0xFF
_0805F3AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F3B8
	adds r0, #0xFF
_0805F3B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805F3C4
	adds r0, #0xFF
_0805F3C4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x10]
	mov r2, r10
	str r2, [r0, #0x14]
	movs r1, #0x00
	str r1, [r0, #0x18]
	adds r5, #0x0C
	mov r8, r1
	cmp r5, #0x00
	beq _0805F47A
	str r4, [sp, #0x014]
_0805F3EC:
	mov r3, r8
	lsls r0, r3, #0x08
	movs r1, #0x0B
	bl __divsi3
	ldr r6, [sp, #0x03C]
	adds r0, r6, r0
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	mov r12, r0
	add r0, r9
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0805F40E
	adds r0, #0x3F
_0805F40E:
	asrs r0, r0, #0x06
	ldr r3, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r3
	ldr r6, [sp, #0x014]
	lsls r4, r6, #0x01
	mov r1, r9
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F428
	adds r0, #0x3F
_0805F428:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F432
	adds r0, #0xFF
_0805F432:
	asrs r3, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r3
	ldr r7, _0805F498 @ =0x08198504
	adds r0, r4, r7
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F446
	adds r0, #0x3F
_0805F446:
	asrs r0, r0, #0x06
	muls r0, r3
	ldr r2, [sp, #0x00C]
	adds r1, r0, r2
	mov r3, r10
	adds r2, r6, r3
	mov r6, r12
	adds r0, r6, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F460
	adds r0, #0x3F
_0805F460:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	str r1, [r5, #0x04]
	str r2, [r5, #0x08]
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	movs r6, #0x01
	add r8, r6
	cmp r5, #0x00
	bne _0805F3EC
_0805F47A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F48C: .4byte 0x03000E14
_0805F490: .4byte 0x03000E15
_0805F494: .4byte 0x08198584
_0805F498: .4byte 0x08198504
	thumb_func_start sub_805F49C
sub_805F49C:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x08
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r2, r0, #0x08
	str r2, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	str r3, [r4, #0x18]
	cmp r1, #0x00
	bge _0805F4C8
	adds r1, #0xFF
_0805F4C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F4D4
	adds r0, #0xFF
_0805F4D4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F4E0
	adds r0, #0xFF
_0805F4E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805F500
	adds r0, r4, #0x0
	bl sub_807C298
_0805F500:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805F508
sub_805F508:
	push {r4, r5, r6, lr}
	adds r4, r3, #0x0
	ldr r6, [sp, #0x010]
	ldr r3, [r0, #0x30]
	ldr r5, [r3, #0x30]
	cmp r1, #0x00
	bge _0805F518
	adds r1, #0xFF
_0805F518:
	asrs r0, r1, #0x08
	movs r1, #0xAE
	strh r0, [r1, r5]
	strh r0, [r1, r3]
	cmp r2, #0x00
	bge _0805F526
	adds r2, #0xFF
_0805F526:
	asrs r0, r2, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _0805F53C
	adds r1, #0xFF
_0805F53C:
	asrs r2, r1, #0x08
	adds r1, r2, r6
	adds r0, r3, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	subs r1, r2, r6
	adds r0, r5, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_805F554
sub_805F554:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F59C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0805F584
	ldr r0, _0805F580 @ =0x0808750D
	b _0805F59A
	.byte 0x00, 0x00
_0805F580: .4byte sub_808750C
_0805F584:
	cmp r0, #0x01
	bne _0805F590
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	b _0805F596
_0805F590:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x96
_0805F596:
	str r0, [r1, #0x00]
	ldr r0, _0805F5A4 @ =0x0805F5E5
_0805F59A:
	str r0, [r4, #0x4C]
_0805F59C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F5A4: .4byte sub_805F5E4
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x02, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x05, 0xF6, 0x05, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x05, 0xF6, 0x05, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x05, 0xF6, 0x05, 0x08
	thumb_func_start sub_805F5E4
sub_805F5E4:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0805F5FA
	ldr r0, _0805F600 @ =0x0808750D
	str r0, [r2, #0x4C]
_0805F5FA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F600: .4byte sub_808750C
	thumb_func_start sub_805F604
sub_805F604:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805F62C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0805F634 @ =0x0805F639
	str r0, [r4, #0x4C]
_0805F62C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F634: .4byte sub_805F638
	thumb_func_start sub_805F638
sub_805F638:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F680
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805F65E
	adds r1, #0xFF
_0805F65E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805F668
	adds r2, #0xFF
_0805F668:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805F672
	adds r3, #0xFF
_0805F672:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F688 @ =0x000012D5
	bl sub_80DF024
	ldr r0, _0805F68C @ =0x0805F691
	str r0, [r4, #0x4C]
_0805F680:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0805F688: .4byte 0x000012D5
_0805F68C: .4byte sub_805F690
	thumb_func_start sub_805F690
sub_805F690:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F6B0
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805F6B8 @ =0x0805DF89
	str r0, [r4, #0x4C]
_0805F6B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F6B8: .4byte sub_805DF88
	thumb_func_start sub_805F6BC
sub_805F6BC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F766
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3A
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805F72C
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F700
	adds r0, #0xFF
_0805F700:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F70E
	adds r0, #0xFF
_0805F70E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F71C
	adds r0, #0xFF
_0805F71C:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F728 @ =0x00000DCE
	bl sub_80DF024
	b _0805F762
_0805F728: .4byte 0x00000DCE
_0805F72C:
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F73C
	adds r0, #0xFF
_0805F73C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F74A
	adds r0, #0xFF
_0805F74A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F758
	adds r0, #0xFF
_0805F758:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805F770 @ =0x00000E1F
	bl sub_80DF024
_0805F762:
	ldr r0, _0805F774 @ =0x0805F779
	str r0, [r4, #0x4C]
_0805F766:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F770: .4byte 0x00000E1F
_0805F774: .4byte sub_805F778
	thumb_func_start sub_805F778
sub_805F778:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805F78C
	b _0805F8FE
_0805F78C:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805F7A0
	adds r1, #0xFF
_0805F7A0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805F7AA
	adds r2, #0xFF
_0805F7AA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805F7B4
	adds r3, #0xFF
_0805F7B4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805F8CC @ =0x00000E64
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805F7C8
	adds r0, #0xFF
_0805F7C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x20
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805F7D6
	adds r0, #0xFF
_0805F7D6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805F7E2
	adds r0, #0xFF
_0805F7E2:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805F8D0 @ =0x00004132
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0805F8D4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0805F8D8 @ =0x0805FC81
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x38]
	ldr r2, _0805F8DC @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805F8E4
	ldr r0, _0805F8E0 @ =0x0805FAE9
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x40
	b _0805F8EE
	.byte 0x00, 0x00
_0805F8CC: .4byte 0x00000E64
_0805F8D0: .4byte 0x00004132
_0805F8D4: .4byte sub_8087540
_0805F8D8: .4byte sub_805FC80
_0805F8DC: .4byte 0xFFFFE000
_0805F8E0: .4byte sub_805FAE8
_0805F8E4:
	ldr r0, _0805F908 @ =0x0805FBB5
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x02
_0805F8EE:
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _0805F90C @ =0x0805FDB9
	str r0, [r6, #0x4C]
_0805F8FE:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F908: .4byte sub_805FBB4
_0805F90C: .4byte sub_805FDB8
	thumb_func_start sub_805F910
sub_805F910:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F9FC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r6, #0x01
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0805FA04 @ =0x0805FCC9
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	adds r5, r4, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r5, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0805F958
	adds r2, #0xFF
_0805F958:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _0805F962
	adds r3, #0xFF
_0805F962:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0805F96C
	adds r0, #0xFF
_0805F96C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805FA08 @ =0x00004131
	bl sub_807BF34
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	mov r0, r12
	strb r1, [r0, #0x00]
	ldr r0, _0805FA0C @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _0805FA10 @ =0x0805FD41
	str r0, [r3, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0805FA14 @ =0x0805FA19
	str r0, [r4, #0x4C]
_0805F9FC:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805FA04: .4byte sub_805FCC8
_0805FA08: .4byte 0x00004131
_0805FA0C: .4byte sub_8087540
_0805FA10: .4byte sub_805FD40
_0805FA14: .4byte sub_805FA18
	thumb_func_start sub_805FA18
sub_805FA18:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x9C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r3, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xA0
	adds r1, #0x04
	ldr r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	subs r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0805FA4C
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x10
	b _0805FA54
_0805FA4C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x13
_0805FA54:
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r4, #0x10]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	muls r0, r2
	adds r1, r3, #0x0
	bl __divsi3
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r2, #0x0
	cmp r0, #0x07
	ble _0805FAB8
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0805FA9A
	adds r1, #0xFF
_0805FA9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0805FAA4
	adds r2, #0xFF
_0805FAA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0805FAAE
	adds r3, #0xFF
_0805FAAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0805FAE0 @ =0x00000E72
	bl sub_80DF024
_0805FAB8:
	ldr r1, [r4, #0x10]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FAD6
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x88
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _0805FAE4 @ =0x0805FD5D
	str r0, [r4, #0x4C]
_0805FAD6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FAE0: .4byte 0x00000E72
_0805FAE4: .4byte sub_805FD5C
	thumb_func_start sub_805FAE8
sub_805FAE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x0C
	strh r0, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _0805FB32
	adds r4, #0xFF
_0805FB32:
	asrs r0, r4, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805FB3E
	adds r0, #0xFF
_0805FB3E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0805FB4A
	adds r0, #0xFF
_0805FB4A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	add r1, sp, #0x008
	add r2, sp, #0x00C
	add r0, sp, #0x004
	movs r3, #0x00
	bl sub_807FC08
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0B
	ble _0805FB96
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805FB78
	adds r1, #0xFF
_0805FB78:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805FB82
	adds r2, #0xFF
_0805FB82:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805FB8C
	adds r3, #0xFF
_0805FB8C:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805FBB0 @ =0x00000E7A
	bl sub_80DF024
_0805FB96:
	ldr r1, [sp, #0x004]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FBA6
	adds r0, r6, #0x0
	bl sub_807C298
_0805FBA6:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FBB0: .4byte 0x00000E7A
	thumb_func_start sub_805FBB4
sub_805FBB4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xA4
	adds r0, #0x84
	ldr r1, [r3, #0x00]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r5, r6, #0x0
	adds r5, #0xA8
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r2, [r5, #0x00]
	ldr r0, [r0, #0x00]
	subs r2, r2, r0
	adds r4, r6, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	strh r0, [r4, #0x00]
	movs r7, #0x00
	ldsh r0, [r4, r7]
	ldr r4, [r6, #0x10]
	subs r4, r4, r0
	str r4, [r6, #0x10]
	ldr r0, [r3, #0x00]
	subs r0, r4, r0
	muls r0, r2
	bl __divsi3
	ldr r1, [r5, #0x00]
	adds r1, r0, r1
	str r1, [r6, #0x14]
	cmp r4, #0x00
	bge _0805FBFE
	adds r4, #0xFF
_0805FBFE:
	asrs r0, r4, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805FC0A
	adds r0, #0xFF
_0805FC0A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _0805FC16
	adds r0, #0xFF
_0805FC16:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	add r1, sp, #0x008
	add r2, sp, #0x00C
	add r0, sp, #0x004
	movs r3, #0x00
	bl sub_807FC08
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0B
	ble _0805FC62
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805FC44
	adds r1, #0xFF
_0805FC44:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805FC4E
	adds r2, #0xFF
_0805FC4E:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805FC58
	adds r3, #0xFF
_0805FC58:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805FC7C @ =0x00000E7A
	bl sub_80DF024
_0805FC62:
	ldr r1, [sp, #0x004]
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0805FC72
	adds r0, r6, #0x0
	bl sub_807C298
_0805FC72:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FC7C: .4byte 0x00000E7A
	thumb_func_start sub_805FC80
sub_805FC80:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _0805FCC0
	adds r3, r4, #0x0
	adds r3, #0xAE
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	adds r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FCBC @ =0x0805FE75
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0805FCC2
_0805FCBC: .4byte sub_805FE74
_0805FCC0:
	adds r0, r2, #0x0
_0805FCC2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_805FCC8
sub_805FCC8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0805FD38
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FD34 @ =0x0805FEF5
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0805FD3A
_0805FD34: .4byte sub_805FEF4
_0805FD38:
	adds r0, r5, #0x0
_0805FD3A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_805FD40
sub_805FD40:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x28]
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0805FD56
	adds r0, r1, #0x0
	bl sub_807C298
_0805FD56:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805FD5C
sub_805FD5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0805FD74
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x10
	b _0805FD7C
_0805FD74:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	adds r0, #0x13
_0805FD7C:
	strh r0, [r1, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r1, [r4, #0x10]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bge _0805FDAE
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FDB4 @ =0x0805FF31
	str r0, [r4, #0x4C]
_0805FDAE:
	pop {r4}
	pop {r0}
	bx r0
_0805FDB4: .4byte sub_805FF30
	thumb_func_start sub_805FDB8
sub_805FDB8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805FDD8
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FDE0 @ =0x0805F911
	str r0, [r4, #0x4C]
_0805FDD8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FDE0: .4byte sub_805F910
	.byte 0x03, 0x1C, 0x19, 0x1C, 0xAE, 0x31, 0x80, 0x20, 0x40, 0x00, 0x08, 0x80, 0x1A, 0x1C, 0x84, 0x32
	.byte 0xD8, 0x6A, 0x81, 0x6A, 0x08, 0x1C, 0xD8, 0x30, 0x00, 0x68, 0x10, 0x60, 0x04, 0x32, 0xDC, 0x31
	.byte 0x08, 0x68, 0x10, 0x60, 0x19, 0x1C, 0x9C, 0x31, 0x18, 0x69, 0x08, 0x60, 0x04, 0x31, 0x58, 0x69
	.byte 0x08, 0x60, 0x10, 0x31, 0x01, 0x20, 0x08, 0x80, 0x01, 0x48, 0xD8, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x59, 0xFF, 0x05, 0x08, 0x84, 0x46, 0x61, 0x46, 0xAE, 0x31, 0x00, 0x23, 0x80, 0x20, 0x40, 0x00
	.byte 0x08, 0x80, 0x62, 0x46, 0x84, 0x32, 0x61, 0x46, 0xC8, 0x6A, 0x81, 0x6A, 0x08, 0x1C, 0xD8, 0x30
	.byte 0x00, 0x68, 0x10, 0x60, 0x04, 0x32, 0xDC, 0x31, 0x08, 0x68, 0x10, 0x60, 0x61, 0x46, 0x9C, 0x31
	.byte 0x62, 0x46, 0x10, 0x69, 0x08, 0x60, 0x04, 0x31, 0x50, 0x69, 0x08, 0x60, 0x60, 0x46, 0xB0, 0x30
	.byte 0x03, 0x80, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x70, 0x47, 0x00, 0x00, 0x59, 0xFF, 0x05, 0x08
	thumb_func_start sub_805FE74
sub_805FE74:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xB2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldrh r0, [r2, #0x00]
	adds r0, #0x20
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805FEA2
	adds r0, #0xFF
_0805FEA2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805FEAE
	adds r0, #0xFF
_0805FEAE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805FEBA
	adds r0, #0xFF
_0805FEBA:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r1, [sp, #0x004]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0805FEDC
	adds r0, r4, #0x0
	bl sub_807C298
	b _0805FEEC
_0805FEDC:
	ldr r1, [sp, #0x000]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0805FEEC
	adds r0, r4, #0x0
	bl sub_807C298
_0805FEEC:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_805FEF4
sub_805FEF4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0805FF26
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r0, r4, #0x0
	adds r0, #0xB2
	strh r3, [r0, #0x00]
	subs r0, #0x16
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FF2C @ =0x0805FF31
	str r0, [r4, #0x4C]
_0805FF26:
	pop {r4}
	pop {r0}
	bx r0
_0805FF2C: .4byte sub_805FF30
	thumb_func_start sub_805FF30
sub_805FF30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805FF50
	ldr r1, [r4, #0x68]
	cmp r1, #0x00
	beq _0805FF4C
	adds r0, r4, #0x0
	bl _call_via_r1
_0805FF4C:
	movs r0, #0x00
	str r0, [r4, #0x6C]
_0805FF50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805FF58
sub_805FF58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0805FF74
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0805FF7C @ =0x0805F6BD
	str r0, [r4, #0x4C]
_0805FF74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805FF7C: .4byte sub_805F6BC
	thumb_func_start sub_805FF80
sub_805FF80:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060086
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _0805FFCE
	cmp r1, #0x01
	bgt _0805FFA6
	cmp r1, #0x00
	beq _0805FFAC
	b _08060016
_0805FFA6:
	cmp r1, #0x02
	beq _0805FFF0
	b _08060016
_0805FFAC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	subs r0, #0x02
	b _0806000A
_0805FFCE:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	subs r0, #0x02
	b _0806000A
_0805FFF0:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
_0806000A:
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
_08060016:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08060060
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _0806005C @ =0x08060325
	b _08060084
	.byte 0x00, 0x00
_0806005C: .4byte sub_8060324
_08060060:
	cmp r0, #0x01
	bne _08060078
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _08060074 @ =0x08060289
	b _08060084
	.byte 0x00, 0x00
_08060074: .4byte sub_8060288
_08060078:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x5C
	bl play_sfx_80195B4
	ldr r0, _0806008C @ =0x0806025D
_08060084:
	str r0, [r4, #0x4C]
_08060086:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806008C: .4byte sub_806025C
	thumb_func_start sub_8060090
sub_8060090:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806016C
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080600B8
	adds r0, #0xFF
_080600B8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080600C6
	adds r3, #0xFF
_080600C6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080600D0
	adds r0, #0xFF
_080600D0:
	asrs r0, r0, #0x08
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08060174 @ =0x0000410E
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r5, r0
	lsls r5, r5, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r5
	strb r1, [r3, #0x00]
	ldr r0, _08060178 @ =0x0806021D
	str r0, [r4, #0x4C]
	ldr r0, _0806017C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060180 @ =0x080601D5
	str r0, [r4, #0x58]
	ldr r0, _08060184 @ =0x0806018D
	str r0, [r4, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r4, #0x74
	strb r0, [r4, #0x00]
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08060188 @ =0x080602B5
	str r0, [r6, #0x4C]
_0806016C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08060174: .4byte 0x0000410E
_08060178: .4byte sub_806021C
_0806017C: .4byte sub_8087540
_08060180: .4byte sub_80601D4
_08060184: .4byte sub_806018C
_08060188: .4byte sub_80602B4
	thumb_func_start sub_806018C
sub_806018C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _080601C8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601A2
	adds r1, #0xFF
_080601A2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601AC
	adds r2, #0xFF
_080601AC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601B6
	adds r3, #0xFF
_080601B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080601D0 @ =0x0000110F
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_080601C8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_080601D0: .4byte 0x0000110F
	thumb_func_start sub_80601D4
sub_80601D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601E8
	adds r1, #0xFF
_080601E8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601F2
	adds r2, #0xFF
_080601F2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601FC
	adds r3, #0xFF
_080601FC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060218 @ =0x00001118
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08060218: .4byte 0x00001118
	thumb_func_start sub_806021C
sub_806021C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _08060254 @ =0xFFFFFE9A
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806024C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060258 @ =0x080603D9
	str r0, [r4, #0x4C]
_0806024C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060254: .4byte 0xFFFFFE9A
_08060258: .4byte sub_80603D8
	thumb_func_start sub_806025C
sub_806025C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806027E
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060284 @ =0x08060405
	str r0, [r4, #0x4C]
_0806027E:
	pop {r4}
	pop {r0}
	bx r0
_08060284: .4byte sub_8060404
	thumb_func_start sub_8060288
sub_8060288:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080602AA
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080602B0 @ =0x08060439
	str r0, [r4, #0x4C]
_080602AA:
	pop {r4}
	pop {r0}
	bx r0
_080602B0: .4byte sub_8060438
	thumb_func_start sub_80602B4
sub_80602B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806031A
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060320 @ =0x08060465
	str r0, [r4, #0x4C]
_0806031A:
	pop {r4}
	pop {r0}
	bx r0
_08060320: .4byte sub_8060464
	thumb_func_start sub_8060324
sub_8060324:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060350
	movs r0, #0x5C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060358 @ =0x08060361
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806035C @ =0x0806048D
	str r0, [r4, #0x4C]
_08060350:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060358: .4byte sub_8060360
_0806035C: .4byte sub_806048C
	thumb_func_start sub_8060360
sub_8060360:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r1, r0, #0x0
	cmp r1, #0x00
	bne _08060394
	adds r0, r4, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08060390 @ =0x080604E1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _08060396
_08060390: .4byte sub_80604E0
_08060394:
	adds r0, r1, #0x0
_08060396:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x02, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0xB9, 0x04, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xB9, 0x04, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xB9, 0x04, 0x06, 0x08
	thumb_func_start sub_80603D8
sub_80603D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08060400 @ =0xFFFFFE9A
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _080603EC
	adds r0, r1, #0x0
	subs r0, #0x67
_080603EC:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080603FC
	adds r0, r2, #0x0
	bl sub_807C298
_080603FC:
	pop {r0}
	bx r0
_08060400: .4byte 0xFFFFFE9A
	thumb_func_start sub_8060404
sub_8060404:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806042C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08060434 @ =0x08060501
	str r0, [r4, #0x4C]
_0806042C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060434: .4byte sub_8060500
	thumb_func_start sub_8060438
sub_8060438:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060458
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060460 @ =0x08060545
	str r0, [r4, #0x4C]
_08060458:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060460: .4byte sub_8060544
	thumb_func_start sub_8060464
sub_8060464:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060480
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060488 @ =0x080605A5
	str r0, [r4, #0x4C]
_08060480:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060488: .4byte sub_80605A4
	thumb_func_start sub_806048C
sub_806048C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080604AC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080604B4 @ =0x080605F9
	str r0, [r4, #0x4C]
_080604AC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080604B4: .4byte sub_80605F8
	thumb_func_start sub_80604B8
sub_80604B8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080604D4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080604DC @ =0x0805FF81
	str r0, [r4, #0x4C]
_080604D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080604DC: .4byte sub_805FF80
	thumb_func_start sub_80604E0
sub_80604E0:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080604F8
	ldr r0, _080604FC @ =0x0808750D
	str r0, [r2, #0x4C]
_080604F8:
	pop {r0}
	bx r0
_080604FC: .4byte sub_808750C
	thumb_func_start sub_8060500
sub_8060500:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806053A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0806053A
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _08060540 @ =0x080605CD
	str r0, [r4, #0x4C]
_0806053A:
	pop {r4}
	pop {r0}
	bx r0
_08060540: .4byte sub_80605CC
	thumb_func_start sub_8060544
sub_8060544:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060594
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08060572
	adds r1, #0xFF
_08060572:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806057C
	adds r2, #0xFF
_0806057C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08060586
	adds r3, #0xFF
_08060586:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806059C @ =0x000010F5
	bl sub_80DF024
	ldr r0, _080605A0 @ =0x0806062D
	str r0, [r4, #0x4C]
_08060594:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806059C: .4byte 0x000010F5
_080605A0: .4byte sub_806062C
	thumb_func_start sub_80605A4
sub_80605A4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080605C4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080605C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80605CC
sub_80605CC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080605EC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080605F4 @ =0x080602B5
	str r0, [r4, #0x4C]
_080605EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080605F4: .4byte sub_80602B4
	thumb_func_start sub_80605F8
sub_80605F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060620
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08060628 @ =0x08060695
	str r0, [r4, #0x4C]
_08060620:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060628: .4byte sub_8060694
	thumb_func_start sub_806062C
sub_806062C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060684
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08060684
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08060662
	adds r1, #0xFF
_08060662:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806066C
	adds r2, #0xFF
_0806066C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08060676
	adds r3, #0xFF
_08060676:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806068C @ =0x00001107
	bl sub_80DF024
	ldr r0, _08060690 @ =0x08060091
	str r0, [r4, #0x4C]
_08060684:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806068C: .4byte 0x00001107
_08060690: .4byte sub_8060090
	thumb_func_start sub_8060694
sub_8060694:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080606DE
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080606DE
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080606E4 @ =0x00001428
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _080606E8 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _080606EC @ =0x08060361
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _080606F0 @ =0x080605CD
	str r0, [r4, #0x4C]
_080606DE:
	pop {r4}
	pop {r0}
	bx r0
_080606E4: .4byte 0x00001428
_080606E8: .4byte 0x03000E3C
_080606EC: .4byte sub_8060360
_080606F0: .4byte sub_80605CC
	thumb_func_start sub_80606F4
sub_80606F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	mov r8, r0
	cmp r0, #0x00
	bne _08060800
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08060746
	adds r0, #0xFF
_08060746:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _08060756
	adds r1, #0xFF
_08060756:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08060766
	adds r0, #0xFF
_08060766:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r0, [r4, #0x38]
	subs r6, r1, r0
	ldr r1, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	subs r5, r1, r0
	ldr r2, _0806080C @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08060794
	ldr r1, _08060810 @ =0x000001FF
	adds r0, r0, r1
_08060794:
	asrs r7, r0, #0x09
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl __divsi3
	cmp r0, #0x01
	bne _080607AE
	movs r0, #0x02
_080607AE:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080607DE
	adds r1, #0xFF
_080607DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080607E8
	adds r2, #0xFF
_080607E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080607F2
	adds r3, #0xFF
_080607F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060814 @ =0x0000120A
	bl sub_80DF024
	ldr r0, _08060818 @ =0x0806081D
	str r0, [r4, #0x4C]
_08060800:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806080C: .4byte 0x03001038
_08060810: .4byte 0x000001FF
_08060814: .4byte 0x0000120A
_08060818: .4byte sub_806081C
	thumb_func_start sub_806081C
sub_806081C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r4, #0x00]
	cmp r1, r0
	ble _080608EA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	movs r0, #0x12
	strh r0, [r6, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080608C8
	adds r1, #0xFF
_080608C8:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080608D2
	adds r2, #0xFF
_080608D2:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080608DC
	adds r3, #0xFF
_080608DC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _080608F4 @ =0x0000120A
	bl sub_80DF024
	ldr r0, _080608F8 @ =0x08060BB9
	str r0, [r5, #0x4C]
_080608EA:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080608F4: .4byte 0x0000120A
_080608F8: .4byte sub_8060BB8
	thumb_func_start sub_80608FC
sub_80608FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806091C
	b _08060A34
_0806091C:
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	ldr r4, _08060A44 @ =0x03000E18
	ldr r2, _08060A48 @ =0x0820000C
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r4, #0x00]
	ldr r1, _08060A4C @ =0x03000E28
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08060958
	adds r0, #0xFF
_08060958:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08060964
	adds r0, #0xFF
_08060964:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0xA8
	adds r1, r1, r5
	mov r10, r1
	ldr r0, _08060A4C @ =0x03000E28
	adds r0, #0x06
	mov r8, r0
	movs r6, #0x00
	ldr r1, _08060A4C @ =0x03000E28
	adds r1, #0x04
	mov r12, r1
_08060980:
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _0806098E
	adds r1, #0xFF
_0806098E:
	ldr r7, _08060A50 @ =0x083B866C
	mov r3, r10
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	adds r0, r6, r0
	adds r0, r0, r7
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080609B2
	adds r2, #0xFF
_080609B2:
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x04
	adds r1, r6, r1
	adds r0, r7, #0x2
	mov r9, r0
	add r1, r9
	asrs r0, r2, #0x08
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r6, #0x4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _080609D8
	adds r1, #0xFF
_080609D8:
	adds r4, r2, #0x0
	ldr r0, [r3, #0x00]
	lsls r0, r0, #0x04
	adds r0, r4, r0
	adds r0, r0, r7
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080609FA
	adds r2, #0xFF
_080609FA:
	mov r1, r10
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x04
	adds r0, r4, r0
	add r0, r9
	asrs r1, r2, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x04]
	movs r1, #0x08
	add r8, r1
	adds r6, #0x08
	add r12, r1
	ldr r0, [sp, #0x000]
	adds r0, #0x02
	str r0, [sp, #0x000]
	cmp r0, #0x04
	ble _08060980
	ldr r1, _08060A44 @ =0x03000E18
	ldr r0, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	ldr r1, _08060A4C @ =0x03000E28
	movs r2, #0x05
	bl sub_801B748
	ldr r0, _08060A54 @ =0x08060B69
	str r0, [r5, #0x4C]
_08060A34:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08060A44: .4byte 0x03000E18
_08060A48: .4byte 0x0820000C
_08060A4C: .4byte 0x03000E28
_08060A50: .4byte 0x083B866C
_08060A54: .4byte sub_8060B68
	thumb_func_start sub_8060A58
sub_8060A58:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060AE8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08060AE8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r2, #0x2A
	movs r3, #0x00
	ldsh r0, [r2, r3]
	subs r0, #0x10
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08060AB4
	adds r0, #0xFF
_08060AB4:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060AF0 @ =0x08060AF9
	str r0, [r4, #0x4C]
	ldr r0, _08060AF4 @ =0x0000011D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08060AE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060AF0: .4byte sub_8060AF8
_08060AF4: .4byte 0x0000011D
	thumb_func_start sub_8060AF8
sub_8060AF8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08060B5E
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060B64 @ =0x08060C45
	str r0, [r4, #0x4C]
_08060B5E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08060B64: .4byte sub_8060C44
	thumb_func_start sub_8060B68
sub_8060B68:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r7, _08060B90 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _08060B94 @ =0x03000E1C
	ldr r6, _08060B98 @ =0x03000E20
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08060B9C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x00]
	str r0, [r4, #0x14]
	b _08060BAE
	.byte 0x00, 0x00
_08060B90: .4byte 0x03000E18
_08060B94: .4byte 0x03000E1C
_08060B98: .4byte 0x03000E20
_08060B9C:
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r0, [r6, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	ldr r0, _08060BB4 @ =0x08060CB9
	str r0, [r4, #0x4C]
_08060BAE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08060BB4: .4byte sub_8060CB8
	thumb_func_start sub_8060BB8
sub_8060BB8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08060BDC
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060BE4 @ =0x0808750D
	str r0, [r4, #0x4C]
_08060BDC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060BE4: .4byte sub_808750C
	.byte 0x02, 0x1C, 0xA8, 0x32, 0x02, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0xE9, 0x0C, 0x06, 0x08, 0x02, 0x1C, 0xA8, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xE9, 0x0C, 0x06, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x39, 0xF1, 0x8C, 0xF9
	.byte 0x01, 0x1C, 0x03, 0x20, 0x7C, 0xF1, 0xAE, 0xFD, 0x21, 0x1C, 0xA8, 0x31, 0x08, 0x60, 0x03, 0x48
	.byte 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xE9, 0x0C, 0x06, 0x08
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xF5, 0x06, 0x06, 0x08
	thumb_func_start sub_8060C44
sub_8060C44:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08060CAE
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08060CB4 @ =0x08060DC5
	str r0, [r4, #0x4C]
_08060CAE:
	pop {r4, r5}
	pop {r0}
	bx r0
_08060CB4: .4byte sub_8060DC4
	thumb_func_start sub_8060CB8
sub_8060CB8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060CDC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _08060CE4 @ =0x08060A59
	str r0, [r4, #0x4C]
_08060CDC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060CE4: .4byte sub_8060A58
	thumb_func_start sub_8060CE8
sub_8060CE8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08060D3E
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060D44 @ =0x08060D4D
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08060D06
	adds r0, #0xFF
_08060D06:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08060D16
	adds r0, #0xFF
_08060D16:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08060D26
	adds r0, #0xFF
_08060D26:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060D48 @ =0x08060DED
	str r0, [r4, #0x4C]
_08060D3E:
	pop {r4}
	pop {r0}
	bx r0
_08060D44: .4byte sub_8060D4C
_08060D48: .4byte sub_8060DEC
	thumb_func_start sub_8060D4C
sub_8060D4C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08060DB6
	ldr r0, _08060D8C @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08060D6C
	adds r2, #0xFF
_08060D6C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08060D76
	adds r3, #0xFF
_08060D76:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08060D90
	movs r0, #0x13
	b _08060D92
_08060D8C: .4byte 0x03000E18
_08060D90:
	movs r0, #0x12
_08060D92:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x20
	strh r1, [r0, #0x00]
	ldr r0, _08060DC0 @ =0x08060E4D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08060DB6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08060DC0: .4byte sub_8060E4C
	thumb_func_start sub_8060DC4
sub_8060DC4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08060DE0
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060DE8 @ =0x0808750D
	str r0, [r4, #0x4C]
_08060DE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060DE8: .4byte sub_808750C
	thumb_func_start sub_8060DEC
sub_8060DEC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060E3C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08060E12
	adds r1, #0xFF
_08060E12:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08060E1C
	adds r2, #0xFF
_08060E1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08060E26
	adds r3, #0xFF
_08060E26:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060E44 @ =0x0000124C
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08060E48 @ =0x08060E7D
	str r0, [r4, #0x4C]
_08060E3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08060E44: .4byte 0x0000124C
_08060E48: .4byte 0x08060E7D
	thumb_func_start sub_8060E4C
sub_8060E4C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08060E70
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08060E78 @ =0x0808750D
	str r0, [r4, #0x4C]
_08060E70:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060E78: .4byte sub_808750C
	.byte 0x02, 0x1C, 0xAC, 0x32, 0x00, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
	.byte 0xFD, 0x08, 0x06, 0x08
	thumb_func_start sub_8060E90
sub_8060E90:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060F5E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	ldr r0, [r7, #0x2C]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r5, [r0, #0x28]
	adds r1, r5, #0x0
	adds r1, #0xD8
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x00]
	adds r6, #0x04
	adds r5, #0xDC
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r4, [r5, #0x00]
	subs r0, r0, r4
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _08060F3C
	adds r1, #0xFF
_08060F3C:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _08060F46
	adds r2, #0xFF
_08060F46:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08060F50
	adds r3, #0xFF
_08060F50:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08060F68 @ =0x00001071
	bl sub_80DF024
	ldr r0, _08060F6C @ =0x08061355
	str r0, [r7, #0x4C]
_08060F5E:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08060F68: .4byte 0x00001071
_08060F6C: .4byte sub_8061354
	thumb_func_start sub_8060F70
sub_8060F70:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061040
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	ldr r0, [r7, #0x2C]
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r5, [r0, #0x28]
	adds r1, r5, #0x0
	adds r1, #0xD8
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r4, [r1, #0x00]
	subs r0, r0, r4
	movs r1, #0x03
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x00]
	adds r6, #0x04
	adds r5, #0xDC
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r4, [r5, #0x00]
	subs r0, r0, r4
	movs r1, #0x03
	bl __divsi3
	adds r4, r4, r0
	str r4, [r6, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x8C
	adds r0, r7, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _0806101E
	adds r1, #0xFF
_0806101E:
	asrs r1, r1, #0x08
	ldr r2, [r7, #0x3C]
	cmp r2, #0x00
	bge _08061028
	adds r2, #0xFF
_08061028:
	asrs r2, r2, #0x08
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _08061032
	adds r3, #0xFF
_08061032:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08061048 @ =0x00001071
	bl sub_80DF024
	ldr r0, _0806104C @ =0x08061051
	str r0, [r7, #0x4C]
_08061040:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08061048: .4byte 0x00001071
_0806104C: .4byte sub_8061050
	thumb_func_start sub_8061050
sub_8061050:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	bne _080610C0
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	ldr r2, _080610C8 @ =0xFFFFD000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080610CC @ =0x080612B5
	str r0, [r5, #0x58]
	adds r1, r5, #0x0
	adds r1, #0x77
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r6, [r0, #0x00]
	subs r0, #0x04
	str r6, [r0, #0x00]
	ldr r0, _080610D0 @ =0x080612FD
	str r0, [r5, #0x4C]
_080610C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080610C8: .4byte 0xFFFFD000
_080610CC: .4byte sub_80612B4
_080610D0: .4byte sub_80612FC
	thumb_func_start sub_80610D4
sub_80610D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061198
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061126
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	b _08061132
_08061126:
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	adds r0, #0x48
_08061132:
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08061176
	adds r1, #0xFF
_08061176:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08061180
	adds r2, #0xFF
_08061180:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806118A
	adds r3, #0xFF
_0806118A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080611A0 @ =0x00001071
	bl sub_80DF024
	ldr r0, _080611A4 @ =0x080611A9
	str r0, [r4, #0x4C]
_08061198:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080611A0: .4byte 0x00001071
_080611A4: .4byte sub_80611A8
	thumb_func_start sub_80611A8
sub_80611A8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806122C
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080611EC
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	ldr r2, _080611E8 @ =0xFFFFB000
	b _080611F4
_080611E8: .4byte 0xFFFFB000
_080611EC:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	ldr r2, _08061234 @ =0xFFFFA000
_080611F4:
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061238 @ =0x0806123D
	str r0, [r4, #0x4C]
_0806122C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061234: .4byte 0xFFFFA000
_08061238: .4byte sub_806123C
	thumb_func_start sub_806123C
sub_806123C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _080612AA
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r0, _080612B0 @ =0x080612D5
	str r0, [r4, #0x4C]
_080612AA:
	pop {r4}
	pop {r0}
	bx r0
_080612B0: .4byte sub_80612D4
	thumb_func_start sub_80612B4
sub_80612B4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0x80
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _080612D0 @ =0x0806123D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_080612D0: .4byte sub_806123C
	thumb_func_start sub_80612D4
sub_80612D4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080612F0
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080612F8 @ =0x080613FD
	str r0, [r4, #0x4C]
_080612F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080612F8: .4byte sub_80613FC
	thumb_func_start sub_80612FC
sub_80612FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	ldr r0, _0806134C @ =0x00003FFF
	cmp r1, r0
	bhi _0806131A
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	ble _0806131A
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
_0806131A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061346
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08061350 @ =0x080610D5
	str r0, [r4, #0x4C]
_08061346:
	pop {r4}
	pop {r0}
	bx r0
_0806134C: .4byte 0x00003FFF
_08061350: .4byte sub_80610D4
	thumb_func_start sub_8061354
sub_8061354:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _080613AA
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	ldr r2, _080613B0 @ =0xFFFFD000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080613B4 @ =0x08061429
	str r0, [r4, #0x4C]
_080613AA:
	pop {r4}
	pop {r0}
	bx r0
_080613B0: .4byte 0xFFFFD000
_080613B4: .4byte sub_8061428
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x0A, 0x1C, 0x9C, 0x32, 0x88, 0x6B, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x00, 0x12, 0x10, 0x60, 0x0A, 0x1C, 0xA0, 0x32, 0xC8, 0x6B, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x00, 0x12, 0x10, 0x60, 0x0A, 0x1C, 0xA4, 0x32, 0x08, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30
	.byte 0x00, 0x12, 0x10, 0x60, 0x02, 0x48, 0xC8, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x59, 0x14, 0x06, 0x08
	thumb_func_start sub_80613FC
sub_80613FC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806141C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061424 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806141C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061424: .4byte sub_808750C
	thumb_func_start sub_8061428
sub_8061428:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806144C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08061454 @ =0x08060F71
	str r0, [r4, #0x4C]
_0806144C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061454: .4byte sub_8060F70
	thumb_func_start sub_8061458
sub_8061458:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08061474
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806147C @ =0x08061481
	str r0, [r4, #0x4C]
_08061474:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806147C: .4byte sub_8061480
	thumb_func_start sub_8061480
sub_8061480:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080614A8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _080614B0 @ =0x08060E91
	str r0, [r4, #0x4C]
_080614A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080614B0: .4byte sub_8060E90
	thumb_func_start sub_80614B4
sub_80614B4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _0806152E
	movs r0, #0x00
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061508
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080614E4
	adds r1, #0xFF
_080614E4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080614EE
	adds r2, #0xFF
_080614EE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080614F8
	adds r3, #0xFF
_080614F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08061504 @ =0x0000125C
	bl sub_80DF024
	b _0806152E
_08061504: .4byte 0x0000125C
_08061508:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08061510
	adds r1, #0xFF
_08061510:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806151A
	adds r2, #0xFF
_0806151A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08061524
	adds r3, #0xFF
_08061524:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08061538 @ =0x00001274
	bl sub_80DF024
_0806152E:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061538: .4byte 0x00001274
	thumb_func_start sub_806153C
sub_806153C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080615CC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061598
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08061568
	adds r1, #0xFF
_08061568:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08061572
	adds r2, #0xFF
_08061572:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806157C
	adds r3, #0xFF
_0806157C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08061594 @ =0x00001254
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	b _080615C8
	.byte 0x00, 0x00
_08061594: .4byte 0x00001254
_08061598:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080615A0
	adds r1, #0xFF
_080615A0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080615AA
	adds r2, #0xFF
_080615AA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080615B4
	adds r3, #0xFF
_080615B4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080615D4 @ =0x0000126C
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_080615C8:
	ldr r0, _080615D8 @ =0x080615DD
	str r0, [r4, #0x4C]
_080615CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080615D4: .4byte 0x0000126C
_080615D8: .4byte sub_80615DC
	thumb_func_start sub_80615DC
sub_80615DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080616AA
	movs r0, #0x9C
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x84
	ldr r0, [r7, #0x2C]
	ldr r6, [r0, #0x28]
	adds r2, r6, #0x0
	adds r2, #0xD8
	ldr r5, _08061698 @ =0x083B869C
	lsls r4, r1, #0x03
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0x04
	adds r0, r5, #0x4
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0x04
	adds r0, r5, #0x0
	adds r0, #0x08
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x0C
	adds r0, r4, r0
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7C
	movs r6, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r6, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	adds r0, #0xA0
	str r6, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xA4
	adds r5, #0x20
	adds r4, r4, r5
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0806169C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	b _080616A6
	.byte 0x00, 0x00
_08061698: .4byte 0x083B869C
_0806169C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
_080616A6:
	ldr r0, _080616B4 @ =0x08061795
	str r0, [r7, #0x4C]
_080616AA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080616B4: .4byte sub_8061794
	thumb_func_start sub_80616B8
sub_80616B8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	bl sub_80614B4
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061746
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r5, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	adds r4, r2, #0x0
	adds r4, #0xE0
	ldr r3, _0806174C @ =0x083B869C
	lsls r2, r5, #0x03
	adds r2, r2, r5
	lsls r2, r2, #0x02
	adds r0, r3, #0x0
	adds r0, #0x14
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r6, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x79
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	adds r3, #0x18
	adds r2, r2, r3
	ldr r1, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	adds r0, r7, #0x0
	bl sub_807F4FC
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061750 @ =0x08061755
	str r0, [r7, #0x4C]
_08061746:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806174C: .4byte 0x083B869C
_08061750: .4byte sub_8061754
	thumb_func_start sub_8061754
sub_8061754:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08061784
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r2, [r0, #0x00]
	ldr r1, _0806178C @ =0x083B869C
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, #0x1C
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	ldr r0, _08061790 @ =0x08061831
	str r0, [r4, #0x4C]
_08061784:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806178C: .4byte 0x083B869C
_08061790: .4byte sub_8061830
	thumb_func_start sub_8061794
sub_8061794:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080617FC
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r3, r4, #0x0
	adds r3, #0x9C
	ldr r2, [r3, #0x00]
	ldr r1, _080617E4 @ =0x083B869C
	lsls r0, r2, #0x03
	adds r0, r0, r2
	lsls r0, r0, #0x02
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	bne _080617E8
	movs r0, #0xD8
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	b _080617F8
_080617E4: .4byte 0x083B869C
_080617E8:
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_080617F8:
	ldr r0, _08061804 @ =0x08061865
	str r0, [r4, #0x4C]
_080617FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061804: .4byte sub_8061864
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x3D, 0x15, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x3D, 0x15, 0x06, 0x08
	thumb_func_start sub_8061830
sub_8061830:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08061858
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061860 @ =0x0808750D
	str r0, [r4, #0x4C]
_08061858:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061860: .4byte sub_808750C
	thumb_func_start sub_8061864
sub_8061864:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80614B4
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061898
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08061898
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080618A0 @ =0x080616B9
	str r0, [r4, #0x4C]
_08061898:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080618A0: .4byte sub_80616B8
	thumb_func_start sub_80618A4
sub_80618A4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806190E
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x00
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080618D4
	movs r0, #0x88
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	b _080618DC
_080618D4:
	movs r0, #0x88
	adds r1, r5, #0x0
	bl play_sfx_80195B4
_080618DC:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080618F0
	cmp r1, #0x01
	beq _080618F6
	b _0806190A
_080618F0:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _080618FA
_080618F6:
	adds r0, r4, #0x0
	movs r1, #0x07
_080618FA:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
_0806190A:
	ldr r0, _08061914 @ =0x08061FF5
	str r0, [r4, #0x4C]
_0806190E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08061914: .4byte sub_8061FF4
	thumb_func_start sub_8061918
sub_8061918:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08061930
	b _08061B7E
_08061930:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x00
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08061942
	adds r1, #0xFF
_08061942:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806194C
	adds r0, #0xFF
_0806194C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08061958
	adds r3, #0xFF
_08061958:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806197C @ =0x00000C7F
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08061980
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806198C
_0806197C: .4byte 0x00000C7F
_08061980:
	adds r0, r5, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806198C:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	bne _080619DC
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080619A2
	adds r0, #0xFF
_080619A2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080619B0
	adds r0, #0xFF
_080619B0:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080619BC
	adds r0, #0xFF
_080619BC:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080619D8 @ =0x000040CB
	b _08061A16
	.byte 0x00, 0x00
_080619D8: .4byte 0x000040CB
_080619DC:
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080619E6
	adds r0, #0xFF
_080619E6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _080619F4
	adds r3, #0xFF
_080619F4:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080619FE
	adds r0, #0xFF
_080619FE:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08061AB0 @ =0x000040CE
_08061A16:
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r6, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08061AB4 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r4, #0x5C]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08061A82
	adds r0, #0xFF
_08061A82:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x3C]
	adds r6, r1, #0x0
	cmp r0, #0x00
	bge _08061A94
	adds r0, #0xFF
_08061A94:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	adds r7, r1, #0x0
	cmp r0, #0x02
	beq _08061AEC
	cmp r0, #0x02
	ble _08061AB8
	cmp r0, #0x03
	beq _08061B0C
	b _08061B2C
	.byte 0x00, 0x00
_08061AB0: .4byte 0x000040CE
_08061AB4: .4byte sub_8087540
_08061AB8:
	cmp r0, #0x00
	blt _08061B2C
	movs r0, #0x84
	adds r0, r0, r4
	mov r12, r0
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r3, #0x00
	ldsh r1, [r6, r3]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	mov r1, r12
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r2, #0xDC
	movs r0, #0x00
	ldsh r1, [r7, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	b _08061B4E
_08061AEC:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r1, #0x00
	ldsh r0, [r6, r1]
	lsls r0, r0, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x06
	subs r0, r1, r0
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r0, [r7, r3]
	lsls r0, r0, #0x08
	subs r1, r1, r0
	str r1, [r2, #0x00]
	b _08061B4E
_08061B0C:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r0, #0x00
	ldsh r1, [r6, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	movs r0, #0xD0
	lsls r0, r0, #0x07
	b _08061B4A
_08061B2C:
	adds r2, r4, #0x0
	adds r2, #0x84
	movs r0, #0x00
	ldsh r1, [r6, r0]
	lsls r1, r1, #0x08
	movs r0, #0xC0
	lsls r0, r0, #0x06
	subs r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, #0x04
	movs r3, #0x00
	ldsh r1, [r7, r3]
	lsls r1, r1, #0x08
	movs r0, #0x98
	lsls r0, r0, #0x08
_08061B4A:
	subs r0, r0, r1
	str r0, [r2, #0x00]
_08061B4E:
	ldr r0, _08061B6C @ =0x08061F69
	str r0, [r4, #0x4C]
	ldr r0, _08061B70 @ =0x08061FC9
	str r0, [r5, #0x4C]
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08061B74
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	b _08061B7E
	.byte 0x00, 0x00
_08061B6C: .4byte sub_8061F68
_08061B70: .4byte sub_8061FC8
_08061B74:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_08061B7E:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8061B8C
sub_8061B8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08061BA4
	b _08061D92
_08061BA4:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08061BB8
	adds r1, #0xFF
_08061BB8:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08061BC2
	adds r0, #0xFF
_08061BC2:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08061BCE
	adds r3, #0xFF
_08061BCE:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08061D20 @ =0x00000C8E
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08061BE2
	adds r2, #0xFF
_08061BE2:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08061BEC
	adds r0, #0xFF
_08061BEC:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08061BF8
	adds r0, #0xFF
_08061BF8:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08061D24 @ =0x000040CC
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08061D28 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	movs r0, #0x00
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	str r0, [r5, #0x64]
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x03
	strb r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r3, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x88
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08061CA6
	adds r0, #0xFF
_08061CA6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _08061CB6
	adds r1, #0xFF
_08061CB6:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08061CC6
	adds r0, #0xFF
_08061CC6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	ldr r0, [r5, #0x38]
	subs r1, r1, r0
	mov r8, r1
	ldr r1, [r2, #0x00]
	ldr r0, [r5, #0x3C]
	subs r7, r1, r0
	ldr r2, _08061D2C @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r0, _08061D30 @ =0x00002FFF
	cmp r1, r0
	bgt _08061D34
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08061D00
	adds r0, #0x7F
_08061D00:
	asrs r4, r0, #0x07
	lsrs r0, r0, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r0, #0x05
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xF0
	lsls r0, r0, #0x05
	bl __divsi3
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x1E
	b _08061D5A
_08061D20: .4byte 0x00000C8E
_08061D24: .4byte 0x000040CC
_08061D28: .4byte sub_8087540
_08061D2C: .4byte 0x03001038
_08061D30: .4byte 0x00002FFF
_08061D34:
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _08061D3C
	adds r0, #0xFF
_08061D3C:
	asrs r4, r0, #0x08
	lsrs r0, r0, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r0, #0x05
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x07
	bl __divsi3
	adds r2, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x50
_08061D5A:
	str r0, [r1, #0x00]
	cmp r2, #0x01
	bne _08061D62
	movs r2, #0x02
_08061D62:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r2
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08061DA0 @ =0x08061E81
	str r0, [r5, #0x4C]
	ldr r0, _08061DA4 @ =0x08061F3D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
_08061D92:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061DA0: .4byte sub_8061E80
_08061DA4: .4byte sub_8061F3C
	thumb_func_start sub_8061DA8
sub_8061DA8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r7, [r6, #0x30]
	cmp r7, #0x00
	bne _08061E68
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r1, [r5, #0x00]
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r0, [r4, #0x00]
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08061DD4
	adds r3, #0xFF
_08061DD4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08061E70 @ =0x00000C95
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	ldr r1, _08061E74 @ =0x00004011
	ldr r2, [r5, #0x00]
	ldr r3, [r4, #0x00]
	ldr r4, [r6, #0x40]
	str r4, [sp, #0x000]
	ldr r4, [r6, #0x08]
	ldrb r4, [r4, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	bl sub_807BF34
	adds r4, r0, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _08061E78 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	str r7, [r4, #0x6C]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _08061E7C @ =0x0808750D
	str r0, [r6, #0x4C]
_08061E68:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08061E70: .4byte 0x00000C95
_08061E74: .4byte 0x00004011
_08061E78: .4byte sub_8087540
_08061E7C: .4byte sub_808750C
	thumb_func_start sub_8061E80
sub_8061E80:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r1, #0x06
	ldr r0, [r4, #0x00]
	lsrs r2, r0, #0x1F
	adds r0, r0, r2
	asrs r0, r0, #0x01
	subs r1, r1, r0
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r2, r0, #0x1
	strh r2, [r6, #0x00]
	ldr r1, [r5, #0x18]
	ldr r0, _08061F34 @ =0x000003FF
	cmp r1, r0
	bgt _08061F2C
	ldr r1, _08061F38 @ =0x0000FFFF
	adds r0, r1, #0x0
	orrs r2, r0
	strh r2, [r6, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_08061F2C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061F34: .4byte 0x000003FF
_08061F38: .4byte 0x0000FFFF
	thumb_func_start sub_8061F3C
sub_8061F3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061F5C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061F64 @ =0x08061DA9
	str r0, [r4, #0x4C]
_08061F5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061F64: .4byte sub_8061DA8
	thumb_func_start sub_8061F68
sub_8061F68:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0xB0
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r4, [r5, #0x10]
	ldr r0, _08061FC4 @ =0xFFFFFD80
	adds r4, r4, r0
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	subs r0, r4, r0
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x20
	negs r0, r0
	cmp r4, r0
	bge _08061FBC
	adds r0, r5, #0x0
	bl sub_807C298
_08061FBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061FC4: .4byte 0xFFFFFD80
	thumb_func_start sub_8061FC8
sub_8061FC8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08061FE8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061FF0 @ =0x0808750D
	str r0, [r4, #0x4C]
_08061FE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061FF0: .4byte sub_808750C
	thumb_func_start sub_8061FF4
sub_8061FF4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062040
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062040
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08062030
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806203C
_08062030:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806203C:
	ldr r0, _08062048 @ =0x08061919
	str r0, [r4, #0x4C]
_08062040:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062048: .4byte sub_8061918
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x02, 0x28, 0x01, 0xD9, 0x02, 0x20
	.byte 0x00, 0xE0, 0x02, 0x30, 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x89, 0x21, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0x9C, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x89, 0x21, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x35, 0x21, 0x06, 0x08
	thumb_func_start sub_80620C0
sub_80620C0:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x02
	bls _080620D2
	movs r0, #0x02
	b _080620D4
_080620D2:
	adds r0, #0x02
_080620D4:
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _080620E8 @ =0x08062189
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_080620E8: .4byte sub_8062188
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x51, 0x21, 0x06, 0x08
	thumb_func_start sub_80620F8
sub_80620F8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08062116
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	b _0806211C
_08062116:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
_0806211C:
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xA0
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08062130 @ =0x08062189
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08062130: .4byte sub_8062188
	thumb_func_start sub_8062134
sub_8062134:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062142
	bl sub_807C298
_08062142:
	ldr r0, _0806214C @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806214C: .4byte sub_808750C
	thumb_func_start sub_8062150
sub_8062150:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062164
	ldr r0, _08062160 @ =0x0808750D
	b _0806217A
	.byte 0x00, 0x00
_08062160: .4byte sub_808750C
_08062164:
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806217C
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062184 @ =0x08061B8D
_0806217A:
	str r0, [r4, #0x4C]
_0806217C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062184: .4byte sub_8061B8C
	thumb_func_start sub_8062188
sub_8062188:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08062196
	bl sub_807C298
_08062196:
	bl sub_8082B00
	cmp r0, #0x00
	bne _080621D0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080621B2
	cmp r1, #0x01
	beq _080621C0
	b _080621CC
_080621B2:
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080621CC
_080621C0:
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080621CC:
	ldr r0, _080621D8 @ =0x080618A5
	str r0, [r4, #0x4C]
_080621D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080621D8: .4byte sub_80618A4
	thumb_func_start sub_80621DC
sub_80621DC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062282
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806228C @ =0x0806236D
	str r0, [r4, #0x58]
	ldr r0, _08062290 @ =0x08062311
	str r0, [r4, #0x60]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r5, #0x00
	ldr r0, _08062294 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062250
	adds r1, #0xFF
_08062250:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806225A
	adds r2, #0xFF
_0806225A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062264
	adds r3, #0xFF
_08062264:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062298 @ =0x00000ED2
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0806229C @ =0x080622A1
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08062282:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806228C: .4byte sub_806236C
_08062290: .4byte sub_8062310
_08062294: .4byte 0x00000199
_08062298: .4byte 0x00000ED2
_0806229C: .4byte sub_80622A0
	thumb_func_start sub_80622A0
sub_80622A0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	ble _080622E2
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080622C0
	adds r1, #0xFF
_080622C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080622CA
	adds r2, #0xFF
_080622CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080622D4
	adds r3, #0xFF
_080622D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062308 @ =0x00000ED2
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_080622E2:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080622FE
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806230C @ =0x08062395
	str r0, [r4, #0x4C]
_080622FE:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062308: .4byte 0x00000ED2
_0806230C: .4byte sub_8062394
	thumb_func_start sub_8062310
sub_8062310:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08062360
	movs r0, #0x81
	bl stop_sfx_80195A8
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806232E
	adds r2, #0xFF
_0806232E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08062338
	adds r3, #0xFF
_08062338:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806234E
	movs r0, #0x13
	b _08062350
_0806234E:
	movs r0, #0x12
_08062350:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r0, _08062368 @ =0x0808750D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08062360:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08062368: .4byte sub_808750C
	thumb_func_start sub_806236C
sub_806236C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08062390 @ =0x0808750D
	str r0, [r5, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08062390: .4byte sub_808750C
	thumb_func_start sub_8062394
sub_8062394:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080623B8
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080623C0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080623B8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080623C0: .4byte sub_808750C
	.byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0xF9, 0x23, 0x06, 0x08
	thumb_func_start sub_80623F8
sub_80623F8:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08062414
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806241C @ =0x08062421
	str r0, [r4, #0x4C]
_08062414:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806241C: .4byte sub_8062420
	thumb_func_start sub_8062420
sub_8062420:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062472
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806243A
	adds r1, #0xFF
_0806243A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062444
	adds r2, #0xFF
_08062444:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806244E
	adds r3, #0xFF
_0806244E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806247C @ =0x00000E92
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062480 @ =0x08062489
	str r0, [r4, #0x4C]
	ldr r0, _08062484 @ =0x00000127
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08062472:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806247C: .4byte 0x00000E92
_08062480: .4byte sub_8062488
_08062484: .4byte 0x00000127
	thumb_func_start sub_8062488
sub_8062488:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080624F2
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080624F8 @ =0x080624FD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080624F2:
	pop {r4}
	pop {r0}
	bx r0
_080624F8: .4byte sub_80624FC
	thumb_func_start sub_80624FC
sub_80624FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806253E
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062526
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062532
_08062526:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062532:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08062544 @ =0x08062549
	str r0, [r4, #0x4C]
_0806253E:
	pop {r4}
	pop {r0}
	bx r0
_08062544: .4byte sub_8062548
	thumb_func_start sub_8062548
sub_8062548:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062590
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08062590
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062580
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806258C
_08062580:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806258C:
	ldr r0, _08062598 @ =0x080621DD
	str r0, [r4, #0x4C]
_08062590:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062598: .4byte sub_80621DC
	thumb_func_start sub_806259C
sub_806259C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080625B8
	b _08062770
_080625B8:
	mov r0, r8
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _080625D0
	adds r0, #0xFF
_080625D0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x08
	mov r4, r8
	ldr r3, [r4, #0x14]
	cmp r3, #0x00
	bge _080625E0
	adds r3, #0xFF
_080625E0:
	asrs r3, r3, #0x08
	mov r4, r8
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080625EC
	adds r0, #0xFF
_080625EC:
	asrs r0, r0, #0x08
	adds r0, #0x18
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08062780 @ =0x000040D9
	bl sub_807BF34
	adds r7, r0, #0x0
	str r7, [r4, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r7, #0x2C]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08062784 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r6, r8
	adds r6, #0x84
	movs r0, #0x88
	add r0, r8
	mov r9, r0
	movs r1, #0x8C
	add r1, r8
	mov r10, r1
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r7, #0x0C]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	movs r5, #0x07
_080626F0:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	adds r4, r1, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _080626F0
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _08062788 @ =0x08062A69
	str r0, [r7, #0x4C]
	mov r2, r8
	ldr r0, [r2, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r4, r9
	str r0, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r0, [r1, #0x00]
	ldr r0, _0806278C @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08062790 @ =0x08062C95
	mov r2, r8
	str r0, [r2, #0x4C]
_08062770:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062780: .4byte 0x000040D9
_08062784: .4byte 0x03000FD8
_08062788: .4byte sub_8062A68
_0806278C: .4byte 0x0000010B
_08062790: .4byte sub_8062C94
	thumb_func_start sub_8062794
sub_8062794:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	adds r7, r0, #0x0
	ldr r2, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r2
	mov r9, r0
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080627B6
	adds r0, #0xFF
_080627B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x034]
	cmp r1, #0x00
	bge _080627C8
	adds r1, #0xFF
_080627C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _080627DA
	adds r1, #0xFF
_080627DA:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r1, [r7, #0x30]
	cmp r1, #0x00
	beq _08062800
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080627EC
	adds r0, #0xFF
_080627EC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080627F8
	adds r0, #0xFF
_080627F8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x40]
	b _08062826
_08062800:
	adds r0, r2, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806280C
	adds r0, #0xFF
_0806280C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	adds r0, r2, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806281C
	adds r0, #0xFF
_0806281C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	adds r0, r2, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
_08062826:
	cmp r0, #0x00
	bge _0806282C
	adds r0, #0xFF
_0806282C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _08062964 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _08062968 @ =0x0819832C
	ldr r0, _0806296C @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _08062964 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _08062964 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	adds r1, #0xAE
	strh r4, [r1, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	ldr r3, _08062970 @ =0x0300034C
	ldr r2, _08062974 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x034]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r10
	ldr r4, [r4, #0x00]
	str r4, [sp, #0x024]
	ldr r2, [r7, #0x30]
	cmp r2, #0x00
	beq _08062978
	ldr r0, [r2, #0x38]
	ldr r1, [r2, #0x3C]
	ldr r2, [r2, #0x40]
	ldr r3, [sp, #0x01C]
	subs r0, r0, r3
	str r0, [sp, #0x028]
	ldr r4, [sp, #0x020]
	subs r4, r1, r4
	mov r10, r4
	ldr r0, [sp, #0x024]
	subs r0, r2, r0
	mov r9, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	bne _08062906
	b _08062A50
_08062906:
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0806290E:
	ldr r1, _08062964 @ =0x03001038
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r2, [sp, #0x01C]
	adds r0, r2, r0
	str r0, [r4, #0x04]
	ldr r3, _08062964 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08062964 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0806290E
	b _08062A50
_08062964: .4byte 0x03001038
_08062968: .4byte 0x0819832C
_0806296C: .4byte 0x08198220
_08062970: .4byte 0x0300034C
_08062974: .4byte 0x00000888
_08062978:
	mov r0, r9
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, #0x04
	ldr r3, [r0, #0x00]
	ldr r4, [sp, #0x01C]
	subs r0, r1, r4
	cmp r0, #0x00
	bge _08062990
	adds r0, #0x07
_08062990:
	asrs r0, r0, #0x03
	str r0, [sp, #0x02C]
	ldr r1, [sp, #0x020]
	subs r0, r2, r1
	cmp r0, #0x00
	bge _0806299E
	adds r0, #0x07
_0806299E:
	asrs r0, r0, #0x03
	str r0, [sp, #0x030]
	ldr r2, [sp, #0x024]
	subs r0, r3, r2
	cmp r0, #0x00
	bge _080629AC
	adds r0, #0x07
_080629AC:
	asrs r6, r0, #0x03
	ldr r3, [sp, #0x02C]
	adds r0, r3, #0x0
	muls r0, r3
	ldr r4, [sp, #0x030]
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r2, _08062A64 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	lsls r3, r5, #0x03
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r4, #0x00
	ldsh r0, [r0, r4]
	ldr r2, [sp, #0x02C]
	adds r1, r2, #0x0
	muls r1, r0
	str r1, [sp, #0x02C]
	ldr r4, [sp, #0x030]
	adds r3, r4, #0x0
	muls r3, r0
	str r3, [sp, #0x030]
	muls r6, r0
	movs r0, #0x0D
	muls r5, r0
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _08062A50
	mov r9, r8
	mov r10, r6
	mov r8, r3
	adds r7, r1, #0x0
_080629FE:
	ldr r0, _08062A64 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r9
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _08062A64 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r8
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08062A64 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r9
	mov r0, r10
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r4, [r4, #0x00]
	lsls r0, r6, #0x01
	add r10, r0
	ldr r2, [sp, #0x030]
	lsls r0, r2, #0x01
	add r8, r0
	ldr r3, [sp, #0x02C]
	lsls r0, r3, #0x01
	adds r7, r7, r0
	cmp r4, #0x00
	bne _080629FE
_08062A50:
	ldr r0, [sp, #0x018]
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08062A64: .4byte 0x03001038
	thumb_func_start sub_8062A68
sub_8062A68:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_8062794
	movs r2, #0x00
	ldsh r1, [r4, r2]
	lsls r1, r1, #0x01
	cmp r1, r0
	blt _08062B70
	ldr r6, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r6
	mov r8, r0
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08062AA6
	adds r0, #0xFF
_08062AA6:
	asrs r2, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08062AB4
	adds r0, #0xFF
_08062AB4:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08062AC2
	adds r0, #0xFF
_08062AC2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r6, #0x0
	ldr r1, _08062B7C @ =0x000040D9
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	adds r3, r6, #0x0
	adds r3, #0x7F
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r5
	mov r12, r2
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08062B80 @ =0x08062C49
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x06
	strh r0, [r1, #0x00]
	str r5, [r7, #0x30]
	adds r1, r7, #0x0
	adds r1, #0xAC
	movs r0, #0x10
	strh r0, [r1, #0x00]
	ldr r0, _08062B84 @ =0x08062B89
	str r0, [r7, #0x4C]
_08062B70:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062B7C: .4byte 0x000040D9
_08062B80: .4byte sub_8062C48
_08062B84: .4byte sub_8062B88
	thumb_func_start sub_8062B88
sub_8062B88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	bl sub_8062794
	adds r6, r7, #0x0
	adds r6, #0xAC
	ldrh r0, [r6, #0x00]
	subs r0, #0x01
	strh r0, [r6, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _08062C2A
	ldr r5, _08062C34 @ =0x03001038
	ldr r4, _08062C38 @ =0x0819832C
	ldr r0, _08062C3C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB6
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	mov r8, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r0, [r7, #0x28]
	adds r0, #0xB8
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r6, r3]
	bl _call_via_r2
	ldr r3, _08062C40 @ =0x0300034C
	ldr r2, _08062C44 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x01
	bne _08062C2A
	ldr r0, [r7, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_807C298
_08062C2A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08062C34: .4byte 0x03001038
_08062C38: .4byte 0x0819832C
_08062C3C: .4byte 0x08198220
_08062C40: .4byte 0x0300034C
_08062C44: .4byte 0x00000888
	thumb_func_start sub_8062C48
sub_8062C48:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08062C6C
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _08062C6C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08062C6C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08062C8E
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	cmp r1, #0x00
	bne _08062C88
	adds r0, #0xB4
	strh r1, [r0, #0x00]
_08062C88:
	adds r0, r4, #0x0
	bl sub_807C298
_08062C8E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8062C94
sub_8062C94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08062CD8
	ldr r0, _08062CCC @ =0x0000010B
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08062CD4
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _08062CD0 @ =0x08062D85
	b _08062CD6
	.byte 0x00, 0x00
_08062CCC: .4byte 0x0000010B
_08062CD0: .4byte sub_8062D84
_08062CD4:
	ldr r0, _08062CE0 @ =0x08062D69
_08062CD6:
	str r0, [r4, #0x4C]
_08062CD8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062CE0: .4byte sub_8062D68
	.byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x10, 0x1C, 0xA0, 0x30, 0x01, 0x21, 0x01, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x0D, 0x2E, 0x06, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0xE0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x21, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x21, 0x1C, 0x9C, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x37, 0xF1, 0xF3, 0xF8, 0x22, 0x1C, 0xA0, 0x32, 0x01, 0x21, 0x01, 0x40, 0x02, 0x31
	.byte 0x11, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x71, 0x2E, 0x06, 0x08
	thumb_func_start sub_8062D68
sub_8062D68:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062D80 @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08062D80: .4byte sub_808750C
	thumb_func_start sub_8062D84
sub_8062D84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062DD0
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062DAE
	adds r1, #0xFF
_08062DAE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062DB8
	adds r2, #0xFF
_08062DB8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062DC2
	adds r3, #0xFF
_08062DC2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062DD8 @ =0x0000105D
	bl sub_80DF024
	ldr r0, _08062DDC @ =0x08062DE1
	str r0, [r4, #0x4C]
_08062DD0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08062DD8: .4byte 0x0000105D
_08062DDC: .4byte sub_8062DE0
	thumb_func_start sub_8062DE0
sub_8062DE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062E00
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E08 @ =0x0806259D
	str r0, [r4, #0x4C]
_08062E00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E08: .4byte sub_806259C
	thumb_func_start sub_8062E0C
sub_8062E0C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062E60
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08062E32
	adds r1, #0xFF
_08062E32:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08062E3C
	adds r2, #0xFF
_08062E3C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08062E46
	adds r3, #0xFF
_08062E46:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08062E68 @ =0x0000105D
	bl sub_80DF024
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08062E6C @ =0x08062DE1
	str r0, [r4, #0x4C]
_08062E60:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08062E68: .4byte 0x0000105D
_08062E6C: .4byte sub_8062DE0
	thumb_func_start sub_8062E70
sub_8062E70:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08062E8C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062E94 @ =0x08062E99
	str r0, [r4, #0x4C]
_08062E8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062E94: .4byte sub_8062E98
	thumb_func_start sub_8062E98
sub_8062E98:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062EF4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08062EFC @ =0x08062F01
	str r0, [r4, #0x4C]
_08062EF4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062EFC: .4byte sub_8062F00
	thumb_func_start sub_8062F00
sub_8062F00:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F34
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F24
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F30
_08062F24:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F30:
	ldr r0, _08062F3C @ =0x08062F41
	str r0, [r4, #0x4C]
_08062F34:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F3C: .4byte sub_8062F40
	thumb_func_start sub_8062F40
sub_8062F40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08062F80
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062F68
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062F74
_08062F68:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062F74:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08062F88 @ =0x08062F8D
	str r0, [r4, #0x4C]
_08062F80:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062F88: .4byte sub_8062F8C
	thumb_func_start sub_8062F8C
sub_8062F8C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08062FC8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08062FB8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08062FC4
_08062FB8:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08062FC4:
	ldr r0, _08062FD0 @ =0x08062E0D
	str r0, [r4, #0x4C]
_08062FC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08062FD0: .4byte sub_8062E0C
	thumb_func_start sub_8062FD4
sub_8062FD4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08062FE8
	b _080630F2
_08062FE8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08062FFC
	adds r1, #0xFF
_08062FFC:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063006
	adds r2, #0xFF
_08063006:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063010
	adds r3, #0xFF
_08063010:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080630FC @ =0x000012AB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063024
	adds r0, #0xFF
_08063024:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0C
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063032
	adds r0, #0xFF
_08063032:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806303E
	adds r0, #0xFF
_0806303E:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063100 @ =0x000040F4
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063104 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063108 @ =0x080632E5
	str r0, [r5, #0x58]
	ldr r0, _0806310C @ =0x080632C1
	str r0, [r5, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA8
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08063110 @ =0x08063119
	str r0, [r5, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08063114 @ =0x08063309
	str r0, [r6, #0x4C]
_080630F2:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080630FC: .4byte 0x000012AB
_08063100: .4byte 0x000040F4
_08063104: .4byte sub_8087540
_08063108: .4byte sub_80632E4
_0806310C: .4byte sub_80632C0
_08063110: .4byte sub_8063118
_08063114: .4byte sub_8063308
	thumb_func_start sub_8063118
sub_8063118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0x0
	ldr r4, _08063230 @ =0x03000E18
	ldr r2, _08063234 @ =0x08200014
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r4, #0x00]
	ldr r1, _08063238 @ =0x03000E48
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08063142
	adds r0, #0xFF
_08063142:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _0806314E
	adds r0, #0xFF
_0806314E:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	movs r0, #0x01
	mov r10, r0
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, _08063238 @ =0x03000E48
	adds r1, #0x06
	mov r8, r1
	movs r7, #0x00
	ldr r2, _08063238 @ =0x03000E48
	adds r2, #0x04
	mov r12, r2
_08063168:
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _08063176
	adds r1, #0xFF
_08063176:
	ldr r6, _0806323C @ =0x083B86E4
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r7, r0
	adds r0, r0, r6
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r12
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _08063198
	adds r2, #0xFF
_08063198:
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x04
	adds r1, r7, r1
	adds r0, r6, #0x2
	mov r9, r0
	add r1, r9
	asrs r0, r2, #0x08
	ldrh r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	adds r2, r7, #0x4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bge _080631BE
	adds r1, #0xFF
_080631BE:
	adds r3, r2, #0x0
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r3, r0
	adds r0, r0, r6
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r2, r12
	strh r1, [r2, #0x04]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bge _080631E0
	adds r2, #0xFF
_080631E0:
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x04
	adds r0, r3, r0
	add r0, r9
	asrs r1, r2, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #0x04]
	movs r1, #0x08
	add r8, r1
	adds r7, #0x08
	add r12, r1
	movs r2, #0x02
	add r10, r2
	mov r0, r10
	cmp r0, #0x04
	ble _08063168
	ldr r1, _08063230 @ =0x03000E18
	ldr r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	lsls r1, r1, #0x01
	ldr r2, _08063240 @ =0x083B8714
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r3, [r1, r2]
	ldr r1, _08063238 @ =0x03000E48
	movs r2, #0x05
	bl sub_801B748
	ldr r0, _08063244 @ =0x08063249
	str r0, [r5, #0x4C]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063230: .4byte 0x03000E18
_08063234: .4byte 0x08200014
_08063238: .4byte 0x03000E48
_0806323C: .4byte 0x083B86E4
_08063240: .4byte 0x083B8714
_08063244: .4byte sub_8063248
	thumb_func_start sub_8063248
sub_8063248:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r7, _080632A0 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _080632A4 @ =0x03000E40
	ldr r6, _080632A8 @ =0x03000E44
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _080632AC
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x00]
	str r2, [r4, #0x14]
	cmp r0, #0x00
	bge _08063274
	adds r0, #0xFF
_08063274:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _08063280
	adds r0, #0xFF
_08063280:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806328C
	adds r0, #0xFF
_0806328C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _080632B8
	.byte 0x00, 0x00
_080632A0: .4byte 0x03000E18
_080632A4: .4byte 0x03000E40
_080632A8: .4byte 0x03000E44
_080632AC:
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
_080632B8:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80632C0
sub_80632C0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _080632DA
	ldr r0, _080632E0 @ =0x08063385
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
_080632DA:
	pop {r4}
	pop {r1}
	bx r1
_080632E0: .4byte sub_8063384
	thumb_func_start sub_80632E4
sub_80632E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08063304 @ =0x080633D1
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08063304: .4byte sub_80633D0
	thumb_func_start sub_8063308
sub_8063308:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063332
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063338 @ =0x0808750D
	str r0, [r4, #0x4C]
_08063332:
	pop {r4}
	pop {r0}
	bx r0
_08063338: .4byte sub_808750C
	.byte 0x30, 0xB5, 0x05, 0x1C, 0xE8, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x22, 0x81, 0x5E, 0x01, 0x20
	.byte 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x29, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x29, 0x1C
	.byte 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x36, 0xF1, 0xE5, 0xFD, 0x2C, 0x1C, 0xA8, 0x34, 0x03, 0x21
	.byte 0x77, 0xF1, 0x8E, 0xFC, 0x20, 0x60, 0x03, 0x48, 0xE8, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x21, 0x34, 0x06, 0x08
	thumb_func_start sub_8063384
sub_8063384:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08063392
	adds r1, #0xFF
_08063392:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806339C
	adds r2, #0xFF
_0806339C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080633A6
	adds r3, #0xFF
_080633A6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080633C8 @ =0x000012CD
	bl sub_80DF024
	ldr r0, _080633CC @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080633C8: .4byte 0x000012CD
_080633CC: .4byte 0x03000E18
	thumb_func_start sub_80633D0
sub_80633D0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080633DE
	adds r1, #0xFF
_080633DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080633E8
	adds r2, #0xFF
_080633E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080633F2
	adds r3, #0xFF
_080633F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063418 @ =0x000012CD
	bl sub_80DF024
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _0806341C @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063418: .4byte 0x000012CD
_0806341C: .4byte 0x03000E18
	thumb_func_start sub_8063420
sub_8063420:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063464
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08063442
	adds r1, #0xFF
_08063442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806344C
	adds r2, #0xFF
_0806344C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08063456
	adds r3, #0xFF
_08063456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806346C @ =0x000012A3
	bl sub_80DF024
	ldr r0, _08063470 @ =0x08063475
	str r0, [r4, #0x4C]
_08063464:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806346C: .4byte 0x000012A3
_08063470: .4byte sub_8063474
	thumb_func_start sub_8063474
sub_8063474:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080634D0
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080634D8 @ =0x080634DD
	str r0, [r4, #0x4C]
_080634D0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080634D8: .4byte sub_80634DC
	thumb_func_start sub_80634DC
sub_80634DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063518
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063500
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806350C
_08063500:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806350C:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08063520 @ =0x08063525
	str r0, [r4, #0x4C]
_08063518:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063520: .4byte sub_8063524
	thumb_func_start sub_8063524
sub_8063524:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806355E
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806355E
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _08063564 @ =0x08062FD5
	str r0, [r4, #0x4C]
_0806355E:
	pop {r4}
	pop {r0}
	bx r0
_08063564: .4byte sub_8062FD4
	thumb_func_start sub_8063568
sub_8063568:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080635F0
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7C
	movs r1, #0x00
	strh r3, [r0, #0x00]
	subs r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080635E2
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	b _080635EC
_080635E2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
_080635EC:
	ldr r0, _080635F8 @ =0x08063A25
	str r0, [r4, #0x4C]
_080635F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080635F8: .4byte sub_8063A24
	thumb_func_start sub_80635FC
sub_80635FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063616
	b _08063856
_08063616:
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08063622
	b _08063814
_08063622:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806362A
	adds r1, #0xFF
_0806362A:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063634
	adds r0, #0xFF
_08063634:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063640
	adds r3, #0xFF
_08063640:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080637F0 @ =0x00001296
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08063654
	adds r2, #0xFF
_08063654:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0806365E
	adds r3, #0xFF
_0806365E:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063668
	adds r0, #0xFF
_08063668:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080637F4 @ =0x000040F8
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080637F8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080637FC @ =0x08063921
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r5, #0x18]
	str r0, [r5, #0x40]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	ldr r2, _08063800 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r0, [r5, #0x3C]
	str r0, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r9, r0
	ldr r0, [r5, #0x40]
	mov r2, r9
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08063720
	adds r0, #0xFF
_08063720:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08063730
	adds r0, #0xFF
_08063730:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08063740
	adds r0, #0xFF
_08063740:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	ldr r2, _08063804 @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	ldr r1, _08063808 @ =0x00000133
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08063792
	movs r0, #0x02
_08063792:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806380C @ =0x0806386D
	str r0, [r5, #0x4C]
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r1, r4, #0x0
	bl __divsi3
	mov r1, r9
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r2, _08063800 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	str r0, [r6, #0x38]
	str r0, [r6, #0x14]
	str r0, [r6, #0x3C]
	ldr r0, _08063810 @ =0x080639C1
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
	b _08063856
_080637F0: .4byte 0x00001296
_080637F4: .4byte 0x000040F8
_080637F8: .4byte sub_8087540
_080637FC: .4byte sub_8063920
_08063800: .4byte 0xFFFFC000
_08063804: .4byte 0x03001038
_08063808: .4byte 0x00000133
_0806380C: .4byte sub_806386C
_08063810: .4byte sub_80639C0
_08063814:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806381C
	adds r1, #0xFF
_0806381C:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063826
	adds r0, #0xFF
_08063826:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063832
	adds r3, #0xFF
_08063832:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08063864 @ =0x0000129B
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063868 @ =0x0806398D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
_08063856:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08063864: .4byte 0x0000129B
_08063868: .4byte sub_806398C
	thumb_func_start sub_806386C
sub_806386C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x0C]
	adds r0, r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _08063918
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x45
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	bl sub_807F47C
	adds r0, r6, #0x0
	bl sub_807C298
_08063918:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8063920
sub_8063920:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806397E
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08063938
	adds r2, #0xFF
_08063938:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08063942
	adds r3, #0xFF
_08063942:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08063958
	movs r0, #0x13
	b _0806395A
_08063958:
	movs r0, #0x12
_0806395A:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r1, #0x1E
	str r1, [r0, #0x00]
	ldr r0, _08063988 @ =0x08063A75
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806397E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063988: .4byte sub_8063A74
	thumb_func_start sub_806398C
sub_806398C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080639B4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x03
	strh r1, [r0, #0x00]
	ldr r0, _080639BC @ =0x08063AD5
	str r0, [r4, #0x4C]
_080639B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080639BC: .4byte sub_8063AD4
	thumb_func_start sub_80639C0
sub_80639C0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08063A12
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x10]
	str r1, [r4, #0x38]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	cmp r1, #0x00
	bge _080639E4
	adds r1, #0xFF
_080639E4:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080639EC
	adds r0, #0xFF
_080639EC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080639F8
	adds r3, #0xFF
_080639F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063A1C @ =0x00001296
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A20 @ =0x08063B2D
	str r0, [r4, #0x4C]
_08063A12:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A1C: .4byte 0x00001296
_08063A20: .4byte sub_8063B2C
	thumb_func_start sub_8063A24
sub_8063A24:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063A40
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A48 @ =0x080635FD
	str r0, [r4, #0x4C]
_08063A40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A48: .4byte sub_80635FC
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x59, 0x3B, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x59, 0x3B, 0x06, 0x08
	thumb_func_start sub_8063A74
sub_8063A74:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08063ACC
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08063AB8 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	movs r0, #0x00
	str r0, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08063AC0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063ABC @ =0x0806386D
	str r0, [r4, #0x4C]
	b _08063ACC
	.byte 0x00, 0x00
_08063AB8: .4byte sub_8087540
_08063ABC: .4byte sub_806386C
_08063AC0:
	adds r0, r1, #0x0
	bl sub_8086700
	adds r0, r4, #0x0
	bl sub_807C298
_08063ACC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8063AD4
sub_8063AD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B1A
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08063B1A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063B20 @ =0x00001471
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063B24 @ =0x08063B81
	str r0, [r4, #0x5C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
	ldr r0, _08063B28 @ =0x08063BA9
	str r0, [r4, #0x4C]
_08063B1A:
	pop {r4}
	pop {r0}
	bx r0
_08063B20: .4byte 0x00001471
_08063B24: .4byte sub_8063B80
_08063B28: .4byte sub_8063BA8
	thumb_func_start sub_8063B2C
sub_8063B2C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063B4C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B54 @ =0x08063BF1
	str r0, [r4, #0x4C]
_08063B4C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B54: .4byte sub_8063BF0
	thumb_func_start sub_8063B58
sub_8063B58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063B74
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063B7C @ =0x08063569
	str r0, [r4, #0x4C]
_08063B74:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063B7C: .4byte sub_8063568
	thumb_func_start sub_8063B80
sub_8063B80:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _08063B9A
	ldr r0, _08063BA4 @ =0x08063C25
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x10
	str r0, [r1, #0x00]
_08063B9A:
	adds r0, r2, #0x0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08063BA4: .4byte sub_8063C24
	thumb_func_start sub_8063BA8
sub_8063BA8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063BDC
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08063BE4 @ =0x00001485
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _08063BE8 @ =0x08063B81
	str r0, [r4, #0x5C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08063BEC @ =0x08063C8D
	str r0, [r4, #0x4C]
_08063BDC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063BE4: .4byte 0x00001485
_08063BE8: .4byte sub_8063B80
_08063BEC: .4byte sub_8063C8C
	thumb_func_start sub_8063BF0
sub_8063BF0:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08063C1C @ =0xFFFFFE00
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08063C04
	adds r3, #0xFF
	adds r0, r1, r3
_08063C04:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08063C18
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r2, #0x10]
	ldr r0, _08063C20 @ =0x0808750D
	str r0, [r2, #0x4C]
_08063C18:
	pop {r0}
	bx r0
_08063C1C: .4byte 0xFFFFFE00
_08063C20: .4byte sub_808750C
	thumb_func_start sub_8063C24
sub_8063C24:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08063C56
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08063C5C @ =0x08063C61
	str r0, [r4, #0x4C]
_08063C56:
	pop {r4}
	pop {r0}
	bx r0
_08063C5C: .4byte sub_8063C60
	thumb_func_start sub_8063C60
sub_8063C60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063C80
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063C88 @ =0x080874B5
	str r0, [r4, #0x4C]
_08063C80:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063C88: .4byte sub_80874B4
	thumb_func_start sub_8063C8C
sub_8063C8C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063CBC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08063CBC
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063CC4 @ =0x08063C61
	str r0, [r4, #0x4C]
_08063CBC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063CC4: .4byte sub_8063C60
	thumb_func_start sub_8063CC8
sub_8063CC8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063CDC
	b _08063F12
_08063CDC:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08063D00
	adds r1, #0xFF
_08063D00:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08063D0A
	adds r2, #0xFF
_08063D0A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063D14
	adds r3, #0xFF
_08063D14:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08063DE4 @ =0x00001079
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08063DF8
	ldr r0, _08063DE8 @ =0x00000113
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063D3E
	adds r0, #0xFF
_08063D3E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063D4C
	adds r0, #0xFF
_08063D4C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063D58
	adds r0, #0xFF
_08063D58:
	asrs r0, r0, #0x08
	adds r0, #0x0A
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063DEC @ =0x000040F1
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063DF0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063DF4 @ =0x08064275
	str r0, [r5, #0x5C]
	b _08063EB2
	.byte 0x00, 0x00
_08063DE4: .4byte 0x00001079
_08063DE8: .4byte 0x00000113
_08063DEC: .4byte 0x000040F1
_08063DF0: .4byte sub_8087540
_08063DF4: .4byte sub_8064274
_08063DF8:
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063E0E
	adds r0, #0xFF
_08063E0E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063E1C
	adds r0, #0xFF
_08063E1C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063E28
	adds r0, #0xFF
_08063E28:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08063F1C @ =0x000040F1
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r1, [r0, #0x06]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08063F20 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08063F24 @ =0x08064291
	str r0, [r5, #0x60]
_08063EB2:
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x84
	ldr r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	ldr r1, [r5, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	ldr r0, _08063F28 @ =0x08063F31
	str r0, [r5, #0x4C]
	ldr r0, _08063F2C @ =0x080642AD
	str r0, [r6, #0x4C]
_08063F12:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063F1C: .4byte 0x000040F1
_08063F20: .4byte sub_8087540
_08063F24: .4byte sub_8064290
_08063F28: .4byte sub_8063F30
_08063F2C: .4byte sub_80642AC
	thumb_func_start sub_8063F30
sub_8063F30:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08063F5C
	adds r4, r5, #0x0
	adds r4, #0xAE
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	beq _08063F5C
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	strh r0, [r4, #0x00]
_08063F5C:
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08063F70
	ldr r0, [r5, #0x10]
	ldr r1, _08063F6C @ =0xFFFFFDE7
	b _08063F74
_08063F6C: .4byte 0xFFFFFDE7
_08063F70:
	ldr r0, [r5, #0x10]
	ldr r1, _08063FBC @ =0xFFFFFECD
_08063F74:
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r4, r5, #0x0
	adds r4, #0xA4
	adds r0, r5, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	ldr r1, [r4, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x14]
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08063FA6
	adds r1, #0xFF
_08063FA6:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08063FB6
	adds r0, r5, #0x0
	bl sub_807C298
_08063FB6:
	pop {r4, r5}
	pop {r0}
	bx r0
_08063FBC: .4byte 0xFFFFFECD
	thumb_func_start sub_8063FC0
sub_8063FC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063FD8
	b _08064160
_08063FD8:
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08063FEE
	adds r0, #0xFF
_08063FEE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x09
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08063FFC
	adds r3, #0xFF
_08063FFC:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08064006
	adds r0, #0xFF
_08064006:
	asrs r0, r0, #0x08
	adds r0, #0x0F
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806416C @ =0x000040F2
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064170 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08064174 @ =0x08064225
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080640BC
	adds r0, #0xFF
_080640BC:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080640CC
	adds r0, #0xFF
_080640CC:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080640DC
	adds r0, #0xFF
_080640DC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08064178 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08064110
	adds r0, #0xFF
_08064110:
	asrs r2, r0, #0x08
	mov r8, r2
	lsrs r0, r0, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl __divsi3
	cmp r0, #0x01
	bne _0806412C
	movs r0, #0x02
_0806412C:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806417C @ =0x08064185
	str r0, [r5, #0x4C]
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064180 @ =0x0806424D
	str r0, [r6, #0x4C]
_08064160:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806416C: .4byte 0x000040F2
_08064170: .4byte sub_8087540
_08064174: .4byte sub_8064224
_08064178: .4byte 0x03001038
_0806417C: .4byte sub_8064184
_08064180: .4byte sub_806424C
	thumb_func_start sub_8064184
sub_8064184:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r1, [r6, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bgt _0806421E
	adds r0, r6, #0x0
	bl sub_807C298
_0806421E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8064224
sub_8064224:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08064242
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064248 @ =0x0806432D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08064242:
	pop {r4}
	pop {r1}
	bx r1
_08064248: .4byte sub_806432C
	thumb_func_start sub_806424C
sub_806424C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806426C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806426C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8064274
sub_8064274:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08064286
	ldr r0, _0806428C @ =0x080643DD
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08064286:
	pop {r4}
	pop {r1}
	bx r1
_0806428C: .4byte sub_80643DC
	thumb_func_start sub_8064290
sub_8064290:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _080642A2
	ldr r0, _080642A8 @ =0x08064425
	str r0, [r4, #0x4C]
	movs r0, #0x00
_080642A2:
	pop {r4}
	pop {r1}
	bx r1
_080642A8: .4byte sub_8064424
	thumb_func_start sub_80642AC
sub_80642AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080642CC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080642D4 @ =0x08064465
	str r0, [r4, #0x4C]
_080642CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080642D4: .4byte 0x08064465
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x71, 0x43, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32
	.byte 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x44, 0x06, 0x08
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x55, 0x43, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32
	.byte 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x89, 0x44, 0x06, 0x08
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x6D, 0x44, 0x06, 0x08
	thumb_func_start sub_806432C
sub_806432C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r1, #0x18]
	ldr r2, _08064350 @ =0xFFFFFC80
	adds r0, r0, r2
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _0806434C
	adds r0, r1, #0x0
	bl sub_807C298
_0806434C:
	pop {r0}
	bx r0
_08064350: .4byte 0xFFFFFC80
	thumb_func_start sub_8064354
sub_8064354:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806436C @ =0x08063FC1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806436C: .4byte sub_8063FC0
	thumb_func_start sub_8064370
sub_8064370:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _080643CC
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080643A4
	adds r1, #0xFF
_080643A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080643AE
	adds r2, #0xFF
_080643AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080643B8
	adds r3, #0xFF
_080643B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080643D4 @ =0x00001089
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _080643D8 @ =0x080644DD
	str r0, [r4, #0x4C]
_080643CC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080643D4: .4byte 0x00001089
_080643D8: .4byte sub_80644DC
	thumb_func_start sub_80643DC
sub_80643DC:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806441C @ =0xFFFFFDE7
	adds r0, r1, r3
	str r0, [r2, #0x10]
	ldr r4, [r2, #0x18]
	ldr r5, _08064420 @ =0xFFFFFF00
	adds r3, r4, r5
	str r3, [r2, #0x18]
	cmp r0, #0x00
	bge _080643F8
	subs r5, #0x1A
	adds r0, r1, r5
_080643F8:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _08064410
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0806440A
	subs r0, r4, #0x1
_0806440A:
	asrs r0, r0, #0x08
	cmp r0, #0x00
	bgt _08064416
_08064410:
	adds r0, r2, #0x0
	bl sub_807C298
_08064416:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806441C: .4byte 0xFFFFFDE7
_08064420: .4byte 0xFFFFFF00
	thumb_func_start sub_8064424
sub_8064424:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064432
	adds r1, #0xFF
_08064432:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806443C
	adds r2, #0xFF
_0806443C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064446
	adds r3, #0xFF
_08064446:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08064460 @ =0x00001081
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064460: .4byte 0x00001081
	.byte 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_806446C
sub_806446C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064484 @ =0x08063CC9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08064484: .4byte sub_8063CC8
	thumb_func_start sub_8064488
sub_8064488:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080644D2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080644C4
	ldr r0, _080644C0 @ =0x08064541
	b _080644D0
	.byte 0x00, 0x00
_080644C0: .4byte sub_8064540
_080644C4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _080644D8 @ =0x08064515
_080644D0:
	str r0, [r4, #0x4C]
_080644D2:
	pop {r4}
	pop {r0}
	bx r0
_080644D8: .4byte sub_8064514
	thumb_func_start sub_80644DC
sub_80644DC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0F
	bne _080644FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xB5
	bl play_sfx_80195B4
_080644FC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806450C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806450C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8064514
sub_8064514:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064534
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806453C @ =0x08063CC9
	str r0, [r4, #0x4C]
_08064534:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806453C: .4byte sub_8063CC8
	thumb_func_start sub_8064540
sub_8064540:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064554
	movs r0, #0x00
	str r0, [r2, #0x4C]
_08064554:
	pop {r0}
	bx r0
	thumb_func_start sub_8064558
sub_8064558:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064606
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080645AC
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064588
	adds r1, #0xFF
_08064588:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08064592
	adds r2, #0xFF
_08064592:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806459C
	adds r3, #0xFF
_0806459C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080645A8 @ =0x00001284
	bl sub_80DF024
	b _080645DE
_080645A8: .4byte 0x00001284
_080645AC:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080645C0
	adds r1, #0xFF
_080645C0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080645CA
	adds r2, #0xFF
_080645CA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080645D4
	adds r3, #0xFF
_080645D4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080645F4 @ =0x0000128D
	bl sub_80DF024
_080645DE:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080645F8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x28
	bl play_sfx_80195B4
	b _08064602
_080645F4: .4byte 0x0000128D
_080645F8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x28
	bl play_sfx_80195B4
_08064602:
	ldr r0, _08064610 @ =0x08064D21
	str r0, [r4, #0x4C]
_08064606:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064610: .4byte sub_8064D20
	thumb_func_start sub_8064614
sub_8064614:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08064628
	b _080647F0
_08064628:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08064642
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806464E
_08064642:
	adds r0, r6, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806464E:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08064670
	adds r0, #0xFF
_08064670:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806467E
	adds r0, #0xFF
_0806467E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806468A
	adds r0, #0xFF
_0806468A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806477C @ =0x000040F6
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064780 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r3, [r7, #0x00]
	cmp r3, #0x00
	bne _0806478C
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08064728
	adds r0, #0xFF
_08064728:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08064742
	adds r1, #0xFF
_08064742:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r1, #0xA0
	lsls r1, r1, #0x03
	str r1, [r0, #0x00]
	adds r0, #0x10
	strh r3, [r0, #0x00]
	subs r0, #0x0C
	str r1, [r0, #0x00]
	ldr r0, _08064784 @ =0x08064A11
	str r0, [r5, #0x4C]
	ldr r0, _08064788 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080647EC
	.byte 0x00, 0x00
_0806477C: .4byte 0x000040F6
_08064780: .4byte sub_8087540
_08064784: .4byte sub_8064A10
_08064788: .4byte 0x00000117
_0806478C:
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	ldr r2, _080647F8 @ =0xFFFFC000
	adds r0, r1, r2
	cmp r0, #0x00
	bge _080647A6
	adds r2, #0xFF
	adds r0, r1, r2
_080647A6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080647C0
	adds r1, #0xFF
_080647C0:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x90
	lsls r0, r0, #0x03
	str r0, [r1, #0x00]
	ldr r0, _080647FC @ =0x08064ADD
	str r0, [r5, #0x4C]
	ldr r0, _08064800 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080647EC:
	ldr r0, _08064804 @ =0x08064CB1
	str r0, [r6, #0x4C]
_080647F0:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080647F8: .4byte 0xFFFFC000
_080647FC: .4byte sub_8064ADC
_08064800: .4byte 0x00000117
_08064804: .4byte sub_8064CB0
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x04, 0x1C, 0x37, 0x4D, 0x38, 0x4A
	.byte 0x10, 0x20, 0x00, 0x21, 0x00, 0x23, 0xB4, 0xF7, 0xE5, 0xFA, 0xB6, 0xF7, 0x9B, 0xFF, 0x28, 0x60
	.byte 0x34, 0x49, 0xA0, 0x6B, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x08, 0x80, 0x20, 0x6C
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x48, 0x80, 0x01, 0x20, 0x80, 0x46, 0x89, 0x46
	.byte 0x2D, 0x49, 0x8A, 0x46, 0x4F, 0x46, 0x06, 0x37, 0x00, 0x25, 0x4E, 0x46, 0x04, 0x36, 0xE0, 0x6A
	.byte 0x80, 0x6A, 0xD8, 0x30, 0x00, 0x68, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x53, 0x46, 0xE9, 0x18
	.byte 0x00, 0x12, 0x09, 0x88, 0x40, 0x18, 0x30, 0x80, 0xE0, 0x6A, 0x80, 0x6A, 0xE0, 0x30, 0x00, 0x68
	.byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x9A, 0x1C, 0x94, 0x46, 0xA9, 0x18, 0x00, 0x12, 0x09, 0x88
	.byte 0x40, 0x18, 0x38, 0x80, 0x29, 0x1D, 0xE0, 0x6A, 0x80, 0x6A, 0xD8, 0x30, 0x00, 0x68, 0x00, 0x28
	.byte 0x00, 0xDA, 0xFF, 0x30, 0x0A, 0x1C, 0xD1, 0x18, 0x00, 0x12, 0x09, 0x88, 0x40, 0x18, 0xB0, 0x80
	.byte 0xE0, 0x6A, 0x80, 0x6A, 0xE0, 0x30, 0x00, 0x68, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x63, 0x46
	.byte 0xD1, 0x18, 0x00, 0x12, 0x09, 0x88, 0x40, 0x18, 0xB8, 0x80, 0x08, 0x37, 0x08, 0x35, 0x08, 0x36
	.byte 0x02, 0x20, 0x80, 0x44, 0x41, 0x46, 0x04, 0x29, 0xC1, 0xDD, 0x08, 0x4A, 0x10, 0x68, 0xC0, 0x23
	.byte 0x9B, 0x00, 0x49, 0x46, 0x05, 0x22, 0xB6, 0xF7, 0x33, 0xFF, 0x08, 0x48, 0xE0, 0x64, 0x38, 0xBC
	.byte 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x18, 0x0E, 0x00, 0x03
	.byte 0x1C, 0x00, 0x20, 0x08, 0x68, 0x0E, 0x00, 0x03, 0x1C, 0x87, 0x3B, 0x08, 0x09, 0x49, 0x06, 0x08
	thumb_func_start sub_8064908
sub_8064908:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r7, _08064970 @ =0x03000E18
	ldr r0, [r7, #0x00]
	ldr r5, _08064974 @ =0x03000E60
	ldr r6, _08064978 @ =0x03000E64
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_801B1C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0806497C
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x00]
	str r2, [r4, #0x18]
	cmp r0, #0x00
	bge _08064942
	adds r0, #0xFF
_08064942:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806494E
	adds r0, #0xFF
_0806494E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0806495A
	adds r0, #0xFF
_0806495A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _0806498E
	.byte 0x00, 0x00
_08064970: .4byte 0x03000E18
_08064974: .4byte 0x03000E60
_08064978: .4byte 0x03000E64
_0806497C:
	ldr r0, [r7, #0x00]
	bl free_heap_8018DA8
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08064998 @ =0x0806499D
	str r0, [r4, #0x4C]
_0806498E:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064998: .4byte sub_806499C
	thumb_func_start sub_806499C
sub_806499C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08064A04
	subs r1, #0x28
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x90
	lsls r0, r0, #0x04
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08064A0C @ =0x08064C81
	str r0, [r4, #0x4C]
_08064A04:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064A0C: .4byte sub_8064C80
	thumb_func_start sub_8064A10
sub_8064A10:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	ldr r1, [r4, #0x18]
	ldr r0, _08064A40 @ =0x000007FF
	cmp r1, r0
	bgt _08064A44
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	beq _08064A44
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _08064ACE
	.byte 0x00, 0x00
_08064A40: .4byte 0x000007FF
_08064A44:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	muls r0, r2
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r2, r0
	ble _08064A96
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r1, r2, r1
	str r1, [r4, #0x18]
	ldr r1, [r0, #0x00]
	subs r1, #0x2C
	str r1, [r0, #0x00]
_08064A96:
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	ldr r0, _08064AD4 @ =0x00005DFF
	cmp r1, r0
	bgt _08064AAE
	ldr r0, [r5, #0x00]
	subs r0, #0x19
	str r0, [r5, #0x00]
_08064AAE:
	ldr r0, [r5, #0x00]
	ldr r1, _08064AD8 @ =0xFFFFFD80
	cmp r0, r1
	bge _08064AB8
	str r1, [r5, #0x00]
_08064AB8:
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08064ACE
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807C298
_08064ACE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08064AD4: .4byte 0x00005DFF
_08064AD8: .4byte 0xFFFFFD80
	thumb_func_start sub_8064ADC
sub_8064ADC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r6, r5, #0x0
	adds r6, #0x9C
	ldr r4, [r5, #0x10]
	ldr r0, [r6, #0x00]
	subs r4, r4, r0
	str r4, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r1, [r0, r2]
	subs r0, #0x2C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	lsls r0, r0, #0x08
	muls r0, r1
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	subs r4, r4, r0
	ldr r0, _08064B68 @ =0x00005DFF
	cmp r4, r0
	bgt _08064B3A
	ldr r0, [r6, #0x00]
	subs r0, #0x11
	str r0, [r6, #0x00]
_08064B3A:
	ldr r1, [r5, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _08064B4A
	adds r0, r1, #0x0
	subs r0, #0xE6
	str r0, [r5, #0x18]
_08064B4A:
	ldr r1, [r5, #0x10]
	ldr r0, _08064B6C @ =0x00003FFF
	cmp r1, r0
	bgt _08064B7C
	ldr r1, [r5, #0x14]
	movs r0, #0xD0
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08064B70
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x60
	negs r0, r0
	b _08064B76
	.byte 0x00, 0x00
_08064B68: .4byte 0x00005DFF
_08064B6C: .4byte 0x00003FFF
_08064B70:
	adds r1, r5, #0x0
	adds r1, #0xA0
	movs r0, #0x60
_08064B76:
	str r0, [r1, #0x00]
	ldr r0, _08064B84 @ =0x08064B89
	str r0, [r5, #0x4C]
_08064B7C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064B84: .4byte sub_8064B88
	thumb_func_start sub_8064B88
sub_8064B88:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r2, r3, #0x0
	adds r2, #0x9C
	ldr r0, [r3, #0x10]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, [r2, #0x00]
	subs r0, #0x11
	str r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xA0
	ldr r0, [r3, #0x14]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	ldr r1, [r3, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08064BF6
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x38]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08064BD2
	adds r0, #0xFF
_08064BD2:
	asrs r0, r0, #0x08
	adds r2, r3, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	ldr r0, [r3, #0x3C]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08064BEA
	adds r0, #0xFF
_08064BEA:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _08064BFC @ =0x08064C01
	str r0, [r3, #0x4C]
_08064BF6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064BFC: .4byte sub_8064C00
	thumb_func_start sub_8064C00
sub_8064C00:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	adds r4, r5, #0x0
	adds r4, #0x9C
	ldr r0, [r5, #0x10]
	ldr r1, [r4, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x08
	muls r0, r2
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0x88
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	ldr r0, [r4, #0x00]
	subs r0, #0x11
	str r0, [r4, #0x00]
	ldr r1, [r5, #0x18]
	ldr r0, _08064C7C @ =0x00000FFF
	cmp r1, r0
	bgt _08064C5E
	adds r0, r1, #0x0
	adds r0, #0xE6
	str r0, [r5, #0x18]
_08064C5E:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08064C74
	ldr r0, [r5, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
_08064C74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064C7C: .4byte 0x00000FFF
	thumb_func_start sub_8064C80
sub_8064C80:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064CAA
	ldr r0, [r2, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_807C298
_08064CAA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8064CB0
sub_8064CB0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08064D14
	cmp r0, #0x01
	bne _08064CEC
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064CDC
	ldr r0, _08064CD8 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x07
	b _08064CFA
_08064CD8: .4byte 0x00000117
_08064CDC:
	ldr r0, _08064CE8 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0B
	b _08064CFA
_08064CE8: .4byte 0x00000117
_08064CEC:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064D04
	adds r0, r4, #0x0
	movs r1, #0x08
_08064CFA:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08064D10
_08064D04:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08064D10:
	ldr r0, _08064D1C @ =0x08064DDD
	str r0, [r4, #0x4C]
_08064D14:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064D1C: .4byte sub_8064DDC
	thumb_func_start sub_8064D20
sub_8064D20:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064D58
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064D48
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08064D54
_08064D48:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08064D54:
	ldr r0, _08064D60 @ =0x08064615
	str r0, [r4, #0x4C]
_08064D58:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064D60: .4byte sub_8064614
	thumb_func_start sub_8064D64
sub_8064D64:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r0, #0xA0
	movs r3, #0x00
	str r3, [r0, #0x00]
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08064D88
	adds r0, r2, #0x0
	adds r0, #0x9C
	str r3, [r0, #0x00]
	b _08064D90
_08064D88:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
_08064D90:
	ldr r0, _08064D9C @ =0x08064E09
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_08064D9C: .4byte sub_8064E08
	.byte 0x10, 0xB5, 0x02, 0x1C, 0xA0, 0x30, 0x01, 0x23, 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30
	.byte 0x00, 0x24, 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x04, 0xD1, 0x11, 0x1C, 0x9C, 0x31
	.byte 0x00, 0x20, 0x08, 0x60, 0x02, 0xE0, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x02, 0x48, 0xD0, 0x64
	.byte 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x09, 0x4E, 0x06, 0x08
	thumb_func_start sub_8064DDC
sub_8064DDC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064DFC
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064E04 @ =0x0808750D
	str r0, [r4, #0x4C]
_08064DFC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064E04: .4byte sub_808750C
	thumb_func_start sub_8064E08
sub_8064E08:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08064E24
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08064E2C @ =0x08064559
	str r0, [r4, #0x4C]
_08064E24:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064E2C: .4byte sub_8064558
	thumb_func_start sub_8064E30
sub_8064E30:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08064EC6
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064E56
	adds r1, #0xFF
_08064E56:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08064E60
	adds r2, #0xFF
_08064E60:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064E6A
	adds r3, #0xFF
_08064E6A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08064ED0 @ =0x00000EDB
	bl sub_80DF024
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r6, #0x4A
	strh r6, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064E8C
	adds r0, #0xFF
_08064E8C:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x30
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064E9E
	adds r0, #0xFF
_08064E9E:
	asrs r2, r0, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064EA8
	adds r3, #0xFF
_08064EA8:
	asrs r3, r3, #0x08
	adds r3, #0x48
	str r4, [sp, #0x000]
	ldr r0, _08064ED4 @ =0x00000EEA
	bl sub_80DF024
	strh r6, [r5, #0x00]
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064ED8 @ =0x08064EDD
	str r0, [r4, #0x4C]
_08064EC6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064ED0: .4byte 0x00000EDB
_08064ED4: .4byte 0x00000EEA
_08064ED8: .4byte sub_8064EDC
	thumb_func_start sub_8064EDC
sub_8064EDC:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08064FCA
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064F10
	adds r0, #0xFF
_08064F10:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x30
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08064F22
	adds r0, #0xFF
_08064F22:
	asrs r3, r0, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08064F2C
	adds r0, #0xFF
_08064F2C:
	asrs r0, r0, #0x08
	adds r0, #0x48
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _08064FD4 @ =0x000040DC
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064FD8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08064FDC @ =0x08065215
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x08
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08064FE0 @ =0x08065231
	str r0, [r5, #0x4C]
	ldr r0, _08064FE4 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08064FE8 @ =0x080652D5
	str r0, [r6, #0x4C]
_08064FCA:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064FD4: .4byte 0x000040DC
_08064FD8: .4byte sub_8087540
_08064FDC: .4byte sub_8065214
_08064FE0: .4byte sub_8065230
_08064FE4: .4byte 0x0000010F
_08064FE8: .4byte sub_80652D4
	thumb_func_start sub_8064FEC
sub_8064FEC:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080650C0
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08065014
	adds r0, #0xFF
_08065014:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08065022
	adds r0, #0xFF
_08065022:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806502E
	adds r0, #0xFF
_0806502E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _080650C8 @ =0x000040DD
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080650CC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080650D0 @ =0x080650D9
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r0, _080650D4 @ =0x080652B1
	str r0, [r6, #0x4C]
_080650C0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080650C8: .4byte 0x000040DD
_080650CC: .4byte sub_8087540
_080650D0: .4byte sub_80650D8
_080650D4: .4byte sub_80652B0
	thumb_func_start sub_80650D8
sub_80650D8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065140
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065140
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065148 @ =0x000014F2
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806514C @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _08065150 @ =0x0806515D
	str r0, [r4, #0x5C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806511E
	adds r1, #0xFF
_0806511E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065128
	adds r2, #0xFF
_08065128:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065132
	adds r3, #0xFF
_08065132:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065154 @ =0x00000F16
	bl sub_80DF024
	ldr r0, _08065158 @ =0x080651CD
	str r0, [r4, #0x4C]
_08065140:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08065148: .4byte 0x000014F2
_0806514C: .4byte 0x03000E3C
_08065150: .4byte sub_806515C
_08065154: .4byte 0x00000F16
_08065158: .4byte sub_80651CC
	thumb_func_start sub_806515C
sub_806515C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0806519C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065174
	adds r1, #0xFF
_08065174:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806517E
	adds r2, #0xFF
_0806517E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065188
	adds r3, #0xFF
_08065188:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080651A8 @ =0x00000F24
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r0, _080651AC @ =0x080651B1
	str r0, [r4, #0x4C]
_0806519C:
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080651A8: .4byte 0x00000F24
_080651AC: .4byte sub_80651B0
	thumb_func_start sub_80651B0
sub_80651B0:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080651C6
	adds r0, r2, #0x0
	bl sub_807C298
_080651C6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80651CC
sub_80651CC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080651FC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065204 @ =0x00001509
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08065208 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806520C @ =0x08065311
	str r0, [r4, #0x5C]
	ldr r0, _08065210 @ =0x0806533D
	str r0, [r4, #0x4C]
_080651FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065204: .4byte 0x00001509
_08065208: .4byte 0x03000E3C
_0806520C: .4byte sub_8065310
_08065210: .4byte sub_806533C
	thumb_func_start sub_8065214
sub_8065214:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065226
	ldr r0, _0806522C @ =0x08065385
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065226:
	pop {r4}
	pop {r1}
	bx r1
_0806522C: .4byte sub_8065384
	thumb_func_start sub_8065230
sub_8065230:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r4, #0x10]
	subs r0, #0xE6
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08065258
	adds r0, #0xFF
_08065258:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	lsls r1, r0, #0x04
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, _080652A8 @ =0x000007FF
	cmp r0, r1
	bgt _080652A0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806527C
	adds r1, #0xFF
_0806527C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065286
	adds r2, #0xFF
_08065286:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065290
	adds r3, #0xFF
_08065290:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080652AC @ =0x00000F08
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
_080652A0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080652A8: .4byte 0x000007FF
_080652AC: .4byte 0x00000F08
	thumb_func_start sub_80652B0
sub_80652B0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080652CA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080652D0 @ =0x0808750D
	str r0, [r4, #0x4C]
_080652CA:
	pop {r4}
	pop {r0}
	bx r0
_080652D0: .4byte sub_808750C
	thumb_func_start sub_80652D4
sub_80652D4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080652EE
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080652F4 @ =0x0808750D
	str r0, [r4, #0x4C]
_080652EE:
	pop {r4}
	pop {r0}
	bx r0
_080652F4: .4byte sub_808750C
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xCD, 0x53, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xF5, 0x53, 0x06, 0x08
	thumb_func_start sub_8065310
sub_8065310:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0806532E
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065338 @ =0x080651B1
	str r0, [r4, #0x4C]
_0806532E:
	adds r0, r5, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065338: .4byte sub_80651B0
	thumb_func_start sub_806533C
sub_806533C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806536C
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08065374 @ =0x0000151D
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08065378 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806537C @ =0x0806541D
	str r0, [r4, #0x5C]
	ldr r0, _08065380 @ =0x080651B1
	str r0, [r4, #0x4C]
_0806536C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065374: .4byte 0x0000151D
_08065378: .4byte 0x03000E3C
_0806537C: .4byte sub_806541C
_08065380: .4byte sub_80651B0
	thumb_func_start sub_8065384
sub_8065384:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806539C
	adds r1, #0xFF
_0806539C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080653A6
	adds r2, #0xFF
_080653A6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080653B0
	adds r3, #0xFF
_080653B0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080653C8 @ =0x00000EFF
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080653C8: .4byte 0x00000EFF
	thumb_func_start sub_80653CC
sub_80653CC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080653E8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080653F0 @ =0x08065429
	str r0, [r4, #0x4C]
_080653E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080653F0: .4byte sub_8065428
	thumb_func_start sub_80653F4
sub_80653F4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08065410
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065418 @ =0x08064E31
	str r0, [r4, #0x4C]
_08065410:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065418: .4byte sub_8064E30
	thumb_func_start sub_806541C
sub_806541C:
	push {lr}
	bl sub_80871A8
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8065428
sub_8065428:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065482
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806544E
	adds r1, #0xFF
_0806544E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065458
	adds r2, #0xFF
_08065458:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065462
	adds r3, #0xFF
_08065462:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806548C @ =0x0000230A
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x4A
	strh r0, [r1, #0x00]
	adds r0, #0xCF
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08065490 @ =0x08064FED
	str r0, [r4, #0x4C]
_08065482:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806548C: .4byte 0x0000230A
_08065490: .4byte sub_8064FEC
	thumb_func_start sub_8065494
sub_8065494:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065506
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806550C @ =0x08065B49
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08065506:
	pop {r4}
	pop {r0}
	bx r0
_0806550C: .4byte sub_8065B48
	thumb_func_start sub_8065510
sub_8065510:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080655A6
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0806554C
	adds r2, #0xFF
_0806554C:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08065556
	adds r0, #0xFF
_08065556:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08065562
	adds r0, #0xFF
_08065562:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080655B0 @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080655B4 @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, _080655B8 @ =0x080655BD
	str r0, [r4, #0x4C]
_080655A6:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080655B0: .4byte 0x000040A5
_080655B4: .4byte sub_8065AE4
_080655B8: .4byte sub_80655BC
	thumb_func_start sub_80655BC
sub_80655BC:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	cmp r0, #0x01
	bne _080655DC
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065658 @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_080655DC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065650
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0806560C
	adds r2, #0xFF
_0806560C:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08065616
	adds r0, #0xFF
_08065616:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08065622
	adds r0, #0xFF
_08065622:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806565C @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	ldr r0, _08065660 @ =0x08065665
	str r0, [r4, #0x4C]
_08065650:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08065658: .4byte sub_8065AE4
_0806565C: .4byte 0x000040A5
_08065660: .4byte sub_8065664
	thumb_func_start sub_8065664
sub_8065664:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	cmp r0, #0x11
	bne _08065684
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806574C @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_08065684:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065744
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080656BA
	adds r2, #0xFF
_080656BA:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080656C4
	adds r0, #0xFF
_080656C4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080656D0
	adds r0, #0xFF
_080656D0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08065750 @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065754 @ =0x08065B21
	str r0, [r4, #0x4C]
_08065744:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0806574C: .4byte sub_8065AE4
_08065750: .4byte 0x000040A5
_08065754: .4byte sub_8065B20
	thumb_func_start sub_8065758
sub_8065758:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08065768
	adds r2, #0xFF
_08065768:
	asrs r2, r2, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08065772
	adds r0, #0xFF
_08065772:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806577E
	adds r0, #0xFF
_0806577E:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08065888 @ =0x000040A4
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	adds r6, r5, #0x0
	adds r6, #0x77
	adds r7, r5, #0x0
	adds r7, #0x74
	cmp r0, #0x00
	beq _080657B0
_080657AA:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _080657AA
_080657B0:
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r6, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806588C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065890 @ =0x08065A9D
	str r0, [r4, #0x60]
	ldrb r1, [r7, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806581A
	adds r0, #0xFF
_0806581A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806582A
	adds r0, #0xFF
_0806582A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r5, r0, r1
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08065846
	ldr r1, _08065894 @ =0x000001FF
	adds r0, r5, r1
_08065846:
	asrs r6, r0, #0x09
	lsrs r0, r0, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08065860
	movs r0, #0x02
_08065860:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r6, [r0, #0x00]
	adds r1, #0x08
	negs r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08065898 @ =0x0806593D
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065888: .4byte 0x000040A4
_0806588C: .4byte sub_8087540
_08065890: .4byte sub_8065A9C
_08065894: .4byte 0x000001FF
_08065898: .4byte sub_806593C
	thumb_func_start sub_806589C
sub_806589C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065930
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r1, [r5, #0x00]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	beq _080658D8
	cmp r0, #0x10
	beq _080658FC
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	b _0806592C
_080658D8:
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _08065920
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, _080658F8 @ =0x080655BD
	b _0806592E
	.byte 0x00, 0x00
_080658F8: .4byte sub_80655BC
_080658FC:
	movs r0, #0x0F
	ands r1, r0
	cmp r1, #0x00
	bne _08065920
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldr r0, _0806591C @ =0x08065665
	b _0806592E
	.byte 0x00, 0x00
_0806591C: .4byte sub_8065664
_08065920:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806592C:
	ldr r0, _08065938 @ =0x0808750D
_0806592E:
	str r0, [r4, #0x4C]
_08065930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065938: .4byte sub_808750C
	thumb_func_start sub_806593C
sub_806593C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r1, [r6, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	bgt _080659D2
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080659AE
	adds r1, #0xFF
_080659AE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080659B8
	adds r2, #0xFF
_080659B8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080659C2
	adds r3, #0xFF
_080659C2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080659DC @ =0x0000113D
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
_080659D2:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080659DC: .4byte 0x0000113D
	thumb_func_start sub_80659E0
sub_80659E0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065A52
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065A58 @ =0x08065A5D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08065A52:
	pop {r4}
	pop {r0}
	bx r0
_08065A58: .4byte sub_8065A5C
	thumb_func_start sub_8065A5C
sub_8065A5C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065A92
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _08065A98 @ =0x08065BD9
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
_08065A92:
	pop {r4}
	pop {r0}
	bx r0
_08065A98: .4byte sub_8065BD8
	thumb_func_start sub_8065A9C
sub_8065A9C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08065AD8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065AB2
	adds r1, #0xFF
_08065AB2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065ABC
	adds r2, #0xFF
_08065ABC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065AC6
	adds r3, #0xFF
_08065AC6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065AE0 @ =0x0000113D
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_08065AD8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_08065AE0: .4byte 0x0000113D
	thumb_func_start sub_8065AE4
sub_8065AE4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08065B14
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08065AFA
	bl sub_807C298
_08065AFA:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _08065B1C @ =0x0806589D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08065B14:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08065B1C: .4byte sub_806589C
	thumb_func_start sub_8065B20
sub_8065B20:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B3E
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08065B44 @ =0x08065C5D
	str r0, [r4, #0x4C]
_08065B3E:
	pop {r4}
	pop {r0}
	bx r0
_08065B44: .4byte sub_8065C5C
	thumb_func_start sub_8065B48
sub_8065B48:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B6A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065B70 @ =0x08065511
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
_08065B6A:
	pop {r4}
	pop {r0}
	bx r0
_08065B70: .4byte sub_8065510
	thumb_func_start sub_8065B74
sub_8065B74:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08065B86
	movs r0, #0x02
	str r0, [r1, #0x00]
_08065B86:
	adds r0, r2, #0x0
	adds r0, #0xA8
	ldr r1, [r1, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _08065B98 @ =0x08065C35
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_08065B98: .4byte sub_8065C34
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x13, 0x1C, 0x9C, 0x33, 0x18, 0x68, 0x00, 0x28, 0x05, 0xD1, 0x03, 0x20
	.byte 0x18, 0x60, 0x11, 0x1C, 0xA0, 0x31, 0x20, 0x20, 0x08, 0x60, 0x11, 0x1C, 0xA4, 0x31, 0x10, 0x1C
	.byte 0xA0, 0x30, 0x00, 0x68, 0x08, 0x60, 0x04, 0x31, 0x18, 0x68, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xA1, 0x5C, 0x06, 0x08
	thumb_func_start sub_8065BD8
sub_8065BD8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065C28
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065C04
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	b _08065C28
_08065C04:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	ldr r0, _08065C30 @ =0x08065CC5
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_08065C28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C30: .4byte sub_8065CC4
	thumb_func_start sub_8065C34
sub_8065C34:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08065C50
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065C58 @ =0x080659E1
	str r0, [r4, #0x4C]
_08065C50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C58: .4byte sub_80659E0
	thumb_func_start sub_8065C5C
sub_8065C5C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065C94
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065C94
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, _08065C9C @ =0x08065D11
	str r0, [r5, #0x4C]
_08065C94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C9C: .4byte sub_8065D10
	thumb_func_start sub_8065CA0
sub_8065CA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08065CC0 @ =0x08065495
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08065CC0: .4byte sub_8065494
	thumb_func_start sub_8065CC4
sub_8065CC4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065D06
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065CF0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	b _08065D06
_08065CF0:
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065D0C @ =0x08065D79
	str r0, [r4, #0x4C]
_08065D06:
	pop {r4}
	pop {r0}
	bx r0
_08065D0C: .4byte sub_8065D78
	thumb_func_start sub_8065D10
sub_8065D10:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065D68
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065D36
	adds r1, #0xFF
_08065D36:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065D40
	adds r2, #0xFF
_08065D40:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065D4A
	adds r3, #0xFF
_08065D4A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065D70 @ =0x0000112B
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_8065758
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _08065D74 @ =0x08065DD5
	str r0, [r4, #0x4C]
_08065D68:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08065D70: .4byte 0x0000112B
_08065D74: .4byte sub_8065DD4
	thumb_func_start sub_8065D78
sub_8065D78:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065DD0 @ =0x08065E2D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065DD0: .4byte sub_8065E2C
	thumb_func_start sub_8065DD4
sub_8065DD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065E20
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065E10
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x04
	str r1, [r0, #0x00]
	ldr r0, _08065E0C @ =0x08065E69
	b _08065E1E
_08065E0C: .4byte sub_8065E68
_08065E10:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065E28 @ =0x08065E4D
_08065E1E:
	str r0, [r4, #0x4C]
_08065E20:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065E28: .4byte sub_8065E4C
	thumb_func_start sub_8065E2C
sub_8065E2C:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065E44
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _08065E48 @ =0x08065EA1
	str r0, [r2, #0x4C]
_08065E44:
	pop {r0}
	bx r0
_08065E48: .4byte sub_8065EA0
	thumb_func_start sub_8065E4C
sub_8065E4C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065E60
	ldr r0, _08065E64 @ =0x08065ED5
	str r0, [r2, #0x4C]
_08065E60:
	pop {r0}
	bx r0
_08065E64: .4byte sub_8065ED4
	thumb_func_start sub_8065E68
sub_8065E68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065E96
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08065E96
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065E9C @ =0x08065D11
	str r0, [r4, #0x4C]
_08065E96:
	pop {r4}
	pop {r0}
	bx r0
_08065E9C: .4byte sub_8065D10
	thumb_func_start sub_8065EA0
sub_8065EA0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065ECA
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065ED0 @ =0x0808750D
	str r0, [r4, #0x4C]
_08065ECA:
	pop {r4}
	pop {r0}
	bx r0
_08065ED0: .4byte sub_808750C
	thumb_func_start sub_8065ED4
sub_8065ED4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x00
	ldr r1, [r4, #0x30]
	cmp r1, #0x00
	beq _08065EEC
_08065EE0:
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r1, #0x30]
	cmp r1, #0x00
	bne _08065EE0
_08065EEC:
	cmp r0, #0x00
	bne _08065F00
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065F08 @ =0x0808750D
	str r0, [r4, #0x4C]
_08065F00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065F08: .4byte sub_808750C
	thumb_func_start sub_8065F0C
sub_8065F0C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065FB4
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065F34
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08065F40
_08065F34:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08065F40:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xA6
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065FA0 @ =0x08066605
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065FA8
	ldr r0, _08065FA4 @ =0x00000129
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08065FB4
_08065FA0: .4byte sub_8066604
_08065FA4: .4byte 0x00000129
_08065FA8:
	movs r0, #0x95
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08065FB4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8065FBC
sub_8065FBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08065FD8
	b _08066284
_08065FD8:
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _08065FF2
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08065FFE
_08065FF2:
	adds r0, r7, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08065FFE:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08066048
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0806600E
	adds r0, #0xFF
_0806600E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0F
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _0806601C
	adds r0, #0xFF
_0806601C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08066028
	adds r0, #0xFF
_08066028:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08066044 @ =0x00004092
	b _08066084
	.byte 0x00, 0x00
_08066044: .4byte 0x00004092
_08066048:
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08066052
	adds r0, #0xFF
_08066052:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0F
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08066060
	adds r0, #0xFF
_08066060:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _0806606C
	adds r0, #0xFF
_0806606C:
	asrs r0, r0, #0x08
	adds r0, #0x13
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806609C @ =0x00004093
_08066084:
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x00C]
	cmp r1, #0x01
	bne _080660A0
	ldr r0, [r7, #0x30]
	str r4, [r0, #0x30]
	b _080660A2
_0806609C: .4byte 0x00004093
_080660A0:
	str r4, [r7, #0x30]
_080660A2:
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r7
	mov r8, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	ldrb r2, [r1, #0x00]
	movs r6, #0x01
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08066260 @ =0x08087541
	mov r10, r0
	str r0, [r4, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08066264 @ =0x080664D5
	str r0, [r4, #0x5C]
	movs r1, #0x74
	adds r1, r1, r7
	mov r9, r1
	ldrb r1, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08066268 @ =0x08066299
	str r0, [r4, #0x4C]
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _08066116
	adds r0, #0xFF
_08066116:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x09
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _08066124
	adds r0, #0xFF
_08066124:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r7, #0x40]
	cmp r0, #0x00
	bge _08066130
	adds r0, #0xFF
_08066130:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806626C @ =0x00004094
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r4, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r6, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r8
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r6, r0
	lsls r0, r6, #0x05
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	mov r0, r10
	str r0, [r5, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r5, #0x6C]
	str r4, [r5, #0x2C]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08066270 @ =0x080663E9
	str r0, [r5, #0x4C]
	adds r6, r5, #0x0
	adds r6, #0x0C
	bl sub_807FA50
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r6, [r0, #0x08]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x0C]
	adds r6, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	adds r6, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	bl sub_807FABC
	str r0, [r6, #0x00]
	mov r2, r8
	subs r2, #0x01
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _0806620E
	adds r0, #0xFF
_0806620E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _0806621E
	adds r1, #0xFF
_0806621E:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806622E
	adds r0, #0xFF
_0806622E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x2E
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	ldr r0, _08066274 @ =0x080665AD
	str r0, [r7, #0x4C]
	ldr r1, [sp, #0x00C]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0806627C
	ldr r0, _08066278 @ =0x0000012B
	adds r1, r2, #0x0
	bl play_sfx_80195B4
	b _08066284
	.byte 0x00, 0x00
_08066260: .4byte sub_8087540
_08066264: .4byte sub_80664D4
_08066268: .4byte sub_8066298
_0806626C: .4byte 0x00004094
_08066270: .4byte sub_80663E8
_08066274: .4byte sub_80665AC
_08066278: .4byte 0x0000012B
_0806627C:
	ldr r0, _08066294 @ =0x0000012B
	adds r1, r2, #0x0
	bl play_sfx_80195B4
_08066284:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08066294: .4byte 0x0000012B
	thumb_func_start sub_8066298
sub_8066298:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080662A4
	adds r0, #0xFF
_080662A4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080662B4
	adds r1, #0xFF
_080662B4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080662C4
	adds r0, #0xFF
_080662C4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x2E
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_8066540
	ldr r0, _08066330 @ =0x0806657D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066330: .4byte sub_806657C
	thumb_func_start sub_8066334
sub_8066334:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_8066540
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r3, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080663DE
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, _08066388 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r1, #0x6C]
	str r3, [r4, #0x6C]
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0806638C
	adds r0, r1, #0x0
	bl sub_8086700
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
	b _080663DE
	.byte 0x00, 0x00
_08066388: .4byte sub_8087540
_0806638C:
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080663E4 @ =0x08066551
	str r0, [r4, #0x4C]
_080663DE:
	pop {r4}
	pop {r0}
	bx r0
_080663E4: .4byte sub_8066550
	thumb_func_start sub_80663E8
sub_80663E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r7, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r6, [r0, #0x00]
	adds r0, #0x04
	ldr r5, [r0, #0x00]
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08066414
	ldr r2, _080664D0 @ =0x000010FF
	adds r0, r1, r2
_08066414:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _08066420
	adds r0, #0xFF
_08066420:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0806642C
	adds r0, #0xFF
_0806642C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [sp, #0x00C]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [sp, #0x010]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	str r0, [sp, #0x014]
	ldr r2, [sp, #0x00C]
	subs r2, r7, r2
	str r2, [sp, #0x018]
	ldr r0, [sp, #0x010]
	subs r6, r6, r0
	str r6, [sp, #0x01C]
	ldr r1, [sp, #0x014]
	subs r1, r5, r1
	mov r10, r1
	adds r6, r4, #0x0
	adds r6, #0x0C
	cmp r6, #0x00
	beq _080664C0
	mov r9, r10
	ldr r2, [sp, #0x01C]
	mov r8, r2
	ldr r7, [sp, #0x018]
_08066482:
	adds r0, r7, #0x0
	movs r1, #0x06
	bl __divsi3
	adds r5, r0, #0x0
	ldr r0, [sp, #0x00C]
	adds r5, r5, r0
	mov r0, r8
	movs r1, #0x06
	bl __divsi3
	adds r4, r0, #0x0
	ldr r1, [sp, #0x010]
	adds r4, r4, r1
	mov r0, r9
	movs r1, #0x06
	bl __divsi3
	ldr r2, [sp, #0x014]
	adds r0, r0, r2
	str r5, [r6, #0x04]
	str r4, [r6, #0x08]
	str r0, [r6, #0x0C]
	ldr r6, [r6, #0x00]
	add r9, r10
	ldr r0, [sp, #0x01C]
	add r8, r0
	ldr r1, [sp, #0x018]
	adds r7, r7, r1
	cmp r6, #0x00
	bne _08066482
_080664C0:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080664D0: .4byte 0x000010FF
	thumb_func_start sub_80664D4
sub_80664D4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08066532
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _080664EC
	adds r2, #0xFF
_080664EC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080664F6
	adds r3, #0xFF
_080664F6:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806650C
	movs r0, #0x13
	b _0806650E
_0806650C:
	movs r0, #0x12
_0806650E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806653C @ =0x08066335
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08066532:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806653C: .4byte sub_8066334
	thumb_func_start sub_8066540
sub_8066540:
	mov r12, r0
	adds r0, #0x84
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r3, [r0, #0x00]
	bx lr
	thumb_func_start sub_8066550
sub_8066550:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_8066540
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066576
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_08066576:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_806657C
sub_806657C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_8066540
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080665A2
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _080665A8 @ =0x08066335
	str r0, [r4, #0x4C]
_080665A2:
	pop {r4}
	pop {r0}
	bx r0
_080665A8: .4byte sub_8066334
	thumb_func_start sub_80665AC
sub_80665AC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080665BE
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x30]
	b _080665C0
_080665BE:
	ldr r0, [r4, #0x30]
_080665C0:
	cmp r0, #0x00
	bne _080665F8
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080665E8
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080665F4
_080665E8:
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080665F4:
	ldr r0, _08066600 @ =0x0806670D
	str r0, [r4, #0x4C]
_080665F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066600: .4byte sub_806670C
	thumb_func_start sub_8066604
sub_8066604:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066680
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08066628
	ldr r0, _08066624 @ =0x00000129
	bl stop_sfx_80195A8
	b _08066630
_08066624: .4byte 0x00000129
_08066628:
	movs r0, #0x95
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
_08066630:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066648
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08066654
_08066648:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08066654:
	ldr r0, _0806666C @ =0x08066781
	str r0, [r4, #0x4C]
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08066674
	ldr r0, _08066670 @ =0x00000123
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08066680
	.byte 0x00, 0x00
_0806666C: .4byte sub_8066780
_08066670: .4byte 0x00000123
_08066674:
	movs r0, #0x92
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08066680:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x10, 0xB5, 0x02, 0x1C, 0xA0, 0x30, 0x01, 0x23, 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x04, 0xD1, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x00, 0x20, 0x08, 0x60, 0x02, 0xE0, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xC5, 0x67, 0x06, 0x08, 0x10, 0xB5
	.byte 0x02, 0x1C, 0xA0, 0x30, 0x00, 0x23, 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24
	.byte 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60
	.byte 0x03, 0xE0, 0x11, 0x1C, 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xC5, 0x67, 0x06, 0x08, 0x01, 0x49, 0x41, 0x65, 0x70, 0x47
	.byte 0x00, 0x00, 0x21, 0x68, 0x06, 0x08
	thumb_func_start sub_806670C
sub_806670C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066774
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xA6
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806677C @ =0x08066865
	str r0, [r4, #0x4C]
_08066774:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806677C: .4byte sub_8066864
	thumb_func_start sub_8066780
sub_8066780:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080667B8
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080667A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080667B4
_080667A8:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080667B4:
	ldr r0, _080667C0 @ =0x08065FBD
	str r0, [r4, #0x4C]
_080667B8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080667C0: .4byte sub_8065FBC
	thumb_func_start sub_80667C4
sub_80667C4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08066816
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080667E4
	adds r0, #0xFF
_080667E4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080667F4
	adds r1, #0xFF
_080667F4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	subs r0, #0x10
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08066812
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	ands r1, r2
	str r1, [r0, #0x00]
_08066812:
	ldr r0, _0806681C @ =0x08065F0D
	str r0, [r4, #0x4C]
_08066816:
	pop {r4}
	pop {r0}
	bx r0
_0806681C: .4byte sub_8065F0C
	thumb_func_start sub_8066820
sub_8066820:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, _08066860 @ =0x00004095
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	subs r1, #0x02
	adds r0, #0x75
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066860: .4byte 0x00004095
	thumb_func_start sub_8066864
sub_8066864:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066880
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066888 @ =0x0808750D
	str r0, [r4, #0x4C]
_08066880:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066888: .4byte sub_808750C
	thumb_func_start sub_806688C
sub_806688C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080668A4
	b _08066ADA
_080668A4:
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080668B8
	adds r1, #0xFF
_080668B8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080668C2
	adds r2, #0xFF
_080668C2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080668CC
	adds r3, #0xFF
_080668CC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08066A04 @ =0x00000CFA
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _080668E0
	adds r0, #0xFF
_080668E0:
	asrs r0, r0, #0x08
	subs r2, r0, #0x6
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _080668EC
	adds r3, #0xFF
_080668EC:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _080668F6
	adds r0, #0xFF
_080668F6:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08066A08 @ =0x0000407F
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _08066A0C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _08066A10 @ =0x08066C49
	str r0, [r4, #0x58]
	str r2, [r4, #0x5C]
	str r2, [r4, #0x60]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806698E
	adds r0, #0xFF
_0806698E:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806699E
	adds r0, #0xFF
_0806699E:
	asrs r0, r0, #0x08
	adds r7, r4, #0x0
	adds r7, #0xB0
	strh r0, [r7, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080669AE
	adds r0, #0xFF
_080669AE:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, _08066A14 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r3, [r0, #0x30]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080669DC
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _08066A40
_080669DC:
	ldr r2, [r2, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08066A1C
	adds r1, r2, #0x0
	adds r1, #0xD8
	movs r3, #0x00
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x08
	ldr r3, _08066A18 @ =0xFFFFD800
	adds r0, r0, r3
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r2, #0x0
	adds r1, #0xDC
	b _08066A60
_08066A04: .4byte 0x00000CFA
_08066A08: .4byte 0x0000407F
_08066A0C: .4byte sub_8087540
_08066A10: .4byte sub_8066C48
_08066A14: .4byte 0x03000FD8
_08066A18: .4byte 0xFFFFD800
_08066A1C:
	adds r1, r3, #0x0
	adds r1, #0xD8
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	ldr r2, _08066A3C @ =0xFFFFD800
	adds r0, r0, r2
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r3, #0x0
	adds r1, #0xDC
	movs r3, #0x00
	ldsh r0, [r7, r3]
	b _08066A64
	.byte 0x00, 0x00
_08066A3C: .4byte 0xFFFFD800
_08066A40:
	ldr r2, _08066AE8 @ =0x083B872C
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #0x02
	adds r2, r1, r2
	movs r3, #0x00
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x08
	ldr r2, [r2, #0x00]
	subs r2, r2, r0
	mov r8, r2
	ldr r0, _08066AEC @ =0x083B8734
	adds r1, r1, r0
_08066A60:
	movs r2, #0x00
	ldsh r0, [r7, r2]
_08066A64:
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	ldr r2, _08066AF0 @ =0x03001038
	mov r3, r8
	mov r0, r8
	muls r0, r3
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE6
	lsls r1, r1, #0x01
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	bl __divsi3
	cmp r0, #0x01
	bne _08066AA0
	movs r0, #0x02
_08066AA0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0x08
	str r0, [r1, #0x00]
	ldr r0, _08066AF4 @ =0x08066AFD
	str r0, [r4, #0x4C]
	ldr r0, _08066AF8 @ =0x08066C91
	str r0, [r6, #0x4C]
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08066ADA:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066AE8: .4byte 0x083B872C
_08066AEC: .4byte 0x083B8734
_08066AF0: .4byte 0x03001038
_08066AF4: .4byte sub_8066AFC
_08066AF8: .4byte sub_8066C90
	thumb_func_start sub_8066AFC
sub_8066AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r0, #0xA4
	str r0, [sp, #0x000]
	adds r6, r4, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r7, r4, #0x0
	adds r7, #0xA0
	ldr r1, [r7, #0x00]
	bl __divsi3
	adds r3, r4, #0x0
	adds r3, #0xAE
	str r3, [sp, #0x004]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x10]
	subs r3, #0x06
	str r3, [sp, #0x008]
	movs r0, #0x00
	ldsh r1, [r6, r0]
	ldr r0, [r3, #0x00]
	muls r0, r1
	ldr r1, [r7, #0x00]
	bl __divsi3
	movs r1, #0xB0
	adds r1, r1, r4
	mov r10, r1
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r2, [r6, r3]
	ldr r0, [r7, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	movs r2, #0xB2
	adds r2, r2, r4
	mov r8, r2
	movs r3, #0x00
	ldsh r0, [r2, r3]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	movs r1, #0x00
	mov r9, r1
	strh r0, [r6, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08066C2A
	str r1, [r4, #0x18]
	subs r1, #0x01
	movs r0, #0x7C
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08066BAE
	adds r1, #0xFF
_08066BAE:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08066BC0
	adds r0, r4, #0x0
	bl sub_807C298
	b _08066C2A
_08066BC0:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08066BC8
	adds r0, #0xFF
_08066BC8:
	asrs r0, r0, #0x08
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08066BD6
	adds r0, #0xFF
_08066BD6:
	asrs r0, r0, #0x08
	mov r3, r10
	strh r0, [r3, #0x00]
	mov r1, r9
	mov r0, r8
	strh r1, [r0, #0x00]
	movs r0, #0x02
	str r0, [r5, #0x00]
	ldr r1, _08066C3C @ =0x03001038
	movs r0, #0x80
	lsls r0, r0, #0x0F
	ldr r1, [r1, #0x00]
	bl _call_via_r1
	ldr r1, _08066C40 @ =0x00000299
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r1, r4, #0x1F
	adds r1, r4, r1
	asrs r1, r1, #0x01
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08066C14
	movs r0, #0x02
_08066C14:
	negs r0, r0
	ldr r3, [sp, #0x00C]
	str r0, [r3, #0x00]
	str r4, [r7, #0x00]
	ldr r0, _08066C44 @ =0xFFFFF800
	ldr r1, [sp, #0x000]
	str r0, [r1, #0x00]
	mov r2, r9
	ldr r3, [sp, #0x008]
	str r2, [r3, #0x00]
	strh r2, [r6, #0x00]
_08066C2A:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066C3C: .4byte 0x03001038
_08066C40: .4byte 0x00000299
_08066C44: .4byte 0xFFFFF800
	thumb_func_start sub_8066C48
sub_8066C48:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08066C5C
	adds r1, #0xFF
_08066C5C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08066C66
	adds r2, #0xFF
_08066C66:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08066C70
	adds r3, #0xFF
_08066C70:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08066C8C @ =0x00000D0C
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08066C8C: .4byte 0x00000D0C
	thumb_func_start sub_8066C90
sub_8066C90:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066CB8
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x02
	strh r1, [r0, #0x00]
	ldr r0, _08066CC0 @ =0x08066CED
	str r0, [r4, #0x4C]
_08066CB8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066CC0: .4byte sub_8066CEC
	.byte 0x02, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x51, 0x6D, 0x06, 0x08, 0x02, 0x1C, 0x9C, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0x51, 0x6D, 0x06, 0x08
	thumb_func_start sub_8066CEC
sub_8066CEC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066D44
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08066D44
	subs r1, #0x0C
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08066D34
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066D30 @ =0x0806688D
	b _08066D42
_08066D30: .4byte sub_806688C
_08066D34:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066D4C @ =0x08066D79
_08066D42:
	str r0, [r4, #0x4C]
_08066D44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066D4C: .4byte sub_8066D78
	thumb_func_start sub_8066D50
sub_8066D50:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08066D6C
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066D74 @ =0x08066DA5
	str r0, [r4, #0x4C]
_08066D6C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066D74: .4byte sub_8066DA4
	thumb_func_start sub_8066D78
sub_8066D78:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066D98
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066DA0 @ =0x0808750D
	str r0, [r4, #0x4C]
_08066D98:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066DA0: .4byte sub_808750C
	thumb_func_start sub_8066DA4
sub_8066DA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066E00
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066E08 @ =0x08066E0D
	str r0, [r4, #0x4C]
_08066E00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066E08: .4byte sub_8066E0C
	thumb_func_start sub_8066E0C
sub_8066E0C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066E52
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08066E30
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08066E3C
_08066E30:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08066E3C:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08066E58 @ =0x08066E5D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_08066E52:
	pop {r4}
	pop {r0}
	bx r0
_08066E58: .4byte sub_8066E5C
	thumb_func_start sub_8066E5C
sub_8066E5C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066EA8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08066EA8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0xA4
	movs r1, #0x01
	ands r1, r0
	adds r1, #0x03
	str r1, [r2, #0x00]
	ldr r0, _08066EB0 @ =0x08066EB5
	str r0, [r4, #0x4C]
_08066EA8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066EB0: .4byte sub_8066EB4
	thumb_func_start sub_8066EB4
sub_8066EB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066ED4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066EDC @ =0x0806688D
	str r0, [r4, #0x4C]
_08066ED4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066EDC: .4byte sub_806688C
	thumb_func_start sub_8066EE0
sub_8066EE0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08066F54
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08066F5C @ =0x08066F61
	str r0, [r4, #0x4C]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08066F54:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066F5C: .4byte sub_8066F60
	thumb_func_start sub_8066F60
sub_8066F60:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08066FE8
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08066FF0 @ =0x08067831
	str r0, [r4, #0x58]
	ldr r0, _08066FF4 @ =0x08067839
	str r0, [r4, #0x60]
	bl sub_8199F30
	movs r1, #0x03
	ands r0, r1
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r0, _08066FF8 @ =0x08066FFD
	str r0, [r4, #0x4C]
_08066FE8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066FF0: .4byte 0x08067831
_08066FF4: .4byte sub_8067838
_08066FF8: .4byte sub_8066FFC
	thumb_func_start sub_8066FFC
sub_8066FFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	beq _08067016
	b _08067162
_08067016:
	movs r0, #0xAC
	adds r0, r0, r5
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08067108
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	adds r2, r5, #0x0
	adds r2, #0x9C
	str r2, [sp, #0x000]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r3, #0x84
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067068
	adds r0, #0xFF
_08067068:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08067078
	adds r0, #0xFF
_08067078:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067088
	adds r0, #0xFF
_08067088:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08067100 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _080670BE
	adds r0, #0xFF
_080670BE:
	asrs r7, r0, #0x08
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _080670D8
	movs r0, #0x02
_080670D8:
	negs r0, r0
	ldr r2, [sp, #0x000]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	mov r3, r8
	str r0, [r3, #0x00]
	str r7, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	mov r1, r10
	mov r0, r9
	strh r1, [r0, #0x00]
	ldr r0, _08067104 @ =0x08067179
	b _08067160
	.byte 0x00, 0x00
_08067100: .4byte 0x03001038
_08067104: .4byte sub_8067178
_08067108:
	bl sub_8199F30
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r1, [r5, #0x2C]
	ldr r2, [r1, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	movs r1, #0x1D
	ands r1, r0
	lsls r1, r1, #0x08
	movs r0, #0x98
	lsls r0, r0, #0x06
	adds r1, r1, r0
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	mov r1, r10
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08067174 @ =0x080678E9
_08067160:
	str r0, [r5, #0x4C]
_08067162:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067174: .4byte sub_80678E8
	thumb_func_start sub_8067178
sub_8067178:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806720A
	b _08067774
_0806720A:
	ldr r1, [r7, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _08067216
	b _08067774
_08067216:
	ldr r0, [r7, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _08067222
	bl _call_via_r1
_08067222:
	ldr r1, [r7, #0x2C]
	ldr r0, _08067254 @ =0x080678E5
	str r0, [r1, #0x4C]
	ldr r4, [r1, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r5, [r0, #0x00]
	cmp r5, #0x01
	bne _08067248
	b _080673F0
_08067248:
	cmp r5, #0x01
	bgt _08067258
	cmp r5, #0x00
	beq _08067260
	b _080676F8
	.byte 0x00, 0x00
_08067254: .4byte 0x080678E5
_08067258:
	cmp r5, #0x02
	bne _0806725E
	b _08067574
_0806725E:
	b _080676F8
_08067260:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806732C
	cmp r1, #0x00
	bne _080672B4
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806727C
	adds r0, #0xFF
_0806727C:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806728A
	adds r0, #0xFF
_0806728A:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067298
	adds r0, #0xFF
_08067298:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080672B0 @ =0x00004096
	b _080672F4
_080672B0: .4byte 0x00004096
_080672B4:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672C2
	adds r0, #0xFF
_080672C2:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672D0
	adds r0, #0xFF
_080672D0:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080672DE
	adds r0, #0xFF
_080672DE:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067324 @ =0x00004098
_080672F4:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067302
	adds r1, #0xFF
_08067302:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806730C
	adds r2, #0xFF
_0806730C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067316
	adds r3, #0xFF
_08067316:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067328 @ =0x0000114F
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_08067324: .4byte 0x00004098
_08067328: .4byte 0x0000114F
_0806732C:
	cmp r1, #0x00
	bne _08067378
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806733E
	adds r0, #0xFF
_0806733E:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806734C
	adds r0, #0xFF
_0806734C:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806735A
	adds r0, #0xFF
_0806735A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067374 @ =0x00004097
	b _080673B8
	.byte 0x00, 0x00
_08067374: .4byte 0x00004097
_08067378:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067386
	adds r0, #0xFF
_08067386:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067394
	adds r0, #0xFF
_08067394:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080673A2
	adds r0, #0xFF
_080673A2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080673E8 @ =0x00004099
_080673B8:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080673C6
	adds r1, #0xFF
_080673C6:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080673D0
	adds r2, #0xFF
_080673D0:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080673DA
	adds r3, #0xFF
_080673DA:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080673EC @ =0x0000115C
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_080673E8: .4byte 0x00004099
_080673EC: .4byte 0x0000115C
_080673F0:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080674B8
	cmp r1, #0x00
	bne _08067444
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806740C
	adds r0, #0xFF
_0806740C:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806741A
	adds r0, #0xFF
_0806741A:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067428
	adds r0, #0xFF
_08067428:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067440 @ =0x0000409A
	b _08067482
	.byte 0x00, 0x00
_08067440: .4byte 0x0000409A
_08067444:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067452
	adds r0, #0xFF
_08067452:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067460
	adds r0, #0xFF
_08067460:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806746E
	adds r0, #0xFF
_0806746E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080674B0 @ =0x0000409C
_08067482:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067490
	adds r1, #0xFF
_08067490:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806749A
	adds r2, #0xFF
_0806749A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080674A4
	adds r3, #0xFF
_080674A4:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _080674B4 @ =0x00001172
	bl sub_80DF024
	b _080676F8
_080674B0: .4byte 0x0000409C
_080674B4: .4byte 0x00001172
_080674B8:
	cmp r1, #0x00
	bne _08067500
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674CA
	adds r0, #0xFF
_080674CA:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674D8
	adds r0, #0xFF
_080674D8:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080674E6
	adds r0, #0xFF
_080674E6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080674FC @ =0x0000409B
	b _0806753E
_080674FC: .4byte 0x0000409B
_08067500:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806750E
	adds r0, #0xFF
_0806750E:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806751C
	adds r0, #0xFF
_0806751C:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806752A
	adds r0, #0xFF
_0806752A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806756C @ =0x0000409D
_0806753E:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806754C
	adds r1, #0xFF
_0806754C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067556
	adds r2, #0xFF
_08067556:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067560
	adds r3, #0xFF
_08067560:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067570 @ =0x0000117F
	bl sub_80DF024
	b _080676F8
_0806756C: .4byte 0x0000409D
_08067570: .4byte 0x0000117F
_08067574:
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08067640
	cmp r1, #0x00
	bne _080675C8
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067590
	adds r0, #0xFF
_08067590:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806759E
	adds r0, #0xFF
_0806759E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675AC
	adds r0, #0xFF
_080675AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080675C4 @ =0x0000409E
	b _08067608
_080675C4: .4byte 0x0000409E
_080675C8:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675D6
	adds r0, #0xFF
_080675D6:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675E4
	adds r0, #0xFF
_080675E4:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080675F2
	adds r0, #0xFF
_080675F2:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067638 @ =0x000040A0
_08067608:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067616
	adds r1, #0xFF
_08067616:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067620
	adds r2, #0xFF
_08067620:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806762A
	adds r3, #0xFF
_0806762A:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _0806763C @ =0x00001195
	bl sub_80DF024
	b _080676F8
	.byte 0x00, 0x00
_08067638: .4byte 0x000040A0
_0806763C: .4byte 0x00001195
_08067640:
	cmp r1, #0x00
	bne _0806768C
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067652
	adds r0, #0xFF
_08067652:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08067660
	adds r0, #0xFF
_08067660:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806766E
	adds r0, #0xFF
_0806766E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067688 @ =0x0000409F
	b _080676CC
	.byte 0x00, 0x00
_08067688: .4byte 0x0000409F
_0806768C:
	ldr r1, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806769A
	adds r0, #0xFF
_0806769A:
	asrs r2, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080676A8
	adds r0, #0xFF
_080676A8:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080676B6
	adds r0, #0xFF
_080676B6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806777C @ =0x000040A1
_080676CC:
	bl sub_807BF34
	adds r6, r0, #0x0
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080676DA
	adds r1, #0xFF
_080676DA:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080676E4
	adds r2, #0xFF
_080676E4:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080676EE
	adds r3, #0xFF
_080676EE:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	ldr r0, _08067780 @ =0x000011A2
	bl sub_80DF024
_080676F8:
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r4, r7, #0x0
	adds r4, #0x77
	ldrb r0, [r4, #0x00]
	adds r3, r6, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r4, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08067784 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	adds r0, r7, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08067788 @ =0x08067875
	str r0, [r6, #0x4C]
	ldr r0, [r7, #0x08]
	bl sub_807FB64
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r0, _0806778C @ =0x08067895
	str r0, [r7, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
_08067774:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806777C: .4byte 0x000040A1
_08067780: .4byte 0x000011A2
_08067784: .4byte sub_8087540
_08067788: .4byte sub_8067874
_0806778C: .4byte sub_8067894
	thumb_func_start sub_8067790
sub_8067790:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08067824
	adds r0, r6, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806782C @ =0x0808750D
	str r0, [r6, #0x4C]
_08067824:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806782C: .4byte sub_808750C
	.byte 0x01, 0x20, 0x40, 0x42, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_8067838
sub_8067838:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0806786C
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0x14
	str r0, [r1, #0x00]
	ldr r0, _08067868 @ =0x080679FD
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _0806786E
_08067868: .4byte sub_80679FC
_0806786C:
	adds r0, r4, #0x0
_0806786E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8067874
sub_8067874:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806788E
	adds r0, r2, #0x0
	bl sub_807C298
_0806788E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8067894
sub_8067894:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x30]
	cmp r5, #0x00
	bne _080678DA
	movs r0, #0x83
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x2C]
	str r5, [r0, #0x4C]
	ldr r0, [r4, #0x08]
	bl sub_807BC90
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _080678E0 @ =0x08067791
	str r0, [r4, #0x4C]
_080678DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080678E0: .4byte sub_8067790
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_80678E8
sub_80678E8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0806793E
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x05
	adds r0, r0, r5
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08067944 @ =0x08066FFD
	str r0, [r4, #0x4C]
_0806793E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08067944: .4byte sub_8066FFC
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0xA0, 0x31, 0x02, 0x20, 0x08, 0x60, 0xD0, 0x6A, 0x80, 0x6A
	.byte 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0x9C, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48
	.byte 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x25, 0x7A, 0x06, 0x08, 0x10, 0xB5, 0x02, 0x1C
	.byte 0xA0, 0x30, 0x01, 0x23, 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F
	.byte 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x04, 0xD1, 0x11, 0x1C, 0x9C, 0x31, 0x00, 0x20, 0x08, 0x60
	.byte 0x02, 0xE0, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x25, 0x7A, 0x06, 0x08, 0x10, 0xB5, 0x02, 0x1C, 0xA0, 0x30, 0x00, 0x23
	.byte 0x03, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x01, 0x20, 0x40, 0x42
	.byte 0x81, 0x42, 0x03, 0xD1, 0x10, 0x1C, 0x9C, 0x30, 0x03, 0x60, 0x03, 0xE0, 0x11, 0x1C, 0x9C, 0x31
	.byte 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x25, 0x7A, 0x06, 0x08
	thumb_func_start sub_80679FC
sub_80679FC:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08067A1C
	adds r0, r2, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08067A20 @ =0x08067A4D
	str r0, [r2, #0x4C]
_08067A1C:
	pop {r0}
	bx r0
_08067A20: .4byte sub_8067A4C
	thumb_func_start sub_8067A24
sub_8067A24:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08067A40
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08067A48 @ =0x08066EE1
	str r0, [r4, #0x4C]
_08067A40:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067A48: .4byte sub_8066EE0
	thumb_func_start sub_8067A4C
sub_8067A4C:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r0, r1
	str r0, [r3, #0x10]
	adds r2, r3, #0x0
	adds r2, #0x8C
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, [r2, #0x00]
	adds r0, #0x66
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bgt _08067A7A
	movs r0, #0x00
	str r0, [r3, #0x18]
	ldr r0, _08067A80 @ =0x0808750D
	str r0, [r3, #0x4C]
_08067A7A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067A80: .4byte sub_808750C
	thumb_func_start sub_8067A84
sub_8067A84:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08067AA0
	b _08067C68
_08067AA0:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067AB4
	adds r1, #0xFF
_08067AB4:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067ABE
	adds r2, #0xFF
_08067ABE:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067AC8
	adds r3, #0xFF
_08067AC8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08067C78 @ =0x00001092
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08067ADC
	adds r0, #0xFF
_08067ADC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x12
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08067AEA
	adds r3, #0xFF
_08067AEA:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08067AF4
	adds r0, #0xFF
_08067AF4:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067C7C @ =0x00004106
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08067C80 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08067C84 @ =0x080680D5
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	movs r0, #0xAC
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xD8
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r7, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r9, r0
	ldr r0, [r5, #0x40]
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067BBC
	adds r0, #0xFF
_08067BBC:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08067BCC
	adds r0, #0xFF
_08067BCC:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067BDC
	adds r0, #0xFF
_08067BDC:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x00]
	subs r4, r1, r0
	ldr r2, _08067C88 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08067C12
	ldr r2, _08067C8C @ =0x000001FF
	adds r0, r0, r2
_08067C12:
	asrs r1, r0, #0x09
	mov r8, r1
	lsrs r0, r0, #0x1F
	add r0, r8
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08067C2E
	movs r0, #0x02
_08067C2E:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	movs r1, #0x00
	mov r0, r10
	strh r1, [r0, #0x00]
	ldr r0, _08067C90 @ =0x08067C99
	str r0, [r5, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
	ldr r0, _08067C94 @ =0x0806814D
	str r0, [r6, #0x4C]
_08067C68:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067C78: .4byte 0x00001092
_08067C7C: .4byte 0x00004106
_08067C80: .4byte sub_8087540
_08067C84: .4byte sub_80680D4
_08067C88: .4byte 0x03001038
_08067C8C: .4byte 0x000001FF
_08067C90: .4byte sub_8067C98
_08067C94: .4byte sub_806814C
	thumb_func_start sub_8067C98
sub_8067C98:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r2, [r6, #0x08]
	adds r7, r6, #0x0
	adds r7, #0x8C
	ldr r1, [r7, #0x00]
	ldrh r0, [r2, #0x0C]
	adds r0, r0, r1
	strh r0, [r2, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r5, r6, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _08067D30
	adds r0, #0xFF
_08067D30:
	asrs r0, r0, #0x08
	cmp r0, #0x08
	bgt _08067DBC
	movs r0, #0x08
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08067D4E
	adds r1, #0xFF
_08067D4E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08067D58
	adds r2, #0xFF
_08067D58:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08067D62
	adds r3, #0xFF
_08067D62:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08067D98 @ =0x000010A5
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x00]
	cmp r1, #0x00
	beq _08067D9C
	cmp r1, #0x01
	beq _08067DA4
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	b _08067DAC
_08067D98: .4byte 0x000010A5
_08067D9C:
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x99
	b _08067DAC
_08067DA4:
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x01
_08067DAC:
	str r0, [r1, #0x00]
	ldr r0, _08067DC4 @ =0x08068125
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
_08067DBC:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067DC4: .4byte sub_8068124
	thumb_func_start sub_8067DC8
sub_8067DC8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _08067E40
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	ldr r0, _08067E48 @ =0x080680A1
	str r0, [r4, #0x4C]
_08067E40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08067E48: .4byte sub_80680A0
	thumb_func_start sub_8067E4C
sub_8067E4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08067E64
	b _08067F6C
_08067E64:
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08067E78
	adds r1, #0xFF
_08067E78:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08067E82
	adds r2, #0xFF
_08067E82:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08067E8C
	adds r3, #0xFF
_08067E8C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08067F78 @ =0x000010B5
	bl sub_80DF024
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08067EA0
	adds r0, #0xFF
_08067EA0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x12
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _08067EAE
	adds r3, #0xFF
_08067EAE:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08067EB8
	adds r0, #0xFF
_08067EB8:
	asrs r0, r0, #0x08
	adds r0, #0x04
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08067F7C @ =0x00004107
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	movs r1, #0x77
	adds r1, r1, r5
	mov r12, r1
	adds r6, r5, #0x0
	adds r6, #0x74
	adds r7, r5, #0x0
	adds r7, #0xA0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r8, r1
	cmp r0, #0x00
	beq _08067EF6
_08067EF0:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _08067EF0
_08067EF6:
	str r4, [r0, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r12
	ldrb r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08067F80 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08067F84 @ =0x08068059
	str r0, [r4, #0x58]
	ldr r0, _08067F88 @ =0x0806800D
	str r0, [r4, #0x5C]
	ldrb r1, [r6, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08067F8C @ =0x08068075
	str r0, [r4, #0x4C]
	ldr r0, [r7, #0x00]
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _08067F90 @ =0x08067F95
	str r0, [r5, #0x4C]
_08067F6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08067F78: .4byte 0x000010B5
_08067F7C: .4byte 0x00004107
_08067F80: .4byte sub_8087540
_08067F84: .4byte sub_8068058
_08067F88: .4byte sub_806800C
_08067F8C: .4byte sub_8068074
_08067F90: .4byte sub_8067F94
	thumb_func_start sub_8067F94
sub_8067F94:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08067FBC
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08067FF0
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08067FBC:
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08068000
	subs r1, #0x02
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08067FF0
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08067FEC @ =0x08067E4D
	b _08067FFE
	.byte 0x00, 0x00
_08067FEC: .4byte sub_8067E4C
_08067FF0:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068008 @ =0x0808750D
_08067FFE:
	str r0, [r4, #0x4C]
_08068000:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068008: .4byte sub_808750C
	thumb_func_start sub_806800C
sub_806800C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _08068046
	ldr r0, _08068050 @ =0x0806819D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068026
	adds r1, #0xFF
_08068026:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068030
	adds r2, #0xFF
_08068030:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806803A
	adds r3, #0xFF
_0806803A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068054 @ =0x000010C6
	bl sub_80DF024
	movs r0, #0x00
_08068046:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08068050: .4byte sub_806819C
_08068054: .4byte 0x000010C6
	thumb_func_start sub_8068058
sub_8068058:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08068070 @ =0x080681ED
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08068070: .4byte sub_80681EC
	thumb_func_start sub_8068074
sub_8068074:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806809C @ =0xFFFFFECD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068088
	adds r0, r1, #0x0
	subs r0, #0x34
_08068088:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068098
	adds r0, r2, #0x0
	bl sub_807C298
_08068098:
	pop {r0}
	bx r0
_0806809C: .4byte 0xFFFFFECD
	thumb_func_start sub_80680A0
sub_80680A0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080680C8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, _080680D0 @ =0x0806822D
	str r0, [r4, #0x4C]
_080680C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080680D0: .4byte sub_806822C
	thumb_func_start sub_80680D4
sub_80680D4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x38]
	cmp r1, r0
	beq _080680E6
	movs r0, #0x01
	b _08068112
_080680E6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080680EE
	adds r1, #0xFF
_080680EE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080680F8
	adds r2, #0xFF
_080680F8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068102
	adds r3, #0xFF
_08068102:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806811C @ =0x000010AD
	bl sub_80DF024
	ldr r0, _08068120 @ =0x08068269
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08068112:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806811C: .4byte 0x000010AD
_08068120: .4byte sub_8068268
	thumb_func_start sub_8068124
sub_8068124:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x84
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r2, #0x10]
	cmp r1, #0x00
	bge _08068138
	adds r1, #0xFF
_08068138:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08068148
	adds r0, r2, #0x0
	bl sub_807C298
_08068148:
	pop {r0}
	bx r0
	thumb_func_start sub_806814C
sub_806814C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068160
	ldr r0, _08068164 @ =0x0808750D
	str r0, [r2, #0x4C]
_08068160:
	pop {r0}
	bx r0
_08068164: .4byte sub_808750C
	thumb_func_start sub_8068168
sub_8068168:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08068180
	movs r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x01
	str r0, [r1, #0x00]
_08068180:
	ldr r0, _0806818C @ =0x08067DC9
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806818C: .4byte sub_8067DC8
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x75, 0x82, 0x06, 0x08
	thumb_func_start sub_806819C
sub_806819C:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _080681E0 @ =0xFFFFFECD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	ldr r4, [r2, #0x18]
	ldr r5, _080681E4 @ =0xFFFFFE00
	adds r3, r4, r5
	str r3, [r2, #0x18]
	cmp r0, #0x00
	bge _080681B8
	adds r0, r1, #0x0
	subs r0, #0x34
_080681B8:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	ble _080681D2
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080681CC
	ldr r1, _080681E8 @ =0xFFFFFEFF
	adds r0, r4, r1
_080681CC:
	asrs r0, r0, #0x08
	cmp r0, #0x00
	bgt _080681D8
_080681D2:
	adds r0, r2, #0x0
	bl sub_807C298
_080681D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080681E0: .4byte 0xFFFFFECD
_080681E4: .4byte 0xFFFFFE00
_080681E8: .4byte 0xFFFFFEFF
	thumb_func_start sub_80681EC
sub_80681EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080681FA
	adds r1, #0xFF
_080681FA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068204
	adds r2, #0xFF
_08068204:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806820E
	adds r3, #0xFF
_0806820E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068228 @ =0x000010BE
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068228: .4byte 0x000010BE
	thumb_func_start sub_806822C
sub_806822C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806825C
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806825C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068264 @ =0x08067E4D
	str r0, [r4, #0x4C]
_0806825C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068264: .4byte sub_8067E4C
	thumb_func_start sub_8068268
sub_8068268:
	push {lr}
	bl sub_807C298
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8068274
sub_8068274:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08068290
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068298 @ =0x0806829D
	str r0, [r4, #0x4C]
_08068290:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068298: .4byte sub_806829C
	thumb_func_start sub_806829C
sub_806829C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080682BC
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080682C4 @ =0x08067A85
	str r0, [r4, #0x4C]
_080682BC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080682C4: .4byte sub_8067A84
	thumb_func_start sub_80682C8
sub_80682C8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	bl sub_8082B00
	adds r7, r0, #0x0
	cmp r7, #0x00
	bne _080683B6
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080682E2
	adds r0, #0xFF
_080682E2:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080682EE
	adds r0, #0xFF
_080682EE:
	asrs r0, r0, #0x08
	adds r0, #0x02
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806839C @ =0x0000412B
	movs r2, #0x80
	lsls r2, r2, #0x01
	bl sub_807BF34
	adds r3, r0, #0x0
	str r3, [r5, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r1, #0x77
	adds r1, r1, r3
	mov r12, r1
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r2, #0x00]
	ldr r0, _080683A0 @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r3, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r7, [r0, #0x00]
	ldr r0, _080683A4 @ =0x08068819
	str r0, [r3, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080683A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _080683B2
_0806839C: .4byte 0x0000412B
_080683A0: .4byte sub_8087540
_080683A4: .4byte sub_8068818
_080683A8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080683B2:
	ldr r0, _080683C0 @ =0x080683C5
	str r0, [r5, #0x4C]
_080683B6:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080683C0: .4byte sub_80683C4
	thumb_func_start sub_80683C4
sub_80683C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806849E
	adds r0, r7, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	mov r8, r0
	cmp r1, #0x00
	bne _080683EC
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080683F2
_080683EC:
	movs r0, #0x81
	bl stop_sfx_80195A8
_080683F2:
	adds r0, r7, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r1, #0x10]
	ldr r0, [r7, #0x38]
	cmp r0, #0x00
	bge _0806840E
	adds r0, #0xFF
_0806840E:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x3C]
	cmp r1, #0x00
	bge _0806841E
	adds r1, #0xFF
_0806841E:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r6, r7, #0x0
	adds r6, #0x84
	ldr r1, [r7, #0x2C]
	ldr r4, [r1, #0x28]
	adds r5, r4, #0x0
	adds r5, #0xD8
	movs r1, #0x30
	bl __umodsi3
	adds r0, #0x30
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	adds r1, r1, r0
	str r1, [r6, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x88
	adds r4, #0xDC
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	mov r1, r8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08068490
	ldr r0, _0806848C @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0806849A
_0806848C: .4byte 0x0000011B
_08068490:
	ldr r0, _080684A8 @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806849A:
	ldr r0, _080684AC @ =0x0806890D
	str r0, [r7, #0x4C]
_0806849E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080684A8: .4byte 0x0000011B
_080684AC: .4byte sub_806890C
	thumb_func_start sub_80684B0
sub_80684B0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r2, r0, #0x1
	strh r2, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080684DC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1E
	bne _080684EE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	b _080684EE
_080684DC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x0A
	bne _080684EE
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
_080684EE:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068560
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08068514
	ldr r0, _08068510 @ =0x0000011B
	bl stop_sfx_80195A8
	b _0806851A
	.byte 0x00, 0x00
_08068510: .4byte 0x0000011B
_08068514:
	ldr r0, _08068534 @ =0x0000011B
	bl stop_sfx_80195A8
_0806851A:
	ldr r5, [r5, #0x00]
	cmp r5, #0x00
	bne _08068538
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	b _0806854C
_08068534: .4byte 0x0000011B
_08068538:
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x03
	strh r0, [r1, #0x00]
_0806854C:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, _08068568 @ =0x080688B9
	str r0, [r4, #0x4C]
_08068560:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068568: .4byte sub_80688B8
	thumb_func_start sub_806856C
sub_806856C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08068580
	b _0806877C
_08068580:
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806858C
	b _0806868C
_0806858C:
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080685A0
	adds r1, #0xFF
_080685A0:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080685AA
	adds r0, #0xFF
_080685AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080685B6
	adds r3, #0xFF
_080685B6:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806867C @ =0x00001C73
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080685CA
	adds r0, #0xFF
_080685CA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x17
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080685D8
	adds r0, #0xFF
_080685D8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080685E4
	adds r0, #0xFF
_080685E4:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08068680 @ =0x0000412C
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r5, [r0, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08068684 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08068688 @ =0x080687ED
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	b _08068778
_0806867C: .4byte 0x00001C73
_08068680: .4byte 0x0000412C
_08068684: .4byte sub_8087540
_08068688: .4byte sub_80687EC
_0806868C:
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080686A0
	adds r1, #0xFF
_080686A0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080686AA
	adds r2, #0xFF
_080686AA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080686B4
	adds r3, #0xFF
_080686B4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08068784 @ =0x00001C7A
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080686C8
	adds r0, #0xFF
_080686C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x17
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080686D6
	adds r0, #0xFF
_080686D6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080686E2
	adds r0, #0xFF
_080686E2:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08068788 @ =0x0000412D
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r5, [r0, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0806878C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08068790 @ =0x08068799
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
_08068778:
	ldr r0, _08068794 @ =0x08068845
	str r0, [r6, #0x4C]
_0806877C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08068784: .4byte 0x00001C7A
_08068788: .4byte 0x0000412D
_0806878C: .4byte sub_8087540
_08068790: .4byte sub_8068798
_08068794: .4byte sub_8068844
	thumb_func_start sub_8068798
sub_8068798:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, _080687E4 @ =0xFFFFFECD
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	cmp r0, r1
	ble _080687C6
	ldr r2, _080687E8 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r4, #0x18]
	cmp r0, r1
	bgt _080687C6
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080687C6:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080687CE
	adds r1, #0xFF
_080687CE:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080687DE
	adds r0, r4, #0x0
	bl sub_807C298
_080687DE:
	pop {r4}
	pop {r0}
	bx r0
_080687E4: .4byte 0xFFFFFECD
_080687E8: .4byte 0xFFFFFF00
	thumb_func_start sub_80687EC
sub_80687EC:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08068814 @ =0xFFFFFDCD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068800
	adds r3, #0xFF
	adds r0, r1, r3
_08068800:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068810
	adds r0, r2, #0x0
	bl sub_807C298
_08068810:
	pop {r0}
	bx r0
_08068814: .4byte 0xFFFFFDCD
	thumb_func_start sub_8068818
sub_8068818:
	push {lr}
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0xAC
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bne _0806883C
	ldr r0, [r1, #0x10]
	ldr r3, _08068840 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	cmp r1, r0
	blt _0806883C
	movs r0, #0x01
	strh r0, [r2, #0x00]
_0806883C:
	pop {r0}
	bx r0
_08068840: .4byte 0xFFFFFE00
	thumb_func_start sub_8068844
sub_8068844:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	ldr r5, [r0, #0x30]
	cmp r5, #0x00
	bne _080688AE
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r1, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080688B4 @ =0x080689AD
	str r0, [r4, #0x4C]
_080688AE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080688B4: .4byte sub_80689AC
	thumb_func_start sub_80688B8
sub_80688B8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068900
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08068900
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080688F0
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080688FC
_080688F0:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080688FC:
	ldr r0, _08068908 @ =0x0806856D
	str r0, [r4, #0x4C]
_08068900:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068908: .4byte sub_806856C
	thumb_func_start sub_806890C
sub_806890C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068960
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _08068930
	ldr r0, _0806892C @ =0x0000011B
	bl stop_sfx_80195A8
	b _08068936
_0806892C: .4byte 0x0000011B
_08068930:
	ldr r0, _0806894C @ =0x0000011B
	bl stop_sfx_80195A8
_08068936:
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08068950
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806895C
	.byte 0x00, 0x00
_0806894C: .4byte 0x0000011B
_08068950:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806895C:
	ldr r0, _08068968 @ =0x080689E5
	str r0, [r4, #0x4C]
_08068960:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068968: .4byte sub_80689E4
	.byte 0x02, 0x1C, 0xA8, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0xC9, 0x82, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0xA8, 0x30, 0x00, 0x21, 0x01, 0x60, 0x11, 0x1C
	.byte 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28, 0x04, 0xD1, 0x02, 0x20, 0x08, 0x60, 0x04, 0x31, 0x30, 0x20
	.byte 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0xC9, 0x82, 0x06, 0x08
	thumb_func_start sub_80689AC
sub_80689AC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080689DA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x38]
	movs r2, #0x88
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x14]
	ldr r0, _080689E0 @ =0x08068A29
	str r0, [r1, #0x4C]
	str r5, [r4, #0x4C]
_080689DA:
	pop {r4, r5}
	pop {r0}
	bx r0
_080689E0: .4byte sub_8068A28
	thumb_func_start sub_80689E4
sub_80689E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068A1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068A04
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08068A08
_08068A04:
	adds r0, r4, #0x0
	movs r1, #0x0F
_08068A08:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _08068A24 @ =0x08068A51
	str r0, [r4, #0x4C]
_08068A1C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068A24: .4byte sub_8068A50
	thumb_func_start sub_8068A28
sub_8068A28:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r1, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r2, r3
	str r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08068A3E
	adds r3, #0xFF
	adds r0, r2, r3
_08068A3E:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _08068A4A
	adds r0, r1, #0x0
	bl sub_807C298
_08068A4A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8068A50
sub_8068A50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068A9E
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08068A9E
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068A8A
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08068A96
_08068A8A:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08068A96:
	ldr r0, _08068AA4 @ =0x080684B1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	strh r0, [r5, #0x00]
_08068A9E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08068AA4: .4byte sub_80684B0
	thumb_func_start sub_8068AA8
sub_8068AA8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _08068AC6
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068B62
	adds r4, r5, #0x0
	adds r4, #0x8C
	b _08068AE2
_08068AC6:
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	adds r4, r2, #0x0
	cmp r0, #0x00
	bgt _08068B62
	str r3, [r5, #0x18]
_08068AE2:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	ldr r0, _08068B50 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	ldr r0, _08068B54 @ =0x08068C99
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068B58
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _08068B62
_08068B50: .4byte 0x00000199
_08068B54: .4byte sub_8068C98
_08068B58:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08068B62:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8068B68
sub_8068B68:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08068BAA
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068B88
	adds r1, #0xFF
_08068B88:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068B92
	adds r2, #0xFF
_08068B92:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068B9C
	adds r3, #0xFF
_08068B9C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068BE8 @ =0x00001C81
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_08068BAA:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08068BBC
	adds r1, #0xFF
_08068BBC:
	asrs r1, r1, #0x08
	movs r0, #0x30
	negs r0, r0
	cmp r1, r0
	bgt _08068BDE
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, _08068BEC @ =0x08068BF1
	str r0, [r4, #0x4C]
_08068BDE:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068BE8: .4byte 0x00001C81
_08068BEC: .4byte sub_8068BF0
	thumb_func_start sub_8068BF0
sub_8068BF0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	ble _08068C32
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08068C10
	adds r1, #0xFF
_08068C10:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068C1A
	adds r2, #0xFF
_08068C1A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08068C24
	adds r3, #0xFF
_08068C24:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068C68 @ =0x00001C81
	bl sub_80DF024
	movs r0, #0x00
	strh r0, [r5, #0x00]
_08068C32:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _08068C60
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068C6C @ =0x08068C71
	str r0, [r4, #0x4C]
_08068C60:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08068C68: .4byte 0x00001C81
_08068C6C: .4byte sub_8068C70
	thumb_func_start sub_8068C70
sub_8068C70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068C90
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08068C90:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8068C98
sub_8068C98:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068D00
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068CD6
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	b _08068CFC
_08068CD6:
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
_08068CFC:
	ldr r0, _08068D08 @ =0x08068D75
	str r0, [r4, #0x4C]
_08068D00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068D08: .4byte sub_8068D74
	.byte 0x30, 0xB5, 0x04, 0x1C, 0xA8, 0x30, 0x01, 0x21, 0x01, 0x60, 0x25, 0x1C, 0x9C, 0x35, 0x28, 0x68
	.byte 0x00, 0x28, 0x06, 0xD1, 0x31, 0xF1, 0x06, 0xF9, 0x1E, 0x21, 0x71, 0xF1, 0xB1, 0xFF, 0x30, 0x30
	.byte 0x28, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xBD, 0x8D, 0x06, 0x08, 0x30, 0xB5, 0x04, 0x1C, 0xA8, 0x30, 0x00, 0x21, 0x01, 0x60, 0x25, 0x1C
	.byte 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x06, 0xD1, 0x31, 0xF1, 0xEC, 0xF8, 0x1E, 0x21, 0x71, 0xF1
	.byte 0x97, 0xFF, 0x30, 0x30, 0x28, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0xBD, 0x8D, 0x06, 0x08
	thumb_func_start sub_8068D74
sub_8068D74:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08068DB0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068DA0
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _08068DAC
_08068DA0:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08068DAC:
	ldr r0, _08068DB8 @ =0x08068DED
	str r0, [r4, #0x4C]
_08068DB0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068DB8: .4byte sub_8068DEC
	thumb_func_start sub_8068DBC
sub_8068DBC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08068DE2
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	str r1, [r0, #0x00]
	ldr r0, _08068DE8 @ =0x08068AA9
	str r0, [r4, #0x4C]
_08068DE2:
	pop {r4}
	pop {r0}
	bx r0
_08068DE8: .4byte sub_8068AA8
	thumb_func_start sub_8068DEC
sub_8068DEC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068E54
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08068E44
	adds r0, #0x04
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068E38 @ =0x08068B69
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08068E3C @ =0x08068E61
	str r0, [r4, #0x58]
	ldr r0, _08068E40 @ =0x08068E7D
	str r0, [r4, #0x5C]
	movs r0, #0x8D
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _08068E54
	.byte 0x00, 0x00
_08068E38: .4byte sub_8068B68
_08068E3C: .4byte sub_8068E60
_08068E40: .4byte sub_8068E7C
_08068E44:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068E5C @ =0x08068E99
	str r0, [r4, #0x4C]
_08068E54:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068E5C: .4byte sub_8068E98
	thumb_func_start sub_8068E60
sub_8068E60:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08068E78 @ =0x08068B69
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_08068E78: .4byte sub_8068B68
	thumb_func_start sub_8068E7C
sub_8068E7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _08068E8E
	ldr r0, _08068E94 @ =0x08068EF5
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08068E8E:
	pop {r4}
	pop {r1}
	bx r1
_08068E94: .4byte sub_8068EF4
	thumb_func_start sub_8068E98
sub_8068E98:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	cmp r0, r1
	blt _08068EE0
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _08068EE8 @ =0x00001608
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08068EEC @ =0x03000E3C
	str r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r0, _08068EF0 @ =0x08068F11
	str r0, [r4, #0x4C]
_08068EE0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068EE8: .4byte 0x00001608
_08068EEC: .4byte 0x03000E3C
_08068EF0: .4byte sub_8068F10
	thumb_func_start sub_8068EF4
sub_8068EF4:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r0, _08068F0C @ =0x0808750D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068F0C: .4byte sub_808750C
	thumb_func_start sub_8068F10
sub_8068F10:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068F30
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08068F38 @ =0x0808750D
	str r0, [r4, #0x4C]
_08068F30:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068F38: .4byte sub_808750C
	thumb_func_start sub_8068F3C
sub_8068F3C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA4
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0806900E
	movs r0, #0x00
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08068FA0
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	b _08068FB4
_08068FA0:
	adds r1, r5, #0x0
	adds r1, #0x84
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
_08068FB4:
	str r0, [r1, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	ldr r0, _08069000 @ =0x080693BD
	str r0, [r5, #0x4C]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08069004
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _0806900E
_08069000: .4byte sub_80693BC
_08069004:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806900E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8069014
sub_8069014:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080690F2
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r7, r1, #0x0
	cmp r0, #0x00
	bgt _080690F2
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08069074
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	b _0806908C
_08069074:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
_0806908C:
	adds r0, r5, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	str r4, [r5, #0x58]
	movs r0, #0x0F
	strh r0, [r7, #0x00]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _080690C6
	ldr r0, _080690E0 @ =0x08069355
	str r0, [r5, #0x60]
_080690C6:
	ldr r0, _080690E4 @ =0x080690F9
	str r0, [r5, #0x4C]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bne _080690E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
	b _080690F2
	.byte 0x00, 0x00
_080690E0: .4byte sub_8069354
_080690E4: .4byte sub_80690F8
_080690E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_080690F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80690F8
sub_80690F8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bne _08069150
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	ldr r1, _08069148 @ =0x00000111
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08069150
	ldr r0, _0806914C @ =0x080692DD
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0xA0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	str r2, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080691EC
_08069148: .4byte 0x00000111
_0806914C: .4byte sub_80692DC
_08069150:
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806918A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069168
	adds r1, #0xFF
_08069168:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08069172
	adds r2, #0xFF
_08069172:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806917C
	adds r3, #0xFF
_0806917C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080691D4 @ =0x00001C9F
	bl sub_80DF024
	movs r0, #0x0F
	strh r0, [r5, #0x00]
_0806918A:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080691EC
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080691D8 @ =0x080691F5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080691DC
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	b _080691EC
	.byte 0x00, 0x00
_080691D4: .4byte 0x00001C9F
_080691D8: .4byte sub_80691F4
_080691DC:
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
_080691EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80691F4
sub_80691F4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080692CC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r6, r0, #0x0
	cmp r1, #0x00
	bne _08069220
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	b _0806925C
_08069220:
	ldr r0, _08069290 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08069246
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_08069246:
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _0806925C
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806925C:
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bne _08069298
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806926C
	adds r1, #0xFF
_0806926C:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069276
	adds r0, #0xFF
_08069276:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069282
	adds r3, #0xFF
_08069282:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08069294 @ =0x00001C8A
	bl sub_80DF024
	b _080692C0
	.byte 0x00, 0x00
_08069290: .4byte 0x03000FD8
_08069294: .4byte 0x00001C8A
_08069298:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080692A0
	adds r1, #0xFF
_080692A0:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080692AA
	adds r0, #0xFF
_080692AA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080692B6
	adds r3, #0xFF
_080692B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080692D4 @ =0x00001CB1
	bl sub_80DF024
_080692C0:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _080692D8 @ =0x08069395
	str r0, [r4, #0x4C]
_080692CC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080692D4: .4byte 0x00001CB1
_080692D8: .4byte sub_8069394
	thumb_func_start sub_80692DC
sub_80692DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	subs r0, #0x80
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0xA4
	ldr r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08069342
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069312
	adds r1, #0xFF
_08069312:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806931C
	adds r0, #0xFF
_0806931C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069328
	adds r3, #0xFF
_08069328:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806934C @ =0x00001CA8
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08069350 @ =0x08069451
	str r0, [r4, #0x4C]
_08069342:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806934C: .4byte 0x00001CA8
_08069350: .4byte sub_8069450
	thumb_func_start sub_8069354
sub_8069354:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08069388
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _08069374
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _0806937A
_08069374:
	movs r0, #0x81
	bl stop_sfx_80195A8
_0806937A:
	adds r0, r4, #0x0
	adds r0, #0x80
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _08069390 @ =0x080690F9
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08069388:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08069390: .4byte sub_80690F8
	thumb_func_start sub_8069394
sub_8069394:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080693B4
	ldr r0, [r4, #0x28]
	bl sub_807B7A8
	ldr r0, [r4, #0x28]
	bl sub_807FE40
_080693B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80693BC
sub_80693BC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08069400
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	bne _080693DE
	movs r0, #0x81
	bl stop_sfx_80195A8
	b _080693E4
_080693DE:
	movs r0, #0x81
	bl stop_sfx_80195A8
_080693E4:
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x00
	ldsh r0, [r5, r1]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08069408 @ =0x08069015
	str r0, [r4, #0x4C]
_08069400:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069408: .4byte sub_8069014
	.byte 0x02, 0x1C, 0xAE, 0x32, 0x01, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x7D, 0x94, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28
	.byte 0x05, 0xD1, 0x48, 0x20, 0x08, 0x60, 0x04, 0x31, 0x80, 0x20, 0x80, 0x00, 0x08, 0x60, 0x11, 0x1C
	.byte 0xAE, 0x31, 0x00, 0x20, 0x08, 0x80, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47
	.byte 0x7D, 0x94, 0x06, 0x08
	thumb_func_start sub_8069450
sub_8069450:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08069470
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08069478 @ =0x0808750D
	str r0, [r4, #0x4C]
_08069470:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069478: .4byte sub_808750C
	thumb_func_start sub_806947C
sub_806947C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080694A8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080694B0 @ =0x08068F3D
	str r0, [r4, #0x4C]
_080694A8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080694B0: .4byte sub_8068F3C
	thumb_func_start sub_80694B4
sub_80694B4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r6, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, [r6, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r6, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _08069544
	movs r4, #0x00
	str r4, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x40]
	str r0, [r6, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806954C @ =0x0806A1E9
	str r0, [r5, #0x58]
	ldr r0, _08069550 @ =0x0806A1CD
	str r0, [r5, #0x5C]
	ldr r0, _08069554 @ =0x0806A24D
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_08069544:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806954C: .4byte sub_806A1E8
_08069550: .4byte sub_806A1CC
_08069554: .4byte sub_806A24C
	thumb_func_start sub_8069558
sub_8069558:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080695D8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080695D4
	ldr r0, _080695D0 @ =0x0806A24D
	b _080695D6
	.byte 0x00, 0x00
_080695D0: .4byte sub_806A24C
_080695D4:
	ldr r0, _080695E0 @ =0x0806A205
_080695D6:
	str r0, [r4, #0x4C]
_080695D8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080695E0: .4byte sub_806A204
	thumb_func_start sub_80695E4
sub_80695E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08069676
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069640
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806961A
	adds r1, #0xFF
_0806961A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08069624
	adds r2, #0xFF
_08069624:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806962E
	adds r3, #0xFF
_0806962E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806963C @ =0x00001D5A
	bl sub_80DF024
	b _08069672
	.byte 0x00, 0x00
_0806963C: .4byte 0x00001D5A
_08069640:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08069654
	adds r1, #0xFF
_08069654:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806965E
	adds r2, #0xFF
_0806965E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08069668
	adds r3, #0xFF
_08069668:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08069680 @ =0x00001D6E
	bl sub_80DF024
_08069672:
	ldr r0, _08069684 @ =0x08069689
	str r0, [r4, #0x4C]
_08069676:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069680: .4byte 0x00001D6E
_08069684: .4byte sub_8069688
	thumb_func_start sub_8069688
sub_8069688:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08069776
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x01
	bne _080696B6
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080696C2
_080696B6:
	ldr r2, _08069780 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080696C2:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080696CC
	adds r2, #0xFF
_080696CC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080696D6
	adds r3, #0xFF
_080696D6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080696E0
	adds r0, #0xFF
_080696E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08069784 @ =0x00004072
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08069788 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	str r4, [r5, #0x58]
	ldr r0, _0806978C @ =0x0806A181
	str r0, [r5, #0x60]
	str r4, [r5, #0x4C]
	adds r5, #0x9C
	str r4, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x03
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08069790 @ =0x08069795
	str r0, [r6, #0x4C]
_08069776:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069780: .4byte 0x0000204D
_08069784: .4byte 0x00004072
_08069788: .4byte sub_8087540
_0806978C: .4byte sub_806A180
_08069790: .4byte sub_8069794
	thumb_func_start sub_8069794
sub_8069794:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080697C4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080697C0 @ =0x0806A059
	str r0, [r4, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _080698B6
_080697C0: .4byte sub_806A058
_080697C4:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080698B6
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080697EA
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080697F6
_080697EA:
	ldr r2, _08069804 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080697F6:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	ble _0806980C
	ldr r0, _08069808 @ =0x080698C5
	b _080698B4
_08069804: .4byte 0x0000204D
_08069808: .4byte sub_80698C4
_0806980C:
	cmp r0, #0x01
	bne _08069818
	ldr r0, _08069814 @ =0x080699E5
	b _080698B4
_08069814: .4byte sub_80699E4
_08069818:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r7, r1, #0x0
	adds r7, #0x30
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r7, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r3, [r1, #0x00]
	adds r0, #0xDC
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806984A
	adds r0, #0xFF
_0806984A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806985A
	adds r0, #0xFF
_0806985A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x08
	subs r6, r3, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	subs r5, r5, r0
	ldr r2, _080698BC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r7, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _08069894
	movs r0, #0x02
_08069894:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x0C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _080698C0 @ =0x08069C41
_080698B4:
	str r0, [r4, #0x4C]
_080698B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080698BC: .4byte 0x03001038
_080698C0: .4byte sub_8069C40
	thumb_func_start sub_80698C4
sub_80698C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	mov r8, r0
	cmp r0, #0x00
	beq _080698FC
	adds r1, r5, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _080698F8 @ =0x0806A059
	str r0, [r5, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _080699D0
	.byte 0x00, 0x00
_080698F8: .4byte sub_806A058
_080698FC:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r1, r1, r0
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	adds r1, #0x01
	bl __divsi3
	adds r4, r0, #0x0
	bl sub_8199F30
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r7, r1, #0x0
	adds r7, #0x30
	adds r0, r5, #0x0
	adds r0, #0x8C
	str r7, [r0, #0x00]
	ldr r0, [r5, #0x38]
	subs r6, r0, r4
	bl sub_8199F30
	movs r1, #0x3F
	ands r1, r0
	adds r1, #0x50
	lsls r1, r1, #0x08
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08069954
	adds r0, #0xFF
_08069954:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08069964
	adds r0, #0xFF
_08069964:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08069974
	adds r0, #0xFF
_08069974:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	subs r6, r6, r0
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	subs r4, r1, r0
	ldr r2, _080699DC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	lsls r0, r7, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _080699AE
	movs r0, #0x02
_080699AE:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, _080699E0 @ =0x08069AE9
	str r0, [r5, #0x4C]
_080699D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080699DC: .4byte 0x03001038
_080699E0: .4byte sub_8069AE8
	thumb_func_start sub_80699E4
sub_80699E4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	adds r0, r2, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	mov r9, r0
	cmp r0, #0x00
	beq _08069A1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069A18 @ =0x0806A059
	str r0, [r4, #0x4C]
	adds r0, r2, #0x0
	bl sub_807C298
	b _08069AD2
_08069A18: .4byte sub_806A058
_08069A1C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x30
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0F
	ands r1, r0
	adds r1, #0x30
	mov r8, r1
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x05
	adds r1, r1, r2
	adds r0, #0xDC
	ldr r7, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08069A54
	adds r0, #0xFF
_08069A54:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069A64
	adds r0, #0xFF
_08069A64:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08069A74
	adds r0, #0xFF
_08069A74:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	subs r5, r7, r0
	ldr r2, _08069AE0 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r2, r8
	lsls r0, r2, #0x08
	movs r1, #0xC8
	lsls r1, r1, #0x01
	bl __divsi3
	cmp r0, #0x01
	bne _08069AB0
	movs r0, #0x02
_08069AB0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x28
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08069AE4 @ =0x08069AE9
	str r0, [r4, #0x4C]
_08069AD2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069AE0: .4byte 0x03001038
_08069AE4: .4byte sub_8069AE8
	thumb_func_start sub_8069AE8
sub_8069AE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	mov r8, r0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08069B1C
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069B18 @ =0x0806A059
	str r0, [r7, #0x4C]
	mov r0, r8
	bl sub_807C298
	b _08069C2E
_08069B18: .4byte sub_806A058
_08069B1C:
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r5, r5, r0
	str r5, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r7, #0x18]
	mov r0, r8
	str r5, [r0, #0x10]
	ldr r0, [r7, #0x14]
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069BE8
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069BCC
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069BCE
_08069BCC:
	ldr r2, _08069C0C @ =0x0000204D
_08069BCE:
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069BE8:
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r6, #0x00]
	cmp r1, r0
	ble _08069C2E
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069C10
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _08069C1C
_08069C0C: .4byte 0x0000204D
_08069C10:
	ldr r2, _08069C38 @ =0x0000204D
	adds r0, r7, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_08069C1C:
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r7, #0x18]
	ldr r0, _08069C3C @ =0x08069795
	str r0, [r7, #0x4C]
_08069C2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069C38: .4byte 0x0000204D
_08069C3C: .4byte sub_8069794
	thumb_func_start sub_8069C40
sub_8069C40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x30]
	mov r8, r0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08069C74
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _08069C70 @ =0x0806A059
	str r0, [r7, #0x4C]
	mov r0, r8
	bl sub_807C298
	b _08069DB4
_08069C70: .4byte sub_806A058
_08069C74:
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r5, r5, r0
	str r5, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r7, #0x18]
	mov r0, r8
	str r5, [r0, #0x10]
	ldr r0, [r7, #0x14]
	mov r1, r8
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069D40
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069D24
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069D26
_08069D24:
	ldr r2, _08069D90 @ =0x0000204D
_08069D26:
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069D40:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r1, [r6, #0x00]
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	cmp r0, r1
	ble _08069DB4
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	ldr r1, [r7, #0x18]
	cmp r1, r0
	bge _08069DB4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	movs r0, #0x0A
	strh r0, [r4, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r7, #0x14]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069D94
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069D96
_08069D90: .4byte 0x0000204D
_08069D94:
	ldr r2, _08069DC0 @ =0x0000204D
_08069D96:
	adds r0, r7, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08069DC4 @ =0x08069DC9
	str r0, [r7, #0x4C]
_08069DB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069DC0: .4byte 0x0000204D
_08069DC4: .4byte sub_8069DC8
	thumb_func_start sub_8069DC8
sub_8069DC8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08069EAE
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069E04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _08069E10
_08069E04:
	ldr r2, _08069EB8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_08069E10:
	movs r0, #0x40
	mov r8, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	mov r1, r8
	str r1, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r3, [r1, #0x00]
	adds r0, #0xDC
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08069E30
	adds r0, #0xFF
_08069E30:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08069E40
	adds r0, #0xFF
_08069E40:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r2, r6]
	lsls r0, r0, #0x08
	subs r6, r3, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x08
	subs r5, r5, r0
	ldr r2, _08069EBC @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08069E72
	ldr r1, _08069EC0 @ =0x000003FF
	adds r0, r0, r1
_08069E72:
	asrs r7, r0, #0x0A
	lsrs r1, r0, #0x1F
	adds r1, r7, r1
	asrs r1, r1, #0x01
	mov r2, r8
	lsls r0, r2, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08069E8E
	movs r0, #0x02
_08069E8E:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08069EC4 @ =0x08069EC9
	str r0, [r4, #0x4C]
_08069EAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08069EB8: .4byte 0x0000204D
_08069EBC: .4byte 0x03001038
_08069EC0: .4byte 0x000003FF
_08069EC4: .4byte sub_8069EC8
	thumb_func_start sub_8069EC8
sub_8069EC8:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	ldr r1, [r6, #0x30]
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x18]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bne _08069F96
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08069F7A
	movs r2, #0x80
	lsls r2, r2, #0x06
	b _08069F7C
_08069F7A:
	ldr r2, _08069FF4 @ =0x0000204D
_08069F7C:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08069F96:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	cmp r1, r0
	ble _0806A044
	adds r0, r6, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0806A000
	ldr r2, _08069FF8 @ =0x00004071
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08069FCA
	adds r0, #0xFF
_08069FCA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08069FD8
	adds r0, #0xFF
_08069FD8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08069FE6
	adds r0, #0xFF
_08069FE6:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08069FFC @ =0x00001D82
	bl sub_80DF024
	b _0806A040
	.byte 0x00, 0x00
_08069FF4: .4byte 0x0000204D
_08069FF8: .4byte 0x00004071
_08069FFC: .4byte 0x00001D82
_0806A000:
	ldr r2, _0806A04C @ =0x00004071
	adds r0, r6, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806A01A
	adds r0, #0xFF
_0806A01A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806A028
	adds r0, #0xFF
_0806A028:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806A036
	adds r0, #0xFF
_0806A036:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806A050 @ =0x00001D90
	bl sub_80DF024
_0806A040:
	ldr r0, _0806A054 @ =0x0806A19D
	str r0, [r6, #0x4C]
_0806A044:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806A04C: .4byte 0x00004071
_0806A050: .4byte 0x00001D90
_0806A054: .4byte sub_806A19C
	thumb_func_start sub_806A058
sub_806A058:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	ble _0806A088
	ldr r0, [r4, #0x10]
	ldr r2, _0806A084 @ =0x00000133
	adds r0, r0, r2
	str r0, [r4, #0x10]
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	adds r0, r1, r0
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	b _0806A106
_0806A084: .4byte 0x00000133
_0806A088:
	movs r0, #0x00
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0806A0D0
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0AA
	adds r1, #0xFF
_0806A0AA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0B4
	adds r2, #0xFF
_0806A0B4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0BE
	adds r3, #0xFF
_0806A0BE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A0CC @ =0x00001D82
	bl sub_80DF024
	b _0806A102
	.byte 0x00, 0x00
_0806A0CC: .4byte 0x00001D82
_0806A0D0:
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806A0E4
	adds r1, #0xFF
_0806A0E4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806A0EE
	adds r2, #0xFF
_0806A0EE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806A0F8
	adds r3, #0xFF
_0806A0F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806A110 @ =0x00001D90
	bl sub_80DF024
_0806A102:
	ldr r0, _0806A114 @ =0x0806A119
	str r0, [r4, #0x4C]
_0806A106:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A110: .4byte 0x00001D90
_0806A114: .4byte sub_806A118
	thumb_func_start sub_806A118
sub_806A118:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A170
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806A134
	adds r2, #0xFF
_0806A134:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806A13E
	adds r3, #0xFF
_0806A13E:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806A154
	movs r0, #0x13
	b _0806A156
_0806A154:
	movs r0, #0x12
_0806A156:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	ldr r2, _0806A178 @ =0x00004071
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A17C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A170:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806A178: .4byte 0x00004071
_0806A17C: .4byte sub_808750C
	thumb_func_start sub_806A180
sub_806A180:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806A196
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	movs r0, #0x00
_0806A196:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_806A19C
sub_806A19C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A1BC
	ldr r2, _0806A1C4 @ =0x00004071
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A1C8 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A1BC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A1C4: .4byte 0x00004071
_0806A1C8: .4byte sub_808750C
	thumb_func_start sub_806A1CC
sub_806A1CC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806A1DE
	ldr r0, _0806A1E4 @ =0x0808750D
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806A1DE:
	pop {r4}
	pop {r1}
	bx r1
_0806A1E4: .4byte sub_808750C
	thumb_func_start sub_806A1E8
sub_806A1E8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A200 @ =0x0806A22D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806A200: .4byte sub_806A22C
	thumb_func_start sub_806A204
sub_806A204:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A220
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A228 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A220:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A228: .4byte sub_808750C
	thumb_func_start sub_806A22C
sub_806A22C:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A244
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x0C
	strh r1, [r0, #0x00]
	ldr r0, _0806A248 @ =0x0806A2FD
	str r0, [r2, #0x4C]
_0806A244:
	pop {r0}
	bx r0
_0806A248: .4byte sub_806A2FC
	thumb_func_start sub_806A24C
sub_806A24C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A284
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r4, [r0, #0x00]
	ldr r0, [r6, #0x00]
	subs r4, r4, r0
	bl sub_8199F30
	adds r5, r7, #0x0
	adds r5, #0xA8
	adds r1, r4, #0x0
	bl __umodsi3
	ldr r1, [r6, #0x00]
	adds r1, r1, r0
	str r1, [r5, #0x00]
	ldr r0, _0806A28C @ =0x0806A349
	str r0, [r7, #0x4C]
_0806A284:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A28C: .4byte sub_806A348
	thumb_func_start sub_806A290
sub_806A290:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0806A2AE
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	b _0806A2B4
_0806A2AE:
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r0, #0x01
_0806A2B4:
	str r0, [r1, #0x00]
	ldr r0, _0806A2C0 @ =0x080695E5
	str r0, [r2, #0x4C]
	movs r0, #0x01
	pop {r1}
	bx r1
_0806A2C0: .4byte sub_80695E4
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x2F, 0xF1
	.byte 0x2D, 0xFE, 0x03, 0x21, 0x01, 0x40, 0x01, 0x31, 0x29, 0x60, 0x21, 0x1C, 0xA0, 0x31, 0x14, 0x20
	.byte 0x08, 0x60, 0x04, 0x31, 0x3C, 0x20, 0x08, 0x60, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xC1, 0xA3, 0x06, 0x08
	thumb_func_start sub_806A2FC
sub_806A2FC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A336
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806A33C @ =0x00001810
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806A340 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806A344 @ =0x08069559
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
_0806A336:
	pop {r4}
	pop {r0}
	bx r0
_0806A33C: .4byte 0x00001810
_0806A340: .4byte 0x03000E3C
_0806A344: .4byte sub_8069558
	thumb_func_start sub_806A348
sub_806A348:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806A3B0
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	ldr r0, _0806A3B8 @ =0x00000199
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806A3BC @ =0x0806A22D
	str r0, [r4, #0x4C]
_0806A3B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A3B8: .4byte 0x00000199
_0806A3BC: .4byte sub_806A22C
	thumb_func_start sub_806A3C0
sub_806A3C0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806A3EC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x1C
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _0806A3F4 @ =0x080694B5
	str r0, [r4, #0x4C]
_0806A3EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A3F4: .4byte sub_80694B4
	thumb_func_start sub_806A3F8
sub_806A3F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A470
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806A478 @ =0x0806A83D
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806A470:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A478: .4byte sub_806A83C
	thumb_func_start sub_806A47C
sub_806A47C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A4FE
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806A504 @ =0x0806A7ED
	str r0, [r4, #0x58]
	ldr r0, _0806A508 @ =0x0806A7CD
	str r0, [r4, #0x5C]
	ldr r0, _0806A50C @ =0x0806A815
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806A4FE:
	pop {r4}
	pop {r0}
	bx r0
_0806A504: .4byte sub_806A7EC
_0806A508: .4byte sub_806A7CC
_0806A50C: .4byte sub_806A814
	thumb_func_start sub_806A510
sub_806A510:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r0, #0xAC
	adds r0, r0, r4
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A616
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806A56A
	adds r0, #0xFF
_0806A56A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806A57A
	adds r0, #0xFF
_0806A57A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806A58A
	adds r0, #0xFF
_0806A58A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806A624 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0x9C
	adds r2, r2, r4
	mov r8, r2
	ldr r1, [r2, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	muls r1, r5
	ldr r0, [r4, #0x40]
	bl __divsi3
	cmp r0, #0x01
	bne _0806A5D6
	movs r0, #0x02
_0806A5D6:
	mov r1, r8
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	movs r0, #0x00
	mov r2, r9
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806A628 @ =0x0806A761
	str r0, [r4, #0x58]
	ldr r0, _0806A62C @ =0x0806A731
	str r0, [r4, #0x5C]
	ldr r0, _0806A630 @ =0x0806A639
	str r0, [r4, #0x4C]
	ldr r0, _0806A634 @ =0x00000111
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806A616:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A624: .4byte 0x03001038
_0806A628: .4byte sub_806A760
_0806A62C: .4byte sub_806A730
_0806A630: .4byte sub_806A638
_0806A634: .4byte 0x00000111
	thumb_func_start sub_806A638
sub_806A638:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r1, [r5, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r0, r1
	str r0, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0806A720
	adds r0, r6, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r6, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r2, [r6, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	ldr r0, _0806A728 @ =0x0806A7A1
	str r0, [r6, #0x4C]
	ldr r0, _0806A72C @ =0x00000111
	bl stop_sfx_80195A8
_0806A720:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A728: .4byte sub_806A7A0
_0806A72C: .4byte 0x00000111
	thumb_func_start sub_806A730
sub_806A730:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, _0806A758 @ =0x00000111
	bl stop_sfx_80195A8
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _0806A752
	ldr r0, _0806A75C @ =0x0806A77D
	str r0, [r6, #0x4C]
	movs r0, #0x00
_0806A752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0806A758: .4byte 0x00000111
_0806A75C: .4byte sub_806A77C
	thumb_func_start sub_806A760
sub_806A760:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A778 @ =0x0806A639
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806A778: .4byte sub_806A638
	thumb_func_start sub_806A77C
sub_806A77C:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x18]
	ldr r2, _0806A798 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _0806A794
	movs r0, #0x00
	str r0, [r1, #0x18]
	ldr r0, _0806A79C @ =0x0808750D
	str r0, [r1, #0x4C]
_0806A794:
	pop {r0}
	bx r0
_0806A798: .4byte 0xFFFFFE00
_0806A79C: .4byte sub_808750C
	thumb_func_start sub_806A7A0
sub_806A7A0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806A7BA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806A7BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x95, 0xA8, 0x06, 0x08
	thumb_func_start sub_806A7CC
sub_806A7CC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_8086C64
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806A7EC
sub_806A7EC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A810 @ =0x0808750D
	str r0, [r5, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806A810: .4byte sub_808750C
	thumb_func_start sub_806A814
sub_806A814:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A832
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0xFF
	strh r1, [r0, #0x00]
	ldr r0, _0806A838 @ =0x0806A8B1
	str r0, [r4, #0x4C]
_0806A832:
	pop {r4}
	pop {r0}
	bx r0
_0806A838: .4byte sub_806A8B0
	thumb_func_start sub_806A83C
sub_806A83C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A878
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	bl sub_8199F30
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r4, [r1, #0x00]
	adds r1, #0x04
	ldr r1, [r1, #0x00]
	bl __umodsi3
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0xAC
	strh r4, [r0, #0x00]
	ldr r0, _0806A880 @ =0x0806A47D
	str r0, [r5, #0x4C]
_0806A878:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A880: .4byte sub_806A47C
	.byte 0x01, 0x20, 0x70, 0x47, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xE1, 0xA8, 0x06, 0x08
	thumb_func_start sub_806A894
sub_806A894:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A8AC @ =0x0806A909
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806A8AC: .4byte sub_806A908
	thumb_func_start sub_806A8B0
sub_806A8B0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A8D4
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A8DC @ =0x0808750D
	str r0, [r4, #0x4C]
_0806A8D4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A8DC: .4byte sub_808750C
	thumb_func_start sub_806A8E0
sub_806A8E0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806A8FC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806A904 @ =0x0806A3F9
	str r0, [r4, #0x4C]
_0806A8FC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A904: .4byte sub_806A3F8
	thumb_func_start sub_806A908
sub_806A908:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A972
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806A978 @ =0x0806A97D
	str r0, [r4, #0x4C]
	movs r0, #0x89
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806A972:
	pop {r4}
	pop {r0}
	bx r0
_0806A978: .4byte sub_806A97C
	thumb_func_start sub_806A97C
sub_806A97C:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806A994
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _0806A998 @ =0x0806A511
	str r0, [r2, #0x4C]
_0806A994:
	pop {r0}
	bx r0
_0806A998: .4byte sub_806A510
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xA0, 0x68, 0x81, 0x7C, 0x08, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2F, 0xD0
	.byte 0x20, 0x1C, 0x04, 0x21, 0x00, 0x22, 0x00, 0x23, 0x18, 0xF0, 0x32, 0xFA, 0x22, 0x1C, 0x84, 0x32
	.byte 0xE0, 0x6A, 0x81, 0x6A, 0x08, 0x1C, 0xD8, 0x30, 0x00, 0x68, 0xA0, 0x23, 0xDB, 0x01, 0xC0, 0x18
	.byte 0x10, 0x60, 0x04, 0x32, 0xDC, 0x31, 0x08, 0x68, 0x10, 0x60, 0x21, 0x1C, 0x8C, 0x31, 0x20, 0x6C
	.byte 0x08, 0x60, 0x0F, 0x3A, 0x10, 0x78, 0x20, 0x21, 0x08, 0x43, 0x10, 0x70, 0x21, 0x1C, 0x7C, 0x31
	.byte 0x00, 0x22, 0x80, 0x20, 0x40, 0x00, 0x08, 0x80, 0x20, 0x1C, 0x7A, 0x30, 0x02, 0x80, 0x20, 0x1C
	.byte 0x1B, 0xF0, 0x9C, 0xF8, 0x21, 0x1C, 0xAC, 0x31, 0x0A, 0x20, 0x08, 0x80, 0x02, 0x48, 0xE0, 0x64
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x25, 0xB4, 0x06, 0x08
	thumb_func_start sub_806AA18
sub_806AA18:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1E
	bne _0806AA3A
	ldr r0, _0806AB38 @ =0x00000125
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806AA3A:
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806AB30
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806AA5A
	adds r1, #0xFF
_0806AA5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806AA64
	adds r2, #0xFF
_0806AA64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806AA6E
	adds r3, #0xFF
_0806AA6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806AB3C @ =0x00000D7A
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806AA82
	adds r0, #0xFF
_0806AA82:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x11
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806AA90
	adds r0, #0xFF
_0806AA90:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806AA9C
	adds r0, #0xFF
_0806AA9C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806AB40 @ =0x0000408A
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	subs r2, #0x01
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806AB44 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806AB48 @ =0x0806B391
	str r0, [r5, #0x58]
	ldr r0, _0806AB4C @ =0x0806B341
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _0806AB50 @ =0x0806B3D1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	ldr r0, _0806AB54 @ =0x0806AB59
	str r0, [r6, #0x4C]
_0806AB30:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806AB38: .4byte 0x00000125
_0806AB3C: .4byte 0x00000D7A
_0806AB40: .4byte 0x0000408A
_0806AB44: .4byte sub_8087540
_0806AB48: .4byte sub_806B390
_0806AB4C: .4byte sub_806B340
_0806AB50: .4byte sub_806B3D0
_0806AB54: .4byte sub_806AB58
	thumb_func_start sub_806AB58
sub_806AB58:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806AB78
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806AB78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0xB5, 0x83, 0xB0, 0x05, 0x1C, 0x2C, 0x1C, 0xAC, 0x34, 0x20, 0x88, 0x01, 0x38
	.byte 0x20, 0x80, 0x00, 0x04, 0x00, 0x28, 0x14, 0xDC, 0xA9, 0x6B, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31
	.byte 0x09, 0x12, 0xEA, 0x6B, 0x00, 0x2A, 0x00, 0xDA, 0xFF, 0x32, 0x12, 0x12, 0x2B, 0x6C, 0x00, 0x2B
	.byte 0x00, 0xDA, 0xFF, 0x33, 0x1B, 0x12, 0x00, 0x95, 0x36, 0x48, 0x74, 0xF0, 0x34, 0xFA, 0x0A, 0x20
	.byte 0x20, 0x80, 0x28, 0x1C, 0x80, 0x30, 0x00, 0x68, 0x00, 0x28, 0x5E, 0xD1, 0x28, 0x1C, 0x00, 0x21
	.byte 0x00, 0x22, 0x00, 0x23, 0x18, 0xF0, 0x23, 0xF9, 0x28, 0x1C, 0xA0, 0x30, 0x00, 0x68, 0x00, 0x28
	.byte 0x52, 0xD0, 0xA9, 0x6A, 0xE8, 0x6B, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x83, 0x1C
	.byte 0x28, 0x6C, 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x90, 0xA8, 0x68, 0x40, 0x7C
	.byte 0x40, 0x06, 0xC0, 0x0F, 0x01, 0x90, 0x01, 0x24, 0x02, 0x94, 0x08, 0x1C, 0x22, 0x49, 0x01, 0x22
	.byte 0x11, 0xF0, 0x91, 0xF9, 0x03, 0x1C, 0x2B, 0x63, 0x1A, 0x1C, 0x78, 0x32, 0x11, 0x78, 0x1F, 0x20
	.byte 0x08, 0x40, 0x80, 0x21, 0x08, 0x43, 0x10, 0x70, 0x2E, 0x1C, 0x77, 0x36, 0x30, 0x78, 0x40, 0x06
	.byte 0xC0, 0x0F, 0x77, 0x21, 0xC9, 0x18, 0x8C, 0x46, 0x22, 0x1C, 0x02, 0x40, 0x92, 0x01, 0x08, 0x78
	.byte 0x41, 0x21, 0x49, 0x42, 0x01, 0x40, 0x11, 0x43, 0x60, 0x46, 0x01, 0x70, 0x30, 0x78, 0x80, 0x06
	.byte 0xC0, 0x0F, 0x04, 0x40, 0x64, 0x01, 0x21, 0x20, 0x40, 0x42, 0x01, 0x40, 0x21, 0x43, 0x60, 0x46
	.byte 0x01, 0x70, 0x0D, 0x48, 0x98, 0x66, 0xE8, 0x6E, 0xD8, 0x66, 0xE8, 0x6A, 0xD8, 0x62, 0x19, 0x1C
	.byte 0x84, 0x31, 0xA8, 0x6B, 0x08, 0x60, 0x28, 0x1C, 0x74, 0x30, 0x01, 0x78, 0x18, 0x1C, 0x74, 0x30
	.byte 0x01, 0x70, 0x06, 0x48, 0xD8, 0x64, 0x06, 0x48, 0xE8, 0x64, 0x03, 0xB0, 0x70, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0xB2, 0x0D, 0x00, 0x00, 0x8A, 0x40, 0x00, 0x00, 0x41, 0x75, 0x08, 0x08, 0xAD, 0xB3
	.byte 0x06, 0x08, 0x01, 0xB4, 0x06, 0x08
	thumb_func_start sub_806ACA4
sub_806ACA4:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806ACB8
	b _0806AEE0
_0806ACB8:
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806ACCA
	b _0806AEE0
_0806ACCA:
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _0806AD14
	subs r0, #0x04
	ldr r1, [r0, #0x00]
	adds r1, #0x03
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806ACEE
	adds r1, #0xFF
_0806ACEE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806ACF8
	adds r2, #0xFF
_0806ACF8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806AD02
	adds r3, #0xFF
_0806AD02:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806AD10 @ =0x00000D92
	bl sub_80DF024
	b _0806AD4C
	.byte 0x00, 0x00
_0806AD10: .4byte 0x00000D92
_0806AD14:
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x06
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806AD2E
	adds r1, #0xFF
_0806AD2E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806AD38
	adds r2, #0xFF
_0806AD38:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806AD42
	adds r3, #0xFF
_0806AD42:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806AD94 @ =0x00000D9A
	bl sub_80DF024
_0806AD4C:
	ldr r0, _0806AD98 @ =0x0806B319
	str r0, [r6, #0x4C]
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0806ADA0
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806AD60
	adds r0, #0xFF
_0806AD60:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x40
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806AD6E
	adds r0, #0xFF
_0806AD6E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806AD7A
	adds r0, #0xFF
_0806AD7A:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806AD9C @ =0x0000408B
	b _0806ADDC
_0806AD94: .4byte 0x00000D9A
_0806AD98: .4byte sub_806B318
_0806AD9C: .4byte 0x0000408B
_0806ADA0:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806ADAA
	adds r0, #0xFF
_0806ADAA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x3C
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806ADB8
	adds r0, #0xFF
_0806ADB8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806ADC4
	adds r0, #0xFF
_0806ADC4:
	asrs r0, r0, #0x08
	adds r0, #0x1D
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806AEE8 @ =0x0000408C
_0806ADDC:
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806AEEC @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806AEF0 @ =0x0806B289
	str r0, [r5, #0x58]
	ldr r0, _0806AEF4 @ =0x0806B26D
	str r0, [r5, #0x5C]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806AEF8 @ =0x0806B299
	str r0, [r5, #0x4C]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x3C]
	subs r2, r2, r0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	ldr r0, [r5, #0x38]
	subs r3, r1, r0
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806AE9E
	adds r0, #0xFF
_0806AE9E:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _0806AEB6
	adds r0, #0xFF
_0806AEB6:
	asrs r1, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r0, r0, r3
	cmp r0, #0x00
	bge _0806AECE
	adds r0, #0xFF
_0806AECE:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_0806AEE0:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806AEE8: .4byte 0x0000408C
_0806AEEC: .4byte sub_8087540
_0806AEF0: .4byte sub_806B288
_0806AEF4: .4byte sub_806B26C
_0806AEF8: .4byte sub_806B298
	thumb_func_start sub_806AEFC
sub_806AEFC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806AF76
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806AF7C @ =0x0806AF81
	str r0, [r4, #0x4C]
_0806AF76:
	pop {r4}
	pop {r0}
	bx r0
_0806AF7C: .4byte sub_806AF80
	thumb_func_start sub_806AF80
sub_806AF80:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806AFC0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806AF9E
	adds r1, #0xFF
_0806AF9E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806AFA8
	adds r2, #0xFF
_0806AFA8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806AFB2
	adds r3, #0xFF
_0806AFB2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806AFE4 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806AFC0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806AFDC
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _0806AFE8 @ =0x0806AFED
	str r0, [r4, #0x4C]
_0806AFDC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806AFE4: .4byte 0x00000DB2
_0806AFE8: .4byte sub_806AFEC
	thumb_func_start sub_806AFEC
sub_806AFEC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B072
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806B078 @ =0x0806B085
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806B07C @ =0x0806B199
	str r0, [r4, #0x58]
	ldr r0, _0806B080 @ =0x0806B15D
	str r0, [r4, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x83
	bl play_sfx_80195B4
_0806B072:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B078: .4byte sub_806B084
_0806B07C: .4byte sub_806B198
_0806B080: .4byte sub_806B15C
	thumb_func_start sub_806B084
sub_806B084:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B0C4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B0A2
	adds r1, #0xFF
_0806B0A2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B0AC
	adds r2, #0xFF
_0806B0AC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B0B6
	adds r3, #0xFF
_0806B0B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B0E4 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B0C4:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B0DA
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _0806B0E8 @ =0x0806B0ED
	str r0, [r4, #0x4C]
_0806B0DA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B0E4: .4byte 0x00000DB2
_0806B0E8: .4byte sub_806B0EC
	thumb_func_start sub_806B0EC
sub_806B0EC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B152
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806B158 @ =0x0806B209
	str r0, [r4, #0x4C]
_0806B152:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B158: .4byte sub_806B208
	thumb_func_start sub_806B15C
sub_806B15C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _0806B190
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	ldr r0, _0806B18C @ =0x0806B0ED
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _0806B192
_0806B18C: .4byte sub_806B0EC
_0806B190:
	adds r0, r4, #0x0
_0806B192:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_806B198
sub_806B198:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806B204 @ =0x0806B209
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806B204: .4byte sub_806B208
	thumb_func_start sub_806B208
sub_806B208:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B248
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B226
	adds r1, #0xFF
_0806B226:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B230
	adds r2, #0xFF
_0806B230:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B23A
	adds r3, #0xFF
_0806B23A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B268 @ =0x00000DBB
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B248:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806B260
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806B260:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B268: .4byte 0x00000DBB
	thumb_func_start sub_806B26C
sub_806B26C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806B280
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_0806B280:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806B288
sub_806B288:
	push {lr}
	ldr r1, [r0, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	pop {r1}
	bx r1
	thumb_func_start sub_806B298
sub_806B298:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806B30C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806B314 @ =0x0806B529
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_0806B30C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B314: .4byte sub_806B528
	thumb_func_start sub_806B318
sub_806B318:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B338
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806B338:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B340
sub_806B340:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806B382
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B356
	adds r1, #0xFF
_0806B356:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B360
	adds r2, #0xFF
_0806B360:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B36A
	adds r3, #0xFF
_0806B36A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B38C @ =0x00000D82
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x58
	bl stop_sfx_80195A8
	movs r0, #0x00
_0806B382:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806B38C: .4byte 0x00000D82
	thumb_func_start sub_806B390
sub_806B390:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806B3A8 @ =0x0806B3D1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806B3A8: .4byte sub_806B3D0
	thumb_func_start sub_806B3AC
sub_806B3AC:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r2, #0x10]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0806B3CA
	adds r0, r2, #0x0
	bl sub_807C298
_0806B3CA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B3D0
sub_806B3D0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806B3E4
	adds r1, #0xFF
_0806B3E4:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806B3FA
	movs r0, #0x58
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_0806B3FA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_806B400
sub_806B400:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0806B41A
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B420 @ =0x0806B56D
	str r0, [r4, #0x4C]
_0806B41A:
	pop {r4}
	pop {r0}
	bx r0
_0806B420: .4byte sub_806B56C
	thumb_func_start sub_806B424
sub_806B424:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B464
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B442
	adds r1, #0xFF
_0806B442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B44C
	adds r2, #0xFF
_0806B44C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B456
	adds r3, #0xFF
_0806B456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B488 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B464:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B47E
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B48C @ =0x0806AA19
	str r0, [r4, #0x4C]
_0806B47E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B488: .4byte 0x00000DB2
_0806B48C: .4byte sub_806AA18
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0xB5, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C
	.byte 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x03, 0xD1, 0x11, 0x1C, 0xA4, 0x31, 0x03, 0x20, 0x02, 0xE0
	.byte 0x11, 0x1C, 0xA4, 0x31, 0x09, 0x20, 0x08, 0x60, 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23
	.byte 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42, 0x03, 0xD1, 0x11, 0x1C, 0xA8, 0x31, 0x00, 0x20
	.byte 0x02, 0xE0, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x41, 0xB5, 0x06, 0x08, 0x00, 0xB5, 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31
	.byte 0x08, 0x68, 0x00, 0x28, 0x02, 0xD1, 0xC0, 0x20, 0x40, 0x00, 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64
	.byte 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x85, 0xB5, 0x06, 0x08
	thumb_func_start sub_806B50C
sub_806B50C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B524 @ =0x0806AEFD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806B524: .4byte sub_806AEFC
	thumb_func_start sub_806B528
sub_806B528:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B53A
	adds r0, r1, #0x0
	bl sub_807C298
_0806B53A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806B540
sub_806B540:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0806B568 @ =0x0806B5A9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B568: .4byte sub_806B5A8
	thumb_func_start sub_806B56C
sub_806B56C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B580
	movs r0, #0x00
	str r0, [r2, #0x4C]
_0806B580:
	pop {r0}
	bx r0
	thumb_func_start sub_806B584
sub_806B584:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B5A4 @ =0x0806AA19
	str r0, [r4, #0x4C]
	adds r4, #0xAC
	movs r0, #0x00
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B5A4: .4byte sub_806AA18
	thumb_func_start sub_806B5A8
sub_806B5A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806B5EC
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B5D6
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806B5E8
_0806B5D6:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806B5E8:
	ldr r0, _0806B5F4 @ =0x0806B5F9
	str r0, [r4, #0x4C]
_0806B5EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B5F4: .4byte sub_806B5F8
	thumb_func_start sub_806B5F8
sub_806B5F8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0806B63A
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B61E
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x02
	b _0806B626
_0806B61E:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r1, #0x05
_0806B626:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0806B640 @ =0x0806ACA5
	str r0, [r4, #0x4C]
_0806B63A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B640: .4byte sub_806ACA4
	thumb_func_start sub_806B644
sub_806B644:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806B658
	b _0806B798
_0806B658:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806B676
	adds r1, #0xFF
_0806B676:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806B680
	adds r2, #0xFF
_0806B680:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806B68A
	adds r3, #0xFF
_0806B68A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806B7A0 @ =0x00001C07
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0806B69E
	adds r2, #0xFF
_0806B69E:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806B6A8
	adds r0, #0xFF
_0806B6A8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806B6B4
	adds r0, #0xFF
_0806B6B4:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806B7A4 @ =0x000040D3
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0806B7A8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806B7AC @ =0x0806C03D
	str r0, [r5, #0x58]
	ldr r0, _0806B7B0 @ =0x0806C021
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _0806B7B4 @ =0x0806C1A9
	str r0, [r5, #0x4C]
	ldr r0, _0806B7B8 @ =0x0806C1C9
	str r0, [r6, #0x4C]
_0806B798:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806B7A0: .4byte 0x00001C07
_0806B7A4: .4byte 0x000040D3
_0806B7A8: .4byte sub_8087540
_0806B7AC: .4byte sub_806C03C
_0806B7B0: .4byte sub_806C020
_0806B7B4: .4byte sub_806C1A8
_0806B7B8: .4byte sub_806C1C8
	thumb_func_start sub_806B7BC
sub_806B7BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806B818
	subs r1, #0x28
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xB3
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806B820 @ =0x0806C191
	str r0, [r4, #0x4C]
_0806B818:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B820: .4byte sub_806C190
	thumb_func_start sub_806B824
sub_806B824:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806B856
	adds r0, #0xFF
_0806B856:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806B866
	adds r0, #0xFF
_0806B866:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806B876
	adds r0, #0xFF
_0806B876:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806B8EC @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x03
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xE0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806B8C6
	movs r0, #0x02
_0806B8C6:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806B8F0 @ =0x0806B8F5
	str r0, [r4, #0x4C]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806B8EC: .4byte 0x03001038
_0806B8F0: .4byte sub_806B8F4
	thumb_func_start sub_806B8F4
sub_806B8F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	bgt _0806B986
	b _0806BA9E
_0806B986:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B994
	adds r0, #0xFF
_0806B994:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B9A2
	adds r0, #0xFF
_0806B9A2:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806B9B0
	adds r0, #0xFF
_0806B9B0:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806BAAC @ =0x00001C19
	bl sub_80DF024
	ldr r0, [r6, #0x28]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	movs r2, #0x12
	mov r8, r2
	cmp r1, r0
	beq _0806B9DA
	movs r0, #0x13
	mov r8, r0
_0806B9DA:
	movs r5, #0x00
	movs r1, #0x84
	adds r1, r1, r6
	mov r9, r1
_0806B9E2:
	ldr r0, _0806BAB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r5, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806BA2A
	ldr r0, [r7, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806BA08
	adds r2, #0xFF
_0806BA08:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806BA12
	adds r3, #0xFF
_0806BA12:
	asrs r3, r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BA2A:
	adds r1, r5, #0x1
	ldr r0, _0806BAB0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806BA74
	ldr r0, [r7, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806BA52
	adds r2, #0xFF
_0806BA52:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806BA5C
	adds r3, #0xFF
_0806BA5C:
	asrs r3, r3, #0x08
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BA74:
	adds r5, #0x02
	cmp r5, #0x05
	ble _0806B9E2
	movs r0, #0x1E
	mov r2, r9
	str r0, [r2, #0x00]
	ldr r0, _0806BAB4 @ =0x0806C0E1
	str r0, [r6, #0x4C]
	ldr r2, [r6, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x96
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
_0806BA9E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806BAAC: .4byte 0x00001C19
_0806BAB0: .4byte 0x03000FD8
_0806BAB4: .4byte sub_806C0E0
	thumb_func_start sub_806BAB8
sub_806BAB8:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BAF8
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BADA
	adds r1, #0xFF
_0806BADA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BAE4
	adds r2, #0xFF
_0806BAE4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BAEE
	adds r3, #0xFF
_0806BAEE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BB20 @ =0x00001C52
	bl sub_80DF024
_0806BAF8:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB3C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB24
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB30
_0806BB20: .4byte 0x00001C52
_0806BB24:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB30:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, _0806BB44 @ =0x0806BB49
	str r0, [r4, #0x4C]
_0806BB3C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806BB44: .4byte sub_806BB48
	thumb_func_start sub_806BB48
sub_806BB48:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BC2A
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BC2A
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BB82
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BB8E
_0806BB82:
	adds r0, r5, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BB8E:
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _0806BB98
	adds r2, #0xFF
_0806BB98:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x3C]
	cmp r3, #0x00
	bge _0806BBA2
	adds r3, #0xFF
_0806BBA2:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806BBAC
	adds r0, #0xFF
_0806BBAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806BC34 @ =0x000040D0
	bl sub_807BF34
	str r0, [r5, #0x30]
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x77
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	movs r2, #0x77
	adds r2, r2, r0
	mov r12, r2
	adds r3, r4, #0x0
	ands r3, r1
	lsls r3, r3, #0x06
	ldrb r1, [r2, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r1
	orrs r2, r3
	mov r1, r12
	strb r2, [r1, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	ands r4, r1
	lsls r4, r4, #0x05
	movs r1, #0x21
	negs r1, r1
	ands r2, r1
	orrs r2, r4
	mov r1, r12
	strb r2, [r1, #0x00]
	ldr r1, _0806BC38 @ =0x08087541
	str r1, [r0, #0x68]
	ldr r1, [r5, #0x6C]
	str r1, [r0, #0x6C]
	ldr r1, [r5, #0x2C]
	str r1, [r0, #0x2C]
	adds r1, r5, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	adds r1, #0x01
	adds r0, #0x75
	strb r1, [r0, #0x00]
	ldr r0, _0806BC3C @ =0x0806BFD5
	str r0, [r5, #0x4C]
_0806BC2A:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BC34: .4byte 0x000040D0
_0806BC38: .4byte sub_8087540
_0806BC3C: .4byte sub_806BFD4
	thumb_func_start sub_806BC40
sub_806BC40:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BCE8
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BCE8
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806BCB4 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BCBC
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCB8 @ =0x00001534
	b _0806BCD6
	.byte 0x00, 0x00
_0806BCB4: .4byte 0x00000119
_0806BCB8: .4byte 0x00001534
_0806BCBC:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BCF0 @ =0x0000159E
_0806BCD6:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BCF4 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BCF8 @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BCFC @ =0x0806BF71
	str r0, [r4, #0x4C]
_0806BCE8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BCF0: .4byte 0x0000159E
_0806BCF4: .4byte 0x03000E3C
_0806BCF8: .4byte sub_806BEA8
_0806BCFC: .4byte sub_806BF70
	thumb_func_start sub_806BD00
sub_806BD00:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BD8C
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BD8C
	subs r1, #0x28
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _0806BD58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BD60
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD5C @ =0x00001569
	b _0806BD7A
	.byte 0x00, 0x00
_0806BD58: .4byte 0x00000119
_0806BD5C: .4byte 0x00001569
_0806BD60:
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806BD94 @ =0x000015D3
_0806BD7A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806BD98 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806BD9C @ =0x0806BEA9
	str r0, [r4, #0x58]
	ldr r0, _0806BDA0 @ =0x0806BDA5
	str r0, [r4, #0x4C]
_0806BD8C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BD94: .4byte 0x000015D3
_0806BD98: .4byte 0x03000E3C
_0806BD9C: .4byte sub_806BEA8
_0806BDA0: .4byte sub_806BDA4
	thumb_func_start sub_806BDA4
sub_806BDA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE26
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806BDF8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BDDA
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BDE6
_0806BDDA:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BDE6:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BDF4 @ =0x0806BC41
	b _0806BE24
	.byte 0x00, 0x00
_0806BDF4: .4byte sub_806BC40
_0806BDF8:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BE16
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BE22
_0806BE16:
	adds r0, r4, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BE22:
	ldr r0, _0806BE2C @ =0x0806BE31
_0806BE24:
	str r0, [r4, #0x4C]
_0806BE26:
	pop {r4}
	pop {r0}
	bx r0
_0806BE2C: .4byte sub_806BE30
	thumb_func_start sub_806BE30
sub_806BE30:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE9E
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806BEA4 @ =0x0806BF0D
	str r0, [r4, #0x4C]
_0806BE9E:
	pop {r4}
	pop {r0}
	bx r0
_0806BEA4: .4byte sub_806BF0C
	thumb_func_start sub_806BEA8
sub_806BEA8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BEB8
	adds r1, #0xFF
_0806BEB8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BEC2
	adds r2, #0xFF
_0806BEC2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BECC
	adds r3, #0xFF
_0806BECC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806BEF0 @ =0x00001C4A
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BEF8
	ldr r0, _0806BEF4 @ =0x0806BF71
	b _0806BEFA
	.byte 0x00, 0x00
_0806BEF0: .4byte 0x00001C4A
_0806BEF4: .4byte sub_806BF70
_0806BEF8:
	ldr r0, _0806BF08 @ =0x0806BDA5
_0806BEFA:
	str r0, [r5, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806BF08: .4byte sub_806BDA4
	thumb_func_start sub_806BF0C
sub_806BF0C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BF4C
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BF2E
	adds r1, #0xFF
_0806BF2E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BF38
	adds r2, #0xFF
_0806BF38:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BF42
	adds r3, #0xFF
_0806BF42:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BF6C @ =0x00001C5B
	bl sub_80DF024
_0806BF4C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806BF64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806BF64:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806BF6C: .4byte 0x00001C5B
	thumb_func_start sub_806BF70
sub_806BF70:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BFC8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BFA4
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BFBC
_0806BFA4:
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BFBC:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BFD0 @ =0x0806BD01
	str r0, [r4, #0x4C]
_0806BFC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806BFD0: .4byte sub_806BD00
	thumb_func_start sub_806BFD4
sub_806BFD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C014
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BFFC
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C008
_0806BFFC:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C008:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C01C @ =0x0806BC41
	str r0, [r4, #0x4C]
_0806C014:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C01C: .4byte sub_806BC40
	thumb_func_start sub_806C020
sub_806C020:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C032
	ldr r0, _0806C038 @ =0x0806B825
	str r0, [r4, #0x4C]
	movs r0, #0x00
_0806C032:
	pop {r4}
	pop {r1}
	bx r1
_0806C038: .4byte sub_806B824
	thumb_func_start sub_806C03C
sub_806C03C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C052
	adds r0, #0xFF
_0806C052:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C060
	adds r0, #0xFF
_0806C060:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806C06E
	adds r0, #0xFF
_0806C06E:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C0D8 @ =0x00001C19
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, _0806C0DC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r5, [r1, #0x74]
	adds r7, r5, #0x0
	adds r7, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r6, #0x06
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0AA
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0AA:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C0C2
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0806C0C2:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806C0D8: .4byte 0x00001C19
_0806C0DC: .4byte 0x03000FD8
	thumb_func_start sub_806C0E0
sub_806C0E0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C18A
	movs r4, #0x00
_0806C0F4:
	ldr r0, _0806C12C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C136
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C130
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C136
	.byte 0x00, 0x00
_0806C12C: .4byte 0x03000FD8
_0806C130:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C136:
	adds r1, r4, #0x1
	ldr r0, _0806C170 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0806C17A
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806C174
	adds r0, r2, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C17A
	.byte 0x00, 0x00
_0806C170: .4byte 0x03000FD8
_0806C174:
	adds r0, r2, #0x0
	bl sub_8086700
_0806C17A:
	adds r4, #0x02
	cmp r4, #0x05
	ble _0806C0F4
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807C298
_0806C18A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_806C190
sub_806C190:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1A2
	adds r0, r1, #0x0
	bl sub_807C298
_0806C1A2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806C1A8
sub_806C1A8:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C1C0
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C1C4 @ =0x0806B7BD
	str r0, [r2, #0x4C]
_0806C1C0:
	pop {r0}
	bx r0
_0806C1C4: .4byte sub_806B7BC
	thumb_func_start sub_806C1C8
sub_806C1C8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C1E8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0806C1E8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x02, 0x1C, 0xA8, 0x32, 0x01, 0x21, 0x11, 0x60, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0x25, 0xC2, 0x06, 0x08, 0x02, 0x1C, 0xA8, 0x32, 0x00, 0x21, 0x11, 0x60, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x25, 0xC2, 0x06, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0x95, 0xC2, 0x06, 0x08
	thumb_func_start sub_806C224
sub_806C224:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	ldr r2, _0806C28C @ =0xFFFFB800
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806C290 @ =0x0806BAB9
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C28C: .4byte 0xFFFFB800
_0806C290: .4byte sub_806BAB8
	thumb_func_start sub_806C294
sub_806C294:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806C2AC @ =0x0806C2B1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806C2AC: .4byte sub_806C2B0
	thumb_func_start sub_806C2B0
sub_806C2B0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C304
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C2E2
	adds r1, #0xFF
_0806C2E2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C2EC
	adds r2, #0xFF
_0806C2EC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C2F6
	adds r3, #0xFF
_0806C2F6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C30C @ =0x00001BFE
	bl sub_80DF024
	ldr r0, _0806C310 @ =0x0806B645
	str r0, [r4, #0x4C]
_0806C304:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806C30C: .4byte 0x00001BFE
_0806C310: .4byte sub_806B644
	thumb_func_start sub_806C314
sub_806C314:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C3A0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806C3A0
	movs r0, #0x7C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806C374
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C35E
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C36A
_0806C35E:
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C36A:
	ldr r0, _0806C370 @ =0x0806C94D
	b _0806C39E
	.byte 0x00, 0x00
_0806C370: .4byte sub_806C94C
_0806C374:
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C38C
	adds r0, r4, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C398
_0806C38C:
	adds r0, r4, #0x0
	movs r1, #0x1F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C398:
	movs r0, #0x03
	strh r0, [r5, #0x00]
	ldr r0, _0806C3A8 @ =0x0806C3AD
_0806C39E:
	str r0, [r4, #0x4C]
_0806C3A0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C3A8: .4byte sub_806C3AC
	thumb_func_start sub_806C3AC
sub_806C3AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C438
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806C438
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x44
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C3FC
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C3F8 @ =0x0000163A
	b _0806C40A
_0806C3F8: .4byte 0x0000163A
_0806C3FC:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C440 @ =0x000016BC
_0806C40A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806C444 @ =0x03000E3C
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806C448 @ =0x0806C8C1
	str r0, [r4, #0x58]
	ldr r0, _0806C44C @ =0x0806C849
	str r0, [r4, #0x5C]
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _0806C450 @ =0x0806C8D9
	str r0, [r4, #0x4C]
_0806C438:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C440: .4byte 0x000016BC
_0806C444: .4byte 0x03000E3C
_0806C448: .4byte sub_806C8C0
_0806C44C: .4byte sub_806C848
_0806C450: .4byte sub_806C8D8
	thumb_func_start sub_806C454
sub_806C454:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806C468
	b _0806C59E
_0806C468:
	ldr r0, _0806C49C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r0, [r0, #0x74]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C4A0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C4A0
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	b _0806C59C
_0806C49C: .4byte 0x03000FD8
_0806C4A0:
	adds r0, r6, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806C4B4
	adds r1, #0xFF
_0806C4B4:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806C4BE
	adds r2, #0xFF
_0806C4BE:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806C4C8
	adds r3, #0xFF
_0806C4C8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806C5A8 @ =0x00001DF0
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806C4DC
	adds r0, #0xFF
_0806C4DC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806C4EA
	adds r0, #0xFF
_0806C4EA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806C4F6
	adds r0, #0xFF
_0806C4F6:
	asrs r0, r0, #0x08
	adds r0, #0x0B
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806C5AC @ =0x00004101
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	subs r2, #0x01
	ands r5, r0
	lsls r5, r5, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806C5B0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806C5B4 @ =0x0806C7B5
	str r0, [r4, #0x58]
	ldr r0, _0806C5B8 @ =0x0806C76D
	str r0, [r4, #0x60]
	ldr r0, _0806C5BC @ =0x0806C5C9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0xB2
	strh r5, [r4, #0x00]
	ldr r0, _0806C5C0 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806C5C4 @ =0x0806C801
_0806C59C:
	str r0, [r6, #0x4C]
_0806C59E:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C5A8: .4byte 0x00001DF0
_0806C5AC: .4byte 0x00004101
_0806C5B0: .4byte sub_8087540
_0806C5B4: .4byte sub_806C7B4
_0806C5B8: .4byte sub_806C76C
_0806C5BC: .4byte sub_806C5C8
_0806C5C0: .4byte 0x0000012B
_0806C5C4: .4byte sub_806C800
	thumb_func_start sub_806C5C8
sub_806C5C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	ldr r0, _0806C60C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	movs r2, #0x08
	adds r2, r2, r1
	mov r9, r2
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	movs r0, #0x00
	mov r8, r0
	adds r7, r1, #0x0
	adds r7, #0x7E
	movs r5, #0x06
_0806C5EE:
	bl sub_8199F30
	adds r3, r0, #0x0
	movs r0, #0x01
	ands r3, r0
	cmp r3, #0x00
	bne _0806C610
	ldrb r1, [r7, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	adds r2, r6, #0x0
	adds r2, #0x76
	cmp r0, #0x02
	bne _0806C622
	b _0806C61E
_0806C60C: .4byte 0x03000FD8
_0806C610:
	adds r2, r6, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C62C
_0806C61E:
	movs r0, #0x01
	mov r8, r0
_0806C622:
	ldrb r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C636
_0806C62C:
	ldrb r1, [r7, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _0806C64A
_0806C636:
	mov r2, r8
	cmp r2, #0x00
	beq _0806C5EE
	cmp r3, #0x00
	bne _0806C652
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r9
	ldr r2, [r0, #0x28]
	b _0806C658
_0806C64A:
	adds r0, r4, #0x0
	bl sub_807C298
	b _0806C6A2
_0806C652:
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r2, [r6, #0x28]
_0806C658:
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806C678
	adds r0, #0xFF
_0806C678:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _0806C688
	adds r1, #0xFF
_0806C688:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, _0806C6B0 @ =0x0806C6B5
	str r0, [r4, #0x4C]
_0806C6A2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C6B0: .4byte sub_806C6B4
	thumb_func_start sub_806C6B4
sub_806C6B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	subs r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xB0
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r2, r4, #0x0
	adds r2, #0x8C
	ldr r1, _0806C768 @ =0x08198504
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	cmp r1, #0x00
	bge _0806C708
	adds r1, #0x3F
_0806C708:
	asrs r1, r1, #0x06
	lsls r1, r1, #0x03
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	bl sub_8199F30
	movs r1, #0x07
	ands r1, r0
	ldr r0, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C74A
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bne _0806C74A
	adds r0, r2, #0x1
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C74A:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806C752
	adds r1, #0xFF
_0806C752:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _0806C762
	adds r0, r4, #0x0
	bl sub_807C298
_0806C762:
	pop {r4, r5}
	pop {r0}
	bx r0
_0806C768: .4byte 0x08198504
	thumb_func_start sub_806C76C
sub_806C76C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806C7A8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C782
	adds r1, #0xFF
_0806C782:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C78C
	adds r2, #0xFF
_0806C78C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C796
	adds r3, #0xFF
_0806C796:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C7B0 @ =0x00001DF8
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_0806C7A8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_0806C7B0: .4byte 0x00001DF8
	thumb_func_start sub_806C7B4
sub_806C7B4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806C7C4
	adds r1, #0xFF
_0806C7C4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806C7CE
	adds r2, #0xFF
_0806C7CE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806C7D8
	adds r3, #0xFF
_0806C7D8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806C7FC @ =0x00001E01
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_0806C7FC: .4byte 0x00001E01
	thumb_func_start sub_806C800
sub_806C800:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C83C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C82E
	movs r0, #0x00
	b _0806C83A
_0806C82E:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C844 @ =0x0806CAC1
_0806C83A:
	str r0, [r4, #0x4C]
_0806C83C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C844: .4byte sub_806CAC0
	thumb_func_start sub_806C848
sub_806C848:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _0806C8B6
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C870
	ldr r0, _0806C86C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x60]
	b _0806C876
	.byte 0x00, 0x00
_0806C86C: .4byte 0x03000FD8
_0806C870:
	ldr r0, _0806C8A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x5C]
_0806C876:
	adds r4, r1, #0x0
	adds r4, #0x08
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _0806C882
	adds r2, #0xFF
_0806C882:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0806C88C
	adds r3, #0xFF
_0806C88C:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0806C8A8
	movs r0, #0x11
	b _0806C8AA
	.byte 0x00, 0x00
_0806C8A4: .4byte 0x03000FD8
_0806C8A8:
	movs r0, #0x10
_0806C8AA:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	movs r0, #0x00
_0806C8B6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806C8C0
sub_806C8C0:
	push {lr}
	adds r3, r0, #0x0
	adds r3, #0x9C
	movs r2, #0x01
	str r2, [r3, #0x00]
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x00
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_806C8D8
sub_806C8D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C930
	adds r1, r2, #0x0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C90C
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0xB3
	lsls r1, r1, #0x05
	b _0806C91A
_0806C90C:
	adds r0, r4, #0x0
	movs r1, #0x12
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C938 @ =0x000016E2
_0806C91A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806C93C @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806C940 @ =0x0806C8C1
	str r0, [r4, #0x58]
	ldr r0, _0806C944 @ =0x0806C849
	str r0, [r4, #0x5C]
	ldr r0, _0806C948 @ =0x0806CB3D
	str r0, [r4, #0x4C]
_0806C930:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C938: .4byte 0x000016E2
_0806C93C: .4byte 0x03000E3C
_0806C940: .4byte sub_806C8C0
_0806C944: .4byte sub_806C848
_0806C948: .4byte sub_806CB3C
	thumb_func_start sub_806C94C
sub_806C94C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C99A
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x01
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x00
	str r1, [r0, #0x00]
	adds r0, #0x08
	str r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _0806C98A
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C996
_0806C98A:
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C996:
	ldr r0, _0806C9A0 @ =0x0806C9A5
	str r0, [r4, #0x4C]
_0806C99A:
	pop {r4}
	pop {r0}
	bx r0
_0806C9A0: .4byte sub_806C9A4
	thumb_func_start sub_806C9A4
sub_806C9A4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C9F0
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C9CC
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806C9D8
_0806C9CC:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806C9D8:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
	ldr r0, _0806C9F8 @ =0x0806C315
	str r0, [r4, #0x4C]
_0806C9F0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C9F8: .4byte sub_806C314
	.byte 0x70, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0x9C, 0x35, 0x2E, 0x68, 0x00, 0x2E, 0x0D, 0xD1, 0x2D, 0xF1
	.byte 0x91, 0xFA, 0x05, 0x21, 0x6E, 0xF1, 0x3C, 0xF9, 0x28, 0x60, 0x21, 0x1C, 0xA0, 0x31, 0x80, 0x20
	.byte 0x40, 0x00, 0x08, 0x60, 0x20, 0x1C, 0xA4, 0x30, 0x06, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF1, 0xCA, 0x06, 0x08, 0x30, 0xB5, 0x02, 0x1C
	.byte 0x15, 0x1C, 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0E, 0xD1, 0x14, 0x1C, 0xA0, 0x34, 0x20, 0x68
	.byte 0x00, 0x28, 0x09, 0xD1, 0x13, 0x1C, 0xA4, 0x33, 0x19, 0x68, 0x00, 0x29, 0x04, 0xD1, 0x08, 0x20
	.byte 0x28, 0x60, 0x10, 0x20, 0x20, 0x60, 0x19, 0x60, 0x10, 0x1C, 0xA8, 0x30, 0x01, 0x21, 0x01, 0x60
	.byte 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x6D, 0xCB, 0x06, 0x08
	.byte 0x30, 0xB5, 0x02, 0x1C, 0x15, 0x1C, 0x9C, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0E, 0xD1, 0x14, 0x1C
	.byte 0xA0, 0x34, 0x20, 0x68, 0x00, 0x28, 0x09, 0xD1, 0x13, 0x1C, 0xA4, 0x33, 0x19, 0x68, 0x00, 0x29
	.byte 0x04, 0xD1, 0x08, 0x20, 0x28, 0x60, 0x10, 0x20, 0x20, 0x60, 0x19, 0x60, 0x10, 0x1C, 0xA8, 0x30
	.byte 0x00, 0x21, 0x01, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x6D, 0xCB, 0x06, 0x08
	thumb_func_start sub_806CAC0
sub_806CAC0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806CAE4
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CAEC @ =0x0806C455
	str r0, [r4, #0x4C]
_0806CAE4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CAEC: .4byte sub_806C454
	thumb_func_start sub_806CAF0
sub_806CAF0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CB08
	adds r1, #0xFF
_0806CB08:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CB12
	adds r2, #0xFF
_0806CB12:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CB1C
	adds r3, #0xFF
_0806CB1C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CB34 @ =0x00001DE6
	bl sub_80DF024
	ldr r0, _0806CB38 @ =0x0806CBA1
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CB34: .4byte 0x00001DE6
_0806CB38: .4byte sub_806CBA0
	thumb_func_start sub_806CB3C
sub_806CB3C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CB64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r2, #0x00
	movs r1, #0x10
	strb r1, [r0, #0x00]
	str r2, [r4, #0x4C]
_0806CB64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806CB6C
sub_806CB6C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806CB86
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806CB92
_0806CB86:
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806CB92:
	ldr r0, _0806CB9C @ =0x0806C9A5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806CB9C: .4byte sub_806C9A4
	thumb_func_start sub_806CBA0
sub_806CBA0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CBC0
	adds r0, r4, #0x0
	movs r1, #0x15
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CBC8 @ =0x0806C455
	str r0, [r4, #0x4C]
_0806CBC0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CBC8: .4byte sub_806C454
	thumb_func_start sub_806CBCC
sub_806CBCC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806CCAC
	movs r7, #0x00
	str r7, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CC60 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r0, [r0, #0x30]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806CC22
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0806CC64
_0806CC22:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	subs r1, #0x26
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	b _0806CC9E
	.byte 0x00, 0x00
_0806CC60: .4byte 0x03000FD8
_0806CC64:
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r7, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
_0806CC9E:
	ldr r0, _0806CCB4 @ =0x0806D3C5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806CCAC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CCB4: .4byte sub_806D3C4
	thumb_func_start sub_806CCB8
sub_806CCB8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806CD60
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _0806CD60
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	ldr r0, _0806CD28 @ =0x08087541
	str r0, [r4, #0x68]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806CD2C @ =0x0806D341
	str r0, [r4, #0x58]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806CD34
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x38]
	ldr r3, _0806CD30 @ =0xFFFFB000
	b _0806CD3C
_0806CD28: .4byte sub_8087540
_0806CD2C: .4byte sub_806D340
_0806CD30: .4byte 0xFFFFB000
_0806CD34:
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x38]
	ldr r3, _0806CD68 @ =0xFFFFD000
_0806CD3C:
	adds r0, r1, r3
	cmp r0, #0x00
	bge _0806CD46
	adds r3, #0xFF
	adds r0, r1, r3
_0806CD46:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0x12
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _0806CD6C @ =0x0806CD71
	str r0, [r4, #0x4C]
_0806CD60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CD68: .4byte 0xFFFFD000
_0806CD6C: .4byte sub_806CD70
	thumb_func_start sub_806CD70
sub_806CD70:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806CDEA
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x80
	ble _0806CDBC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CD98
	adds r1, #0xFF
_0806CD98:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CDA2
	adds r2, #0xFF
_0806CDA2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CDAC
	adds r3, #0xFF
_0806CDAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CDB8 @ =0x000020F5
	bl sub_80DF024
	b _0806CDE2
_0806CDB8: .4byte 0x000020F5
_0806CDBC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CDC4
	adds r1, #0xFF
_0806CDC4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CDCE
	adds r2, #0xFF
_0806CDCE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CDD8
	adds r3, #0xFF
_0806CDD8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CE24 @ =0x000020EC
	bl sub_80DF024
_0806CDE2:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_0806CDEA:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r3, r0, #0x0
	cmp r1, #0x00
	beq _0806CE2C
	ldr r2, _0806CE28 @ =0x08198584
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r5, #0x00
	ldsh r0, [r0, r5]
	adds r2, r1, #0x0
	cmp r0, #0x00
	bge _0806CE10
	adds r0, #0x3F
_0806CE10:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r0, r1
	b _0806CE54
	.byte 0x00, 0x00
_0806CE24: .4byte 0x000020EC
_0806CE28: .4byte 0x08198584
_0806CE2C:
	ldr r2, _0806CEA4 @ =0x08198584
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r2, r1, #0x0
	cmp r0, #0x00
	bge _0806CE44
	adds r0, #0x3F
_0806CE44:
	asrs r1, r0, #0x06
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r5, #0xC0
	lsls r5, r5, #0x06
	adds r0, r0, r5
_0806CE54:
	str r0, [r4, #0x10]
	ldr r1, _0806CEA8 @ =0x08198504
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	cmp r1, #0x00
	bge _0806CE68
	adds r1, #0x3F
_0806CE68:
	asrs r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	muls r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r2, #0x00]
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	cmp r1, r0
	bgt _0806CE96
	cmn r1, r0
	bge _0806CEC4
_0806CE96:
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, #0x00
	beq _0806CEAC
	movs r0, #0xF0
	lsls r0, r0, #0x07
	b _0806CEB0
_0806CEA4: .4byte 0x08198584
_0806CEA8: .4byte 0x08198504
_0806CEAC:
	movs r0, #0xB0
	lsls r0, r0, #0x07
_0806CEB0:
	str r0, [r4, #0x10]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r4, #0x14]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x2D
	strh r0, [r1, #0x00]
	ldr r0, _0806CECC @ =0x0806D391
	str r0, [r4, #0x4C]
_0806CEC4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806CECC: .4byte sub_806D390
	thumb_func_start sub_806CED0
sub_806CED0:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x84
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0806CFB0
	movs r7, #0x00
	str r7, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806CF64 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r0, [r0, #0x30]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0806CF26
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _0806CF68
_0806CF26:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
	subs r1, #0x26
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	b _0806CFA2
	.byte 0x00, 0x00
_0806CF64: .4byte 0x03000FD8
_0806CF68:
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r7, [r0, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x00]
	subs r1, #0x0C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
_0806CFA2:
	ldr r0, _0806CFB8 @ =0x0806D30D
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806CFB0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CFB8: .4byte sub_806D30C
	thumb_func_start sub_806CFBC
sub_806CFBC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806CFDA
	subs r1, #0x20
	movs r0, #0xB4
	lsls r0, r0, #0x07
	b _0806CFE2
_0806CFDA:
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xFC
	lsls r0, r0, #0x07
_0806CFE2:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806CFFA
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x90
	lsls r0, r0, #0x07
	b _0806D002
_0806CFFA:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
_0806D002:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806D044 @ =0x0806D049
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D044: .4byte sub_806D048
	thumb_func_start sub_806D048
sub_806D048:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D088
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D066
	adds r1, #0xFF
_0806D066:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D070
	adds r2, #0xFF
_0806D070:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D07A
	adds r3, #0xFF
_0806D07A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D0B8 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D088:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D0F4
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D0BC
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xA0
	lsls r0, r0, #0x06
	b _0806D0C2
_0806D0B8: .4byte 0x00002122
_0806D0BC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _0806D0FC @ =0xFFFFF800
_0806D0C2:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D100 @ =0x0806D105
	str r0, [r4, #0x4C]
_0806D0F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D0FC: .4byte 0xFFFFF800
_0806D100: .4byte sub_806D104
	thumb_func_start sub_806D104
sub_806D104:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D144
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D122
	adds r1, #0xFF
_0806D122:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D12C
	adds r2, #0xFF
_0806D12C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D136
	adds r3, #0xFF
_0806D136:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D168 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D144:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D1C6
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x02
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0806D16C
	subs r1, #0x20
	movs r0, #0xFC
	lsls r0, r0, #0x07
	b _0806D174
_0806D168: .4byte 0x00002122
_0806D16C:
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xB4
	lsls r0, r0, #0x07
_0806D174:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D18C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x90
	lsls r0, r0, #0x07
	b _0806D194
_0806D18C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x06
_0806D194:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D1D0 @ =0x0806D1D5
	str r0, [r4, #0x4C]
_0806D1C6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D1D0: .4byte sub_806D1D4
	thumb_func_start sub_806D1D4
sub_806D1D4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D214
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D1F2
	adds r1, #0xFF
_0806D1F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D1FC
	adds r2, #0xFF
_0806D1FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D206
	adds r3, #0xFF
_0806D206:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D244 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D214:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D282
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x03
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D248
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0806D250
_0806D244: .4byte 0x0000212B
_0806D248:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xD0
	lsls r0, r0, #0x07
_0806D250:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D28C @ =0x0806D291
	str r0, [r4, #0x4C]
_0806D282:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D28C: .4byte sub_806D290
	thumb_func_start sub_806D290
sub_806D290:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D2D0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D2AE
	adds r1, #0xFF
_0806D2AE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D2B8
	adds r2, #0xFF
_0806D2B8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D2C2
	adds r3, #0xFF
_0806D2C2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D2F0 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D2D0:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D300
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806D2F4
	adds r0, r4, #0x0
	bl sub_806CFBC
	b _0806D300
_0806D2F0: .4byte 0x0000212B
_0806D2F4:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x2D
	strh r1, [r0, #0x00]
	ldr r0, _0806D308 @ =0x0806D35D
	str r0, [r4, #0x4C]
_0806D300:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D308: .4byte sub_806D35C
	thumb_func_start sub_806D30C
sub_806D30C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D336
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D33C @ =0x0806D481
	str r0, [r4, #0x4C]
_0806D336:
	pop {r4}
	pop {r0}
	bx r0
_0806D33C: .4byte sub_806D480
	thumb_func_start sub_806D340
sub_806D340:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806D358 @ =0x0806CD71
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806D358: .4byte sub_806CD70
	thumb_func_start sub_806D35C
sub_806D35C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D386
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D38C @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D386:
	pop {r4}
	pop {r0}
	bx r0
_0806D38C: .4byte sub_808750C
	thumb_func_start sub_806D390
sub_806D390:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D3BA
	movs r0, #0xD2
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D3C0 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806D3BA:
	pop {r4}
	pop {r0}
	bx r0
_0806D3C0: .4byte sub_808750C
	thumb_func_start sub_806D3C4
sub_806D3C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D3EE
	movs r0, #0x81
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x04
	strh r1, [r0, #0x00]
	ldr r0, _0806D3F4 @ =0x0806CCB9
	str r0, [r4, #0x4C]
_0806D3EE:
	pop {r4}
	pop {r0}
	bx r0
_0806D3F4: .4byte sub_806CCB8
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x25, 0x1C, 0xA0, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0D, 0xD1, 0x2C, 0xF1
	.byte 0x93, 0xFD, 0x22, 0x1C, 0x9C, 0x32, 0x01, 0x21, 0x01, 0x40, 0x11, 0x60, 0x02, 0x20, 0x28, 0x60
	.byte 0x21, 0x1C, 0xA4, 0x31, 0xA0, 0x20, 0x80, 0x00, 0x08, 0x60, 0x03, 0x48, 0xE0, 0x64, 0x01, 0x20
	.byte 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF1, 0xD4, 0x06, 0x08, 0x30, 0xB5, 0x04, 0x1C
	.byte 0x25, 0x1C, 0xA0, 0x35, 0x28, 0x68, 0x00, 0x28, 0x0C, 0xD1, 0x2C, 0xF1, 0x75, 0xFD, 0x22, 0x1C
	.byte 0x9C, 0x32, 0x01, 0x21, 0x01, 0x40, 0x11, 0x60, 0x03, 0x20, 0x28, 0x60, 0x21, 0x1C, 0xA4, 0x31
	.byte 0x02, 0x20, 0x08, 0x60, 0x20, 0x1C, 0x9C, 0x30, 0x00, 0x68, 0x00, 0x28, 0x04, 0xD0, 0x21, 0x1C
	.byte 0xA4, 0x31, 0x08, 0x68, 0x40, 0x42, 0x08, 0x60, 0x02, 0x48, 0xE0, 0x64, 0x01, 0x20, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x1D, 0xD5, 0x06, 0x08
	thumb_func_start sub_806D480
sub_806D480:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D4DC
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D4DC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD2
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806D4E4 @ =0x08087541
	str r0, [r4, #0x68]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806D4E8 @ =0x0806D549
	str r0, [r4, #0x58]
	ldr r0, _0806D4EC @ =0x0806CFBD
	str r0, [r4, #0x4C]
_0806D4DC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D4E4: .4byte sub_8087540
_0806D4E8: .4byte sub_806D548
_0806D4EC: .4byte sub_806CFBC
	thumb_func_start sub_806D4F0
sub_806D4F0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D518 @ =0x0806CED1
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D518: .4byte sub_806CED0
	thumb_func_start sub_806D51C
sub_806D51C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D544 @ =0x0806CBCD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D544: .4byte sub_806CBCC
	thumb_func_start sub_806D548
sub_806D548:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0806D574
	cmp r0, #0x01
	bgt _0806D566
	cmp r0, #0x00
	beq _0806D56C
	b _0806D584
_0806D566:
	cmp r0, #0x02
	beq _0806D57C
	b _0806D584
_0806D56C:
	ldr r0, _0806D570 @ =0x0806D049
	b _0806D586
_0806D570: .4byte sub_806D048
_0806D574:
	ldr r0, _0806D578 @ =0x0806D105
	b _0806D586
_0806D578: .4byte sub_806D104
_0806D57C:
	ldr r0, _0806D580 @ =0x0806D1D5
	b _0806D586
_0806D580: .4byte sub_806D1D4
_0806D584:
	ldr r0, _0806D590 @ =0x0806D291
_0806D586:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806D590: .4byte sub_806D290
	thumb_func_start sub_806D594
sub_806D594:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0806D614 @ =0x03000E3C
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D618 @ =0x0806E7CD
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D614: .4byte 0x03000E3C
_0806D618: .4byte sub_806E7CC
	thumb_func_start sub_806D61C
sub_806D61C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D69C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806D6A4 @ =0x0806E795
	str r0, [r4, #0x4C]
_0806D69C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D6A4: .4byte sub_806E794
	thumb_func_start sub_806D6A8
sub_806D6A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D750
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D750
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, _0806D758 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r1, _0806D75C @ =0x0000178E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806D760 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806D764 @ =0x0806E739
	str r0, [r5, #0x58]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806D768 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r1, #0x03
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D76C @ =0x0806D771
	str r0, [r5, #0x4C]
_0806D750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D758: .4byte sub_8087540
_0806D75C: .4byte 0x0000178E
_0806D760: .4byte 0x03000E3C
_0806D764: .4byte 0x0806E739
_0806D768: .4byte 0x00000199
_0806D76C: .4byte sub_806D770
	thumb_func_start sub_806D770
sub_806D770:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0806D7C8 @ =0x03000E3C
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r3, r2, #0x0
	adds r3, #0x75
	strb r0, [r3, #0x00]
	ldr r1, [r2, #0x30]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D7C4
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x00]
	ldr r1, [r2, #0x30]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, _0806D7CC @ =0x0806D7D1
	str r0, [r2, #0x4C]
_0806D7C4:
	pop {r0}
	bx r0
_0806D7C8: .4byte 0x03000E3C
_0806D7CC: .4byte sub_806D7D0
	thumb_func_start sub_806D7D0
sub_806D7D0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806D840
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D83C @ =0x0806E779
	b _0806D9DE
_0806D83C: .4byte sub_806E778
_0806D840:
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806D84C
	bl _call_via_r1
_0806D84C:
	ldr r2, [r4, #0x2C]
	ldr r0, _0806D894 @ =0x0806E791
	str r0, [r2, #0x4C]
	ldr r0, [r2, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r5, r0, #0x1F
	ldr r0, [r2, #0x08]
	bl sub_807FB64
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D92C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D8B8
	cmp r5, #0x00
	beq _0806D8A0
	ldr r0, [r4, #0x30]
	ldr r2, _0806D898 @ =0x0000411F
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D89C @ =0x0000411E
	b _0806D8CA
_0806D894: .4byte nullsub_15
_0806D898: .4byte 0x0000411F
_0806D89C: .4byte 0x0000411E
_0806D8A0:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D8B0 @ =0x00004117
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D8B4 @ =0x00004116
	b _0806D8CA
_0806D8B0: .4byte 0x00004117
_0806D8B4: .4byte 0x00004116
_0806D8B8:
	cmp r5, #0x00
	beq _0806D8E0
	ldr r0, [r4, #0x30]
	ldr r2, _0806D8D8 @ =0x00004123
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D8DC @ =0x00004122
_0806D8CA:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806D8F8
	.byte 0x00, 0x00
_0806D8D8: .4byte 0x00004123
_0806D8DC: .4byte 0x00004122
_0806D8E0:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D920 @ =0x0000411B
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D924 @ =0x0000411A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806D8F8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D900
	adds r1, #0xFF
_0806D900:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D90A
	adds r2, #0xFF
_0806D90A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D914
	adds r3, #0xFF
_0806D914:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D928 @ =0x00001F5B
	bl sub_80DF024
	b _0806D9D2
_0806D920: .4byte 0x0000411B
_0806D924: .4byte 0x0000411A
_0806D928: .4byte 0x00001F5B
_0806D92C:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D96C
	cmp r5, #0x00
	beq _0806D954
	ldr r0, [r4, #0x30]
	ldr r2, _0806D94C @ =0x00004121
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D950 @ =0x00004120
	b _0806D97E
	.byte 0x00, 0x00
_0806D94C: .4byte 0x00004121
_0806D950: .4byte 0x00004120
_0806D954:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D964 @ =0x00004119
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D968 @ =0x00004118
	b _0806D97E
_0806D964: .4byte 0x00004119
_0806D968: .4byte 0x00004118
_0806D96C:
	cmp r5, #0x00
	beq _0806D994
	ldr r0, [r4, #0x30]
	ldr r2, _0806D98C @ =0x00004125
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D990 @ =0x00004124
_0806D97E:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806D9AC
	.byte 0x00, 0x00
_0806D98C: .4byte 0x00004125
_0806D990: .4byte 0x00004124
_0806D994:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D9E8 @ =0x0000411D
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D9EC @ =0x0000411C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806D9AC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D9B4
	adds r1, #0xFF
_0806D9B4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D9BE
	adds r2, #0xFF
_0806D9BE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D9C8
	adds r3, #0xFF
_0806D9C8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D9F0 @ =0x00001F74
	bl sub_80DF024
_0806D9D2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _0806D9F4 @ =0x0806D9F9
_0806D9DE:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D9E8: .4byte 0x0000411D
_0806D9EC: .4byte 0x0000411C
_0806D9F0: .4byte 0x00001F74
_0806D9F4: .4byte sub_806D9F8
	thumb_func_start sub_806D9F8
sub_806D9F8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DADC
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x2C]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DA64
	ldr r2, _0806DA5C @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0806DA60 @ =0x00004113
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806DA94
	.byte 0x00, 0x00
_0806DA5C: .4byte 0x00004112
_0806DA60: .4byte 0x00004113
_0806DA64:
	ldr r2, _0806DAE4 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	ldr r2, _0806DAE8 @ =0x00004115
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806DA94:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806DAEC @ =0x0806E779
	str r0, [r4, #0x4C]
_0806DADC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DAE4: .4byte 0x00004114
_0806DAE8: .4byte 0x00004115
_0806DAEC: .4byte sub_806E778
	thumb_func_start sub_806DAF0
sub_806DAF0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DB78
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DB52
	adds r1, #0xFF
_0806DB52:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DB5C
	adds r2, #0xFF
_0806DB5C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DB66
	adds r3, #0xFF
_0806DB66:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806DB74 @ =0x00001F8D
	bl sub_80DF024
	b _0806DBB6
	.byte 0x00, 0x00
_0806DB74: .4byte 0x00001F8D
_0806DB78:
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DB98
	adds r1, #0xFF
_0806DB98:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DBA2
	adds r2, #0xFF
_0806DBA2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DBAC
	adds r3, #0xFF
_0806DBAC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806DBCC @ =0x00001F95
	bl sub_80DF024
_0806DBB6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	ldr r0, _0806DBD0 @ =0x0806E6BD
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806DBCC: .4byte 0x00001F95
_0806DBD0: .4byte sub_806E6BC
	thumb_func_start sub_806DBD4
sub_806DBD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806DC9C
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807FB64
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC20
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC18
	ldr r2, _0806DC14 @ =0x00004126
	b _0806DC36
	.byte 0x00, 0x00
_0806DC14: .4byte 0x00004126
_0806DC18:
	ldr r2, _0806DC1C @ =0x00004128
	b _0806DC36
_0806DC1C: .4byte 0x00004128
_0806DC20:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806DC34
	ldr r2, _0806DC30 @ =0x00004127
	b _0806DC36
	.byte 0x00, 0x00
_0806DC30: .4byte 0x00004127
_0806DC34:
	ldr r2, _0806DCA4 @ =0x00004129
_0806DC36:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x26
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x05
	adds r1, #0x22
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x60
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806DCA8 @ =0x0806E691
	str r0, [r4, #0x58]
	ldr r0, _0806DCAC @ =0x0806E665
	str r0, [r4, #0x60]
	ldr r0, _0806DCB0 @ =0x0806DCB5
	str r0, [r4, #0x4C]
_0806DC9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DCA4: .4byte 0x00004129
_0806DCA8: .4byte sub_806E690
_0806DCAC: .4byte sub_806E664
_0806DCB0: .4byte sub_806DCB4
	thumb_func_start sub_806DCB4
sub_806DCB4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, _0806DD3C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x33
	str r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r5, #0x18]
	movs r6, #0xC0
	lsls r6, r6, #0x06
	cmp r0, r6
	bgt _0806DD34
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x6C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0806DD08
	adds r1, #0xFF
_0806DD08:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0806DD12
	adds r2, #0xFF
_0806DD12:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0806DD1C
	adds r3, #0xFF
_0806DD1C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806DD40 @ =0x00001FC7
	bl sub_80DF024
	str r6, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806DD44 @ =0x0806DD49
	str r0, [r5, #0x4C]
_0806DD34:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806DD3C: .4byte 0xFFFFFD00
_0806DD40: .4byte 0x00001FC7
_0806DD44: .4byte sub_806DD48
	thumb_func_start sub_806DD48
sub_806DD48:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806DD8A
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806DD66
	adds r1, #0xFF
_0806DD66:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806DD70
	adds r2, #0xFF
_0806DD70:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806DD7A
	adds r3, #0xFF
_0806DD7A:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE14 @ =0x00001FDC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806DD8A:
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x4C]
	ldr r0, _0806DE1C @ =0x0806E791
	cmp r1, r0
	bne _0806DDC0
	ldr r0, [r2, #0x10]
	ldr r1, _0806DE18 @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r2, #0x10]
_0806DDC0:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806DDC8
	adds r1, #0xFF
_0806DDC8:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806DE0A
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	ldr r0, [r4, #0x30]
	ldr r3, [r0, #0x30]
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _0806DDEE
	adds r2, #0xFF
_0806DDEE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _0806DDF8
	adds r3, #0xFF
_0806DDF8:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806DE20 @ =0x00001FCF
	movs r1, #0x00
	bl sub_80DF024
	ldr r0, _0806DE24 @ =0x0806DE29
	str r0, [r4, #0x4C]
_0806DE0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806DE14: .4byte 0x00001FDC
_0806DE18: .4byte 0xFFFFFD00
_0806DE1C: .4byte nullsub_15
_0806DE20: .4byte 0x00001FCF
_0806DE24: .4byte sub_806DE28
	thumb_func_start sub_806DE28
sub_806DE28:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAE
	ldrb r1, [r5, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x9C
	adds r0, r0, r4
	mov r8, r0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x2C]
	ldr r1, [r2, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x88
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r3, #0x00]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _0806DE8A
	adds r0, #0xFF
_0806DE8A:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x14]
	cmp r0, #0x00
	bge _0806DE98
	adds r0, #0xFF
_0806DE98:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x18]
	cmp r0, #0x00
	bge _0806DEAA
	adds r0, #0xFF
_0806DEAA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x00]
	subs r6, r1, r0
	ldr r2, _0806DF24 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806DEFA
	movs r0, #0x02
_0806DEFA:
	negs r0, r0
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806DF28 @ =0x0806DF2D
	str r0, [r4, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806DF24: .4byte 0x03001038
_0806DF28: .4byte sub_806DF2C
	thumb_func_start sub_806DF2C
sub_806DF2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x2C]
	mov r8, r0
	adds r0, r7, #0x0
	adds r0, #0xA4
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	mov r1, r8
	str r0, [r1, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r6, r7, #0x0
	adds r6, #0x9C
	ldr r0, [r6, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	mov r0, r8
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r1, #0x00
	ldsh r2, [r4, r1]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	bge _0806DFCC
	b _0806E0F4
_0806DFCC:
	ldr r1, [r7, #0x2C]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	ble _0806DFD6
	b _0806E0F4
_0806DFD6:
	ldr r0, [r1, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x18]
	subs r4, #0x20
	ldr r0, [r4, #0x00]
	str r0, [r6, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	adds r0, r7, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, [r7, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	bne _0806E028
	ldr r2, _0806E024 @ =0x00004112
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E04C
_0806E024: .4byte 0x00004112
_0806E028:
	ldr r2, _0806E100 @ =0x00004114
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r7, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E04C:
	ldr r0, [r7, #0x08]
	movs r3, #0x00
	strh r3, [r0, #0x0C]
	movs r2, #0x96
	lsls r2, r2, #0x09
	str r2, [r7, #0x10]
	ldr r0, [r7, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r7, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r2, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r7, #0x30]
	ldr r0, [r7, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r2, [r7, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	subs r1, #0x0C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r3, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _0806E104 @ =0x0806E755
	str r0, [r7, #0x4C]
_0806E0F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E100: .4byte 0x00004114
_0806E104: .4byte sub_806E754
	thumb_func_start sub_806E108
sub_806E108:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r0, #0xA4
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r7, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r4, r0, #0x0
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	adds r4, r4, r0
	str r4, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r1, r7, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r7, #0x14]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r7, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0x10]
	ldr r0, [r7, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	blt _0806E1AE
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bgt _0806E1AE
	ldr r0, _0806E1B4 @ =0x0808750D
	str r0, [r7, #0x4C]
_0806E1AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806E1B4: .4byte sub_808750C
	thumb_func_start sub_806E1B8
sub_806E1B8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806E1CC
	adds r1, #0xFF
_0806E1CC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806E1D6
	adds r2, #0xFF
_0806E1D6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806E1E0
	adds r3, #0xFF
_0806E1E0:
	asrs r3, r3, #0x08
	subs r3, #0x30
	str r4, [sp, #0x000]
	ldr r0, _0806E234 @ =0x00001FCF
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	bl sub_807BC90
	ldr r1, [r4, #0x30]
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	mov r9, r0
	cmp r1, #0x00
	bne _0806E23C
	ldr r2, _0806E238 @ =0x00004112
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806E260
	.byte 0x00, 0x00
_0806E234: .4byte 0x00001FCF
_0806E238: .4byte 0x00004112
_0806E23C:
	ldr r2, _0806E378 @ =0x00004114
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806E260:
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x0C]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x18]
	ldr r1, _0806E37C @ =0xFFFFD000
	adds r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2AC
	mov r0, r8
	str r0, [r4, #0x18]
_0806E2AC:
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0806E2DA
	adds r0, #0xFF
_0806E2DA:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0806E2EA
	adds r0, #0xFF
_0806E2EA:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0806E2FA
	adds r0, #0xFF
_0806E2FA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806E380 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xA0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _0806E34A
	movs r0, #0x02
_0806E34A:
	negs r0, r0
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	strh r1, [r0, #0x00]
	ldr r0, _0806E384 @ =0x0806E109
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E378: .4byte 0x00004114
_0806E37C: .4byte 0xFFFFD000
_0806E380: .4byte 0x03001038
_0806E384: .4byte sub_806E108
	thumb_func_start sub_806E388
sub_806E388:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x05
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806E40C @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x99
	bl play_sfx_80195B4
	ldr r0, _0806E410 @ =0x0806E625
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E40C: .4byte 0x00000199
_0806E410: .4byte sub_806E624
	thumb_func_start sub_806E414
sub_806E414:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806E428
	b _0806E5AE
_0806E428:
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r7, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806E43C
	b _0806E5AE
_0806E43C:
	adds r0, r6, #0x0
	bl sub_807F47C
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E44E
	bl _call_via_r1
_0806E44E:
	ldr r1, [r6, #0x2C]
	ldr r0, _0806E5B8 @ =0x0806E791
	str r0, [r1, #0x4C]
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E470
	adds r0, #0xFF
_0806E470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E47E
	adds r0, #0xFF
_0806E47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E48C
	adds r0, #0xFF
_0806E48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF6
	lsls r0, r0, #0x05
	bl sub_80DF024
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4AA
	adds r0, #0xFF
_0806E4AA:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4B8
	adds r0, #0xFF
_0806E4B8:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4C6
	adds r0, #0xFF
_0806E4C6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _0806E5BC @ =0x00004111
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806E5C0 @ =0x0806E5D9
	str r0, [r5, #0x4C]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0806E5C4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	ldr r1, _0806E5C8 @ =0x0000173E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806E5CC @ =0x03000E3C
	str r0, [r1, #0x00]
	str r7, [r5, #0x60]
	adds r2, r6, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806E5D0 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x98
	bl play_sfx_80195B4
	ldr r0, _0806E5D4 @ =0x0806E5F5
	str r0, [r6, #0x4C]
_0806E5AE:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E5B8: .4byte nullsub_15
_0806E5BC: .4byte 0x00004111
_0806E5C0: .4byte sub_806E5D8
_0806E5C4: .4byte sub_8087540
_0806E5C8: .4byte 0x0000173E
_0806E5CC: .4byte 0x03000E3C
_0806E5D0: .4byte 0x00000199
_0806E5D4: .4byte sub_806E5F4
	thumb_func_start sub_806E5D8
sub_806E5D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E5EE
	adds r0, r2, #0x0
	bl sub_807C298
_0806E5EE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_806E5F4
sub_806E5F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E61A
	ldr r0, [r4, #0x2C]
	movs r1, #0x00
	str r1, [r0, #0x4C]
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806E620 @ =0x0808750D
	str r0, [r4, #0x4C]
_0806E61A:
	pop {r4}
	pop {r0}
	bx r0
_0806E620: .4byte sub_808750C
	thumb_func_start sub_806E624
sub_806E624:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E658
	movs r0, #0x99
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806E660 @ =0x0806E8E9
	str r0, [r4, #0x4C]
_0806E658:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E660: .4byte sub_806E8E8
	thumb_func_start sub_806E664
sub_806E664:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _0806E686
	ldr r0, _0806E68C @ =0x0806E1B9
	str r0, [r4, #0x4C]
	movs r0, #0x6C
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x40
	bl play_sfx_80195B4
	movs r0, #0x00
_0806E686:
	pop {r4}
	pop {r1}
	bx r1
_0806E68C: .4byte sub_806E1B8
	thumb_func_start sub_806E690
sub_806E690:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E6A0
	bl _call_via_r1
_0806E6A0:
	ldr r0, [r4, #0x2C]
	ldr r1, _0806E6B4 @ =0x0806E791
	str r1, [r0, #0x4C]
	ldr r0, _0806E6B8 @ =0x0806DD49
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806E6B4: .4byte nullsub_15
_0806E6B8: .4byte sub_806DD48
	thumb_func_start sub_806E6BC
sub_806E6BC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806E72E
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	movs r2, #0x80
	lsls r2, r2, #0x08
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806E734 @ =0x0806E91D
	str r0, [r4, #0x4C]
_0806E72E:
	pop {r4}
	pop {r0}
	bx r0
_0806E734: .4byte sub_806E91C
	.byte 0x02, 0x1C, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20, 0x08, 0x60, 0x28, 0x39, 0x00, 0x20, 0x08, 0x60
	.byte 0x01, 0x48, 0xD0, 0x64, 0x00, 0x20, 0x70, 0x47, 0x71, 0xD7, 0x06, 0x08
	thumb_func_start sub_806E754
sub_806E754:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r1, #0x30]
	ldr r0, [r1, #0x10]
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0x14]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806E774
	str r0, [r1, #0x4C]
	str r0, [r2, #0x4C]
_0806E774:
	pop {r0}
	bx r0
	thumb_func_start sub_806E778
sub_806E778:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0806E78A
	str r1, [r2, #0x4C]
	ldr r0, [r2, #0x30]
	str r1, [r0, #0x4C]
_0806E78A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
