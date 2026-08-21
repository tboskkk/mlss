	.syntax unified
	.text

	thumb_func_start sub_811CCD0
sub_811CCD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x084
	str r0, [sp, #0x040]
	adds r7, r1, #0x0
	ldr r4, _0811CE0C @ =0x03000FF8
	ldr r1, [r4, #0x00]
	ldrb r0, [r1, #0x04]
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r2, r3, #0x0
	cmp r0, #0x00
	beq _0811CCF6
	movs r0, #0x9C
	lsls r0, r0, #0x02
	adds r2, r0, #0x0
_0811CCF6:
	add r0, sp, #0x020
	strh r2, [r0, #0x00]
	ldrb r1, [r1, #0x0C]
	movs r3, #0x88
	lsls r3, r3, #0x01
	adds r2, r3, #0x0
	cmp r1, #0x00
	beq _0811CD0C
	movs r0, #0x9C
	lsls r0, r0, #0x02
	adds r2, r0, #0x0
_0811CD0C:
	mov r0, sp
	adds r0, #0x22
	strh r2, [r0, #0x00]
	add r0, sp, #0x01C
	add r1, sp, #0x020
	movs r2, #0x04
	bl memcpy
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x04]
	movs r3, #0x06
	cmp r0, #0x00
	beq _0811CD28
	movs r3, #0x07
_0811CD28:
	add r1, sp, #0x024
	strb r3, [r1, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r2, #0x06
	cmp r0, #0x00
	beq _0811CD36
	movs r2, #0x07
_0811CD36:
	mov r0, sp
	adds r0, #0x25
	strb r2, [r0, #0x00]
	add r0, sp, #0x020
	movs r2, #0x02
	bl memcpy
	ldr r1, [sp, #0x040]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	mov r8, r1
	ldrb r0, [r1, #0x00]
	ldr r3, [sp, #0x040]
	ldr r4, _0811CE10 @ =0x00000191
	adds r3, r3, r4
	mov r9, r3
	add r0, r9
	ldrb r0, [r0, #0x00]
	ldr r1, [sp, #0x040]
	adds r1, #0x8C
	str r1, [sp, #0x070]
	mov r2, sp
	adds r2, #0x28
	str r2, [sp, #0x074]
	mov r3, sp
	adds r3, #0x34
	str r3, [sp, #0x058]
	mov r4, sp
	adds r4, #0x36
	str r4, [sp, #0x05C]
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x060]
	adds r2, #0x12
	str r2, [sp, #0x064]
	adds r3, #0x08
	str r3, [sp, #0x068]
	adds r4, #0x08
	str r4, [sp, #0x06C]
	cmp r0, #0x06
	bls _0811CDCC
	movs r0, #0x00
	movs r4, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r6, #0x67
	str r6, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r5, #0x02
	str r5, [sp, #0x010]
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x7C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r0, #0x01
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r6, [sp, #0x008]
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r4, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x7C
	movs r2, #0x49
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811CDCC:
	mov r1, r8
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _0811CEBC
	adds r1, r0, #0x0
	ldr r2, [sp, #0x040]
	ldr r3, _0811CE14 @ =0x0000018B
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	movs r2, #0x7F
	ands r2, r0
	ldr r4, [sp, #0x040]
	adds r3, #0x03
	adds r0, r4, r3
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
	subs r4, r2, r3
	cmp r4, #0x00
	bge _0811CDFE
	mov r4, r9
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	adds r0, r0, r2
	subs r4, r0, r3
_0811CDFE:
	movs r6, #0x00
	ldr r0, [sp, #0x040]
	movs r1, #0xCA
	lsls r1, r1, #0x01
	adds r5, r0, r1
	mov r8, r6
	b _0811CE96
_0811CE0C: .4byte 0x03000FF8
_0811CE10: .4byte 0x00000191
_0811CE14: .4byte 0x0000018B
_0811CE18:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0811CE26
	ldr r0, [sp, #0x040]
	adds r0, #0xDA
	adds r0, r0, r4
	b _0811CE2A
_0811CE26:
	ldr r2, [sp, #0x070]
	adds r0, r2, r4
_0811CE2A:
	ldrb r1, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	beq _0811CE3C
	ldr r3, _0811CE38 @ =0x000001B5
	adds r1, r1, r3
	b _0811CE4E
_0811CE38: .4byte 0x000001B5
_0811CE3C:
	ldr r0, _0811CEB0 @ =0x083BBDD0
	lsls r1, r1, #0x04
	adds r1, r1, r0
	movs r2, #0xD6
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrb r1, [r1, #0x02]
	adds r0, r0, r1
	adds r1, r0, #0x0
_0811CE4E:
	movs r0, #0x0B
	adds r2, r6, #0x0
	muls r2, r0
	adds r2, #0x09
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r3, r8
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	movs r0, #0x02
	str r0, [sp, #0x00C]
	str r0, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x46
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	adds r4, #0x01
	ldr r1, [sp, #0x040]
	ldr r2, _0811CEB4 @ =0x00000191
	adds r0, r1, r2
	ldrb r3, [r5, #0x00]
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	blt _0811CE94
	movs r4, #0x00
_0811CE94:
	adds r6, #0x01
_0811CE96:
	ldr r1, [sp, #0x040]
	ldr r2, _0811CEB4 @ =0x00000191
	adds r0, r1, r2
	ldrb r3, [r5, #0x00]
	adds r1, r0, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x05
	bhi _0811CEB8
	ldrb r1, [r1, #0x00]
	cmp r6, r1
	blt _0811CE18
	b _0811CEBC
	.byte 0x00, 0x00
_0811CEB0: .4byte 0x083BBDD0
_0811CEB4: .4byte 0x00000191
_0811CEB8:
	cmp r6, #0x05
	ble _0811CE18
_0811CEBC:
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r4, [sp, #0x040]
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x14
	movs r4, #0x88
	lsls r4, r4, #0x12
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	movs r0, #0x01
	str r0, [sp, #0x00C]
	str r2, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	movs r1, #0x20
	movs r2, #0x04
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r0, #0x00
	mov r8, r0
	movs r5, #0x00
	movs r6, #0x01
	mov r9, r5
_0811CEFC:
	ldr r1, [sp, #0x040]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	mov r10, r1
	ldrb r0, [r1, #0x00]
	add r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bls _0811CF1A
	subs r0, #0x03
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_0811CF1A:
	movs r4, #0x20
	mov r3, r9
	subs r4, r4, r3
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	lsls r0, r0, #0x12
	movs r1, #0x94
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r2, #0x02
	str r2, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x30
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	str r5, [sp, #0x000]
	str r6, [sp, #0x004]
	mov r3, r8
	lsls r1, r3, #0x02
	movs r2, #0xA9
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x40
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r1, #0x18
	mov r3, r9
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r0, #0x70
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r2, #0x28
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r0, #0x18
	add r9, r0
	movs r1, #0x01
	add r8, r1
	mov r2, r8
	cmp r2, #0x01
	ble _0811CEFC
	movs r3, #0x00
	str r3, [sp, #0x044]
	mov r4, r10
	str r4, [sp, #0x048]
	ldr r1, _0811D0C8 @ =0x0000018B
	ldr r0, [sp, #0x040]
	adds r1, r0, r1
	str r1, [sp, #0x04C]
	mov r2, sp
	adds r2, #0x1C
	str r2, [sp, #0x078]
	str r3, [sp, #0x07C]
	movs r4, #0x00
	str r4, [sp, #0x080]
	ldr r0, [sp, #0x074]
	str r0, [sp, #0x050]
	ldr r1, [sp, #0x058]
	str r1, [sp, #0x054]
_0811CFD2:
	ldr r2, [sp, #0x048]
	ldrb r0, [r2, #0x00]
	ldr r3, [sp, #0x04C]
	adds r0, r3, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	ldr r4, [sp, #0x070]
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	ldr r1, _0811D0CC @ =0x083BBDD0
	adds r0, r0, r1
	mov r10, r0
	ldr r2, _0811D0D0 @ =0x03000FF4
	ldr r1, [r2, #0x00]
	ldr r3, [sp, #0x080]
	adds r1, r1, r3
	ldrh r0, [r1, #0x10]
	ldr r4, [sp, #0x054]
	strh r0, [r4, #0x00]
	ldrh r0, [r1, #0x20]
	ldr r2, [sp, #0x05C]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x28]
	ldr r3, [sp, #0x060]
	strh r0, [r3, #0x00]
	ldrh r0, [r1, #0x16]
	ldr r4, [sp, #0x064]
	strh r0, [r4, #0x00]
	ldrh r0, [r1, #0x1C]
	ldr r2, [sp, #0x068]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x24]
	ldr r3, [sp, #0x06C]
	strh r0, [r3, #0x00]
	ldr r0, [sp, #0x050]
	ldr r1, [sp, #0x054]
	movs r2, #0x0C
	bl memcpy
	ldr r0, [sp, #0x054]
	ldr r1, _0811D0D4 @ =0x08202F20
	movs r2, #0x0C
	bl memcpy
	ldr r4, [sp, #0x048]
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0811D038
	b _0811D1E8
_0811D038:
	ldr r1, [sp, #0x04C]
	adds r0, r1, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	ldr r2, [sp, #0x070]
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	ldr r3, _0811D0CC @ =0x083BBDD0
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bls _0811D11E
	cmp r0, #0x09
	bhi _0811D11E
	mov r0, r10
	ldrb r4, [r0, #0x00]
	subs r4, #0x04
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x17
	ldr r1, [sp, #0x050]
	adds r5, r1, r4
	ldrh r1, [r5, #0x00]
	movs r3, #0xA8
	ldr r2, [sp, #0x07C]
	subs r3, r3, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x6C
	mov r8, r0
	str r0, [sp, #0x000]
	movs r2, #0x03
	mov r9, r2
	str r2, [sp, #0x004]
	movs r6, #0x01
	negs r6, r6
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x11
	adds r2, r7, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r3, [sp, #0x054]
	adds r2, r3, r4
	ldrh r0, [r5, #0x00]
	ldrh r4, [r2, #0x00]
	cmp r0, r4
	bls _0811D09E
	b _0811D2DE
_0811D09E:
	adds r1, r0, #0x0
	mov r3, r10
	ldrh r0, [r3, #0x08]
	adds r4, r1, r0
	ldrh r1, [r2, #0x00]
	cmp r4, r1
	blt _0811D0D8
	movs r3, #0xC8
	ldr r4, [sp, #0x07C]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r8
	str r0, [sp, #0x000]
	mov r2, r9
	str r2, [sp, #0x004]
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x00
	b _0811D0F2
	.byte 0x00, 0x00
_0811D0C8: .4byte 0x0000018B
_0811D0CC: .4byte 0x083BBDD0
_0811D0D0: .4byte 0x03000FF4
_0811D0D4: .4byte 0x08202F20
_0811D0D8:
	movs r3, #0xC8
	ldr r0, [sp, #0x07C]
	subs r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, r8
	str r1, [sp, #0x000]
	mov r2, r9
	str r2, [sp, #0x004]
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x00
	adds r1, r4, #0x0
_0811D0F2:
	adds r2, r7, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r1, #0xC2
	ldr r3, [sp, #0x07C]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x00
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r0, #0x4C
	str r0, [sp, #0x008]
	movs r0, #0x01
	str r0, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r4, [sp, #0x014]
	str r4, [sp, #0x018]
	adds r0, r7, #0x0
	movs r2, #0x74
	b _0811D2D6
_0811D11E:
	ldr r1, [sp, #0x040]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0811D1E8
	adds r0, r5, #0x0
	ldr r3, [sp, #0x04C]
	adds r0, r3, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x7F
	ands r0, r1
	ldr r4, [sp, #0x070]
	adds r0, r4, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x04
	ldr r1, _0811D1E0 @ =0x083BBDD0
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0A
	bne _0811D1E8
	ldr r2, [sp, #0x040]
	ldr r3, _0811D1E4 @ =0x00000199
	adds r4, r2, r3
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r1, [sp, #0x050]
	adds r0, r1, r0
	ldrh r1, [r0, #0x00]
	movs r3, #0xA8
	ldr r2, [sp, #0x07C]
	subs r3, r3, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x6C
	mov r9, r0
	str r0, [sp, #0x000]
	movs r2, #0x03
	mov r8, r2
	str r2, [sp, #0x004]
	movs r6, #0x01
	negs r6, r6
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x11
	adds r2, r7, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x050]
	adds r2, r3, r0
	ldr r4, [sp, #0x058]
	adds r0, r4, r0
	ldrh r1, [r2, #0x00]
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	bne _0811D198
	b _0811D2DE
_0811D198:
	mov r2, r10
	ldrh r0, [r2, #0x08]
	adds r1, r1, r0
	movs r3, #0xC8
	ldr r4, [sp, #0x07C]
	subs r3, r3, r4
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r0, r9
	str r0, [sp, #0x000]
	mov r2, r8
	str r2, [sp, #0x004]
	str r6, [sp, #0x008]
	str r6, [sp, #0x00C]
	movs r0, #0x00
	adds r2, r7, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r1, #0xC2
	subs r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x4C
	str r0, [sp, #0x008]
	movs r0, #0x01
	str r0, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r5, [sp, #0x014]
	str r5, [sp, #0x018]
	adds r0, r7, #0x0
	movs r2, #0x74
	b _0811D2D6
	.byte 0x00, 0x00
_0811D1E0: .4byte 0x083BBDD0
_0811D1E4: .4byte 0x00000199
_0811D1E8:
	ldr r3, _0811D378 @ =0x03000FF4
	ldr r0, [r3, #0x00]
	ldr r4, [sp, #0x080]
	adds r0, r0, r4
	ldrh r1, [r0, #0x0E]
	movs r6, #0xA8
	ldr r0, [sp, #0x07C]
	subs r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	movs r4, #0x64
	str r4, [sp, #0x000]
	movs r2, #0x03
	mov r10, r2
	str r2, [sp, #0x004]
	movs r3, #0x01
	negs r3, r3
	mov r8, r3
	str r3, [sp, #0x008]
	str r3, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r1, _0811D378 @ =0x03000FF4
	ldr r0, [r1, #0x00]
	ldr r2, [sp, #0x080]
	adds r0, r0, r2
	ldrh r1, [r0, #0x12]
	movs r5, #0xC8
	ldr r3, [sp, #0x07C]
	subs r5, r5, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r4, [sp, #0x000]
	mov r4, r10
	str r4, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x01
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r4, #0xC2
	ldr r1, [sp, #0x07C]
	subs r4, r4, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x00
	str r2, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r3, #0x49
	str r3, [sp, #0x008]
	movs r0, #0x01
	str r0, [sp, #0x00C]
	str r2, [sp, #0x010]
	str r2, [sp, #0x014]
	str r2, [sp, #0x018]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x6C
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r1, _0811D378 @ =0x03000FF4
	ldr r0, [r1, #0x00]
	ldr r2, [sp, #0x080]
	adds r0, r0, r2
	ldrh r1, [r0, #0x14]
	movs r3, #0x74
	mov r9, r3
	str r3, [sp, #0x000]
	mov r0, r10
	str r0, [sp, #0x004]
	mov r2, r8
	str r2, [sp, #0x008]
	str r2, [sp, #0x00C]
	movs r0, #0x10
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	ldr r3, _0811D378 @ =0x03000FF4
	ldr r0, [r3, #0x00]
	ldr r1, [sp, #0x080]
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	mov r2, r9
	str r2, [sp, #0x000]
	mov r3, r10
	str r3, [sp, #0x004]
	mov r0, r8
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	movs r0, #0x01
	adds r2, r7, #0x0
	adds r3, r5, #0x0
	bl sub_8121B5C
	adds r7, r0, #0x0
	movs r1, #0x00
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r2, #0x49
	str r2, [sp, #0x008]
	movs r3, #0x01
	str r3, [sp, #0x00C]
	str r1, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r1, r4, #0x0
	movs r2, #0x7C
_0811D2D6:
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
_0811D2DE:
	movs r4, #0x78
	ldr r0, [sp, #0x07C]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	ldr r2, [sp, #0x078]
	ldrh r0, [r2, #0x00]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	movs r6, #0x03
	str r6, [sp, #0x00C]
	ldr r5, [sp, #0x044]
	add r5, sp
	adds r5, #0x20
	ldrb r0, [r5, #0x00]
	str r0, [sp, #0x010]
	str r1, [sp, #0x014]
	str r1, [sp, #0x018]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x58
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	ldr r3, [sp, #0x078]
	ldrh r0, [r3, #0x00]
	adds r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x008]
	str r6, [sp, #0x00C]
	ldrb r0, [r5, #0x00]
	str r0, [sp, #0x010]
	movs r0, #0x00
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	movs r2, #0x78
	movs r3, #0x00
	bl sub_8122A20
	adds r7, r0, #0x0
	ldr r1, [sp, #0x078]
	adds r1, #0x02
	str r1, [sp, #0x078]
	ldr r2, [sp, #0x07C]
	adds r2, #0x70
	str r2, [sp, #0x07C]
	ldr r3, [sp, #0x080]
	adds r3, #0x3C
	str r3, [sp, #0x080]
	ldr r4, [sp, #0x044]
	adds r4, #0x01
	str r4, [sp, #0x044]
	cmp r4, #0x01
	bgt _0811D366
	b _0811CFD2
_0811D366:
	add sp, #0x084
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0811D378: .4byte 0x03000FF4
