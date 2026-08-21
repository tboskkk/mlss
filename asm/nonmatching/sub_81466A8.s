	.syntax unified
	.text

	thumb_func_start sub_81466A8
sub_81466A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r10, r2
	adds r0, r7, #0x0
	adds r0, #0x58
	str r0, [sp, #0x00C]
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081466E6
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _081466F2
_081466E6:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081466F2:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r2, _0814673C @ =0x03001038
	ldr r0, _08146740 @ =0x0819832C
	ldr r1, _08146744 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, #0x0
	bl sub_8146DC8
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	cmp r6, #0x01
	beq _08146796
	cmp r6, #0x01
	bgt _08146748
	cmp r6, #0x00
	beq _08146752
	b _08146864
_0814673C: .4byte 0x03001038
_08146740: .4byte 0x0819832C
_08146744: .4byte 0x08198220
_08146748:
	cmp r6, #0x02
	beq _081467D4
	cmp r6, #0x03
	beq _0814681A
	b _08146864
_08146752:
	ldr r0, [r4, #0x10]
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	ldr r1, _08146778 @ =0xFFFFF000
	cmp r0, r1
	blt _08146780
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814677C @ =0x08146005
	mov r2, r10
	str r0, [r2, #0x00]
	b _08146AE2
	.byte 0x00, 0x00
_08146778: .4byte 0xFFFFF000
_0814677C: .4byte sub_8146004
_08146780:
	ldr r1, [r7, #0x0C]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	b _08146812
_08146796:
	ldr r0, [r4, #0x0C]
	ldr r2, [r7, #0x0C]
	subs r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _081467BC
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _081467B8 @ =0x08146005
	b _08146ADE
_081467B8: .4byte sub_8146004
_081467BC:
	movs r0, #0xA0
	lsls r0, r0, #0x04
	adds r1, r2, r0
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	str r6, [sp, #0x000]
	b _0814680E
_081467D4:
	ldr r0, [r4, #0x10]
	ldr r2, [r7, #0x10]
	subs r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x05
	cmp r0, r1
	bgt _081467FC
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _081467F8 @ =0x08146005
	b _08146ADE
	.byte 0x00, 0x00
_081467F8: .4byte sub_8146004
_081467FC:
	ldr r1, [r7, #0x0C]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
_0814680E:
	movs r0, #0x00
	str r0, [sp, #0x004]
_08146812:
	adds r0, r5, #0x0
	bl sub_8047F60
	b _08146864
_0814681A:
	ldr r0, [r4, #0x0C]
	ldr r2, [r7, #0x0C]
	subs r0, r0, r2
	ldr r1, _0814683C @ =0xFFFFF000
	cmp r0, r1
	blt _08146844
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _08146840 @ =0x08146005
	b _08146ADE
	.byte 0x00, 0x00
_0814683C: .4byte 0xFFFFF000
_08146840: .4byte sub_8146004
_08146844:
	ldr r0, _081468F8 @ =0xFFFFF600
	adds r1, r2, r0
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
_08146864:
	adds r1, r6, #0x0
	adds r1, #0x08
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	mov r9, r1
	mov r1, r9
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [sp, #0x00C]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r3, [r0, #0x1A]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r4, sp
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	cmp r6, #0x00
	bne _08146938
	ldr r2, _081468FC @ =0x00000242
	adds r2, r2, r5
	mov r8, r2
	movs r0, #0x00
	ldsh r1, [r2, r0]
	cmp r1, #0x00
	bge _081468BC
	negs r1, r1
_081468BC:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081468CC
	negs r0, r0
_081468CC:
	cmp r1, r0
	blt _08146900
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r6, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	mov r2, r8
	movs r0, #0x00
	ldsh r1, [r2, r0]
	lsrs r1, r1, #0x1F
	mov r2, r9
	ands r1, r2
	b _08146A52
	.byte 0x00, 0x00
_081468F8: .4byte 0xFFFFF600
_081468FC: .4byte 0x00000242
_08146900:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r6, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x10
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _08146934 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0x06
	strh r1, [r0, #0x00]
	adds r2, #0x02
	b _08146A98
	.byte 0x00, 0x00
_08146934: .4byte 0x0000027A
_08146938:
	cmp r6, #0x01
	bne _08146988
	ldr r1, _08146984 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _0814694A
	negs r1, r1
_0814694A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _0814695A
	negs r0, r0
_0814695A:
	cmp r1, r0
	ble _08146960
	b _08146A68
_08146960:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	mvns r1, r1
	b _08146A4C
	.byte 0x00, 0x00
_08146984: .4byte 0x00000242
_08146988:
	cmp r6, #0x02
	bne _08146A0C
	ldr r0, _081469D0 @ =0x00000242
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r1, [r6, r2]
	cmp r1, #0x00
	bge _0814699A
	negs r1, r1
_0814699A:
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _081469AA
	negs r0, r0
_081469AA:
	cmp r1, r0
	blt _081469D4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	mvns r1, r1
	b _08146A4C
_081469D0: .4byte 0x00000242
_081469D4:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x10
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	ldr r1, _08146A08 @ =0x0000027A
	adds r0, r5, r1
	movs r1, #0x06
	strh r1, [r0, #0x00]
	adds r2, #0x02
	b _08146A98
_08146A08: .4byte 0x0000027A
_08146A0C:
	ldr r1, _08146A64 @ =0x00000242
	adds r0, r5, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	bge _08146A1A
	negs r1, r1
_08146A1A:
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r6, r5, r0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	bge _08146A2A
	negs r0, r0
_08146A2A:
	cmp r1, r0
	bgt _08146A68
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_801E150
	ldr r3, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r6, r2]
_08146A4C:
	lsrs r1, r1, #0x1F
	mov r0, r9
	ands r1, r0
_08146A52:
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08146AA8
	.byte 0x00, 0x00
_08146A64: .4byte 0x00000242
_08146A68:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_801E150
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r0, r5, r2
	movs r1, #0x06
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
_08146A98:
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	subs r2, #0x06
	adds r0, r5, r2
	strh r1, [r0, #0x00]
_08146AA8:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	ldr r2, [sp, #0x00C]
	movs r0, #0xBD
	lsls r0, r0, #0x01
	adds r1, r2, r0
	movs r0, #0x0F
	strh r0, [r1, #0x00]
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146AF4 @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08146AF8 @ =0x08146AFD
_08146ADE:
	mov r1, r10
	str r0, [r1, #0x00]
_08146AE2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146AF4: .4byte 0x0000020D
_08146AF8: .4byte sub_8146AFC
