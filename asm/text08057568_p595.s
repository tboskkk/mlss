	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814396C
sub_814396C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081439B0
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _081439BC
_081439B0:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r6, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081439BC:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x30]
	mov r0, r9
	lsls r4, r0, #0x01
	adds r0, r4, r7
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r2, r8
	bl sub_813AA5C
	ldr r1, _08143A40 @ =0x00000242
	adds r3, r5, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	adds r6, r4, #0x0
	cmp r0, #0x00
	beq _08143A44
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08143A48
	.byte 0x00, 0x00
_08143A40: .4byte 0x00000242
_08143A44:
	movs r3, #0x01
	negs r3, r3
_08143A48:
	adds r4, r5, #0x0
	adds r4, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r2, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x03
	orrs r1, r0
	strb r1, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r3, #0x00]
	adds r1, r6, r7
	ldrh r1, [r1, #0x08]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r2, _08143ACC @ =0x03001038
	ldr r0, _08143AD0 @ =0x0819832C
	ldr r1, _08143AD4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _08143AD8 @ =0x08143ADD
	ldr r3, [sp, #0x018]
	str r0, [r3, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08143ACC: .4byte 0x03001038
_08143AD0: .4byte 0x0819832C
_08143AD4: .4byte 0x08198220
_08143AD8: .4byte sub_8143ADC
	thumb_func_start sub_8143ADC
sub_8143ADC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	movs r3, #0xEA
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08143B98
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143B8C
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r4, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r1, #0x0A
	ldsh r0, [r0, r1]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143B8C
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r2, r5, r3
	ldrh r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r3, #0x02
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r6
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	adds r3, #0x42
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08143B88 @ =0x08143BE9
	mov r1, r9
	str r0, [r1, #0x00]
	b _08143BD0
_08143B88: .4byte sub_8143BE8
_08143B8C:
	ldrh r1, [r6, #0x1A]
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r8
	strh r1, [r0, #0x00]
	b _08143B9C
_08143B98:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08143B9C:
	adds r0, r5, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143BD0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	mov r1, r8
	adds r1, #0xD0
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r8
	strh r0, [r1, #0x00]
	ldr r0, _08143BE0 @ =0x0813B1E9
	mov r3, r9
	str r0, [r3, #0x00]
	ldr r0, _08143BE4 @ =0x0814396D
	str r0, [r3, #0x0C]
_08143BD0:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143BE0: .4byte sub_813B1E8
_08143BE4: .4byte sub_814396C
	thumb_func_start sub_8143BE8
sub_8143BE8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	adds r0, r6, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08143C34
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x28]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08143C2C @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _08143C30 @ =0x0814396D
	str r0, [r5, #0x0C]
	b _08143CF8
	.byte 0x00, 0x00
_08143C2C: .4byte sub_813B1E8
_08143C30: .4byte sub_814396C
_08143C34:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08143C64
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _08143C60 @ =0x08143D0D
	str r0, [r5, #0x00]
	b _08143CF8
_08143C60: .4byte sub_8143D0C
_08143C64:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r3, [r0, #0x28]
	mov r6, sp
	ldr r2, _08143CA8 @ =0x03001038
	ldr r0, _08143CAC @ =0x0819832C
	ldr r1, _08143CB0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08143CB4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08143CB8
_08143CA8: .4byte 0x03001038
_08143CAC: .4byte 0x0819832C
_08143CB0: .4byte 0x08198220
_08143CB4:
	movs r1, #0x01
	negs r1, r1
_08143CB8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r5
	strb r0, [r6, #0x00]
	ldr r2, _08143D00 @ =0x03001038
	ldr r0, _08143D04 @ =0x0819832C
	ldr r1, _08143D08 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	mov r1, sp
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	beq _08143CF8
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8047154
_08143CF8:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08143D00: .4byte 0x03001038
_08143D04: .4byte 0x0819832C
_08143D08: .4byte 0x08198220
	thumb_func_start sub_8143D0C
sub_8143D0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	str r2, [sp, #0x010]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r4, [r0, #0x00]
	ldr r0, _08143D90 @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x05
	adds r3, r3, r0
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x000]
	movs r5, #0x00
	str r5, [sp, #0x004]
	adds r0, r4, #0x0
	bl sub_8047F60
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143D94
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	ldr r2, [sp, #0x010]
	bl sub_814396C
	b _08143E7A
_08143D90: .4byte 0x0000020D
_08143D94:
	adds r0, r6, #0x0
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143DA8
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	b _08143DB4
_08143DA8:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143DB4:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r7, #0x0C]
	subs r4, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r7, #0x10]
	subs r3, r1, r0
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r7, r0
	subs r0, #0xD0
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x36]
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	cmp r4, #0x00
	bge _08143DE2
	negs r1, r4
_08143DE2:
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08143DEA
	negs r0, r3
_08143DEA:
	cmp r1, r0
	ble _08143E10
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r4, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08143E30
_08143E10:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r3, #0x00
	blt _08143E20
	movs r1, #0x05
_08143E20:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143E30:
	adds r0, r7, #0x0
	bl sub_8047928
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r3, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, _08143E8C @ =0x08144239
	ldr r1, [sp, #0x010]
	str r0, [r1, #0x00]
_08143E7A:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08143E8C: .4byte sub_8144238
	thumb_func_start sub_8143E90
sub_8143E90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	str r2, [sp, #0x00C]
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r5, #0xD1
	lsls r5, r5, #0x02
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x008
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08143ED0
	add r0, sp, #0x008
	ldrb r0, [r0, #0x00]
	b _08143EDC
_08143ED0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08143EDC:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r3, [r6, #0x0C]
	subs r0, r1, r3
	adds r1, r1, r0
	mov r12, r1
	ldr r1, [r2, #0x10]
	ldr r2, [r6, #0x10]
	subs r0, r1, r2
	adds r7, r1, r0
	movs r5, #0x80
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r1, [r0, #0x00]
	movs r5, #0x04
	ldsh r0, [r1, r5]
	adds r5, r3, #0x0
	cmp r0, #0x55
	bne _08143F1A
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xD8
	lsls r1, r1, #0x06
	b _08143F20
_08143F1A:
	ldr r0, [r1, #0x14]
	movs r1, #0xC0
	lsls r1, r1, #0x05
_08143F20:
	adds r3, r0, r1
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x2E]
	mov r1, r12
	subs r5, r1, r5
	subs r4, r7, r2
	str r0, [sp, #0x000]
	add r1, sp, #0x004
	movs r0, #0x00
	strb r0, [r1, #0x00]
	mov r0, r8
	mov r1, r12
	adds r2, r7, #0x0
	bl sub_813A44C
	adds r1, r5, #0x0
	cmp r5, #0x00
	bge _08143F50
	negs r1, r5
_08143F50:
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08143F58
	negs r0, r4
_08143F58:
	cmp r1, r0
	ble _08143F7E
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r1, #0x04
	strb r1, [r0, #0x00]
	ldr r3, [r2, #0x00]
	lsrs r1, r5, #0x1F
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	b _08143F9E
_08143F7E:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldr r0, [r2, #0x00]
	movs r1, #0x03
	cmp r4, #0x00
	blt _08143F8E
	movs r1, #0x05
_08143F8E:
	adds r0, #0x21
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
_08143F9E:
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r5, r6, r4
	ldr r0, [r5, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r2, #0x01
	movs r3, #0x00
	bl sub_801E150
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	add r4, r8
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r0, #0x03
	adds r1, #0x21
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	ldr r0, [r5, #0x00]
	ldrb r0, [r0, #0x11]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	mov r0, r8
	bl sub_8047928
	mov r0, r8
	movs r1, #0x01
	bl sub_804776C
	mov r0, r8
	movs r1, #0x01
	bl sub_804761C
	ldr r0, _0814401C @ =0x08144021
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814401C: .4byte sub_8144020
	thumb_func_start sub_8144020
sub_8144020:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	mov r9, r0
	mov r8, r1
	str r2, [sp, #0x000]
	mov r0, r8
	adds r0, #0x58
	str r0, [sp, #0x004]
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r7, [r0, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814406C
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0814406C:
	ldr r1, _08144154 @ =0x00000242
	adds r0, r7, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x0C]
	adds r0, r0, r1
	str r0, [r7, #0x0C]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r7, r3
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r7, #0x10]
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r3, #0x98
	adds r2, r7, r3
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	movs r0, #0x92
	lsls r0, r0, #0x02
	add r0, r8
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x00C]
	ldr r1, _08144158 @ =0x00000117
	add r1, r9
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814417C
	movs r0, #0x8B
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r0, [r0, #0x00]
	mov r12, r0
	ldrb r0, [r1, #0x00]
	add r0, r12
	cmp r12, r0
	bge _0814417C
	ldr r2, _0814415C @ =0x00000272
	mov r10, r2
	subs r3, #0x68
	adds r3, r7, r3
	str r3, [sp, #0x014]
	mov r0, r12
	str r0, [sp, #0x010]
_081440D4:
	mov r1, r12
	lsls r0, r1, #0x02
	add r0, r9
	ldr r4, [r0, #0x28]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08144164
	mov r3, r10
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	lsrs r6, r0, #0x01
	ldr r5, [r7, #0x0C]
	adds r1, r5, r6
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	lsrs r3, r0, #0x01
	ldr r2, [r4, #0x0C]
	subs r0, r2, r3
	cmp r1, r0
	blt _08144164
	subs r1, r5, r6
	adds r0, r2, r3
	cmp r1, r0
	bgt _08144164
	ldr r1, _08144160 @ =0x00000276
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ldr r2, [r4, #0x10]
	subs r0, r2, r0
	ldr r1, [r7, #0x10]
	cmp r1, r0
	blt _08144164
	ldr r3, _08144160 @ =0x00000276
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	cmp r0, r2
	bgt _08144164
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r3, r1, r0
	ldr r0, [sp, #0x014]
	ldrh r1, [r0, #0x00]
	adds r1, r3, r1
	ldr r2, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r2, r2, r0
	cmp r1, r2
	blt _08144164
	movs r1, #0x9D
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	cmp r3, r0
	bgt _08144164
	movs r2, #0x01
	str r2, [sp, #0x00C]
	b _0814417C
_08144154: .4byte 0x00000242
_08144158: .4byte 0x00000117
_0814415C: .4byte 0x00000272
_08144160: .4byte 0x00000276
_08144164:
	mov r0, r12
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	ldr r0, _0814421C @ =0x00000117
	add r0, r9
	ldrb r0, [r0, #0x00]
	ldr r3, [sp, #0x010]
	adds r0, r3, r0
	cmp r12, r0
	blt _081440D4
_0814417C:
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, _08144220 @ =0x02000001
	ands r0, r1
	cmp r0, #0x00
	beq _081441C8
	ldr r0, [r7, #0x24]
	movs r1, #0xFC
	lsls r1, r1, #0x09
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	ldr r2, _08144224 @ =0x00000216
	adds r0, r7, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	adds r0, r7, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	adds r0, r7, #0x0
	adds r0, #0x4C
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	bne _081441C8
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	beq _0814420A
_081441C8:
	ldr r2, _08144228 @ =0x0000020D
	add r2, r8
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_804776C
	ldr r1, [sp, #0x004]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	ldr r3, [sp, #0x008]
	adds r0, r0, r3
	adds r0, #0x3E
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814422C @ =0x0813B1E9
	ldr r3, [sp, #0x000]
	str r0, [r3, #0x00]
	ldr r0, _08144230 @ =0x0813B361
	str r0, [r3, #0x0C]
	ldr r0, _08144234 @ =0x0814396D
	str r0, [r3, #0x04]
_0814420A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814421C: .4byte 0x00000117
_08144220: .4byte 0x02000001
_08144224: .4byte 0x00000216
_08144228: .4byte 0x0000020D
_0814422C: .4byte sub_813B1E8
_08144230: .4byte sub_813B360
_08144234: .4byte sub_814396C
