	.syntax unified
	.text

	thumb_func_start sub_81613D8
sub_81613D8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	ldr r5, [r7, #0x00]
	cmp r5, #0x00
	beq _081613EC
	cmp r5, #0x01
	beq _081614C8
	b _0816153E
_081613EC:
	ldr r0, _08161498 @ =0x03001024
	str r6, [r0, #0x00]
	ldr r4, _0816149C @ =0x00000824
	ldr r2, _081614A0 @ =0x082127D8
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8160EC4
	str r0, [r6, #0x2C]
	ldr r1, _081614A4 @ =0x08002D30
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r2, _081614A8 @ =0x0600B800
	str r2, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r2, #0xE0
	movs r3, #0x20
	bl sub_815FB88
	ldr r2, _081614AC @ =0x082127E0
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	bl sub_8160EC4
	str r0, [r6, #0x30]
	ldr r1, _081614B0 @ =0x08005C60
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r2, _081614B4 @ =0x0600E800
	str r2, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r2, #0xE0
	movs r3, #0x20
	bl sub_815FB88
	adds r0, r6, #0x0
	bl sub_8161080
	ldr r2, _081614B8 @ =0x082127E8
	movs r0, #0x34
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	ldr r1, _081614BC @ =0x082127F0
	ldr r2, [r6, #0x2C]
	movs r3, #0x14
	bl sub_81611B4
	str r0, [r6, #0x3C]
	ldr r2, [r0, #0x2C]
	movs r3, #0x18
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x1C]
	movs r1, #0x01
	bl _call_via_r2
	ldr r0, [r6, #0x3C]
	ldr r2, [r0, #0x2C]
	movs r3, #0x28
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x2C]
	movs r1, #0x01
	bl _call_via_r2
	ldr r0, _081614C0 @ =0x02000050
	strh r5, [r0, #0x00]
	adds r0, #0x04
	strh r5, [r0, #0x00]
	ldr r1, _081614C4 @ =0x081615E5
	movs r0, #0x02
	bl sub_8018B78
	ldr r0, [r7, #0x00]
	adds r0, #0x01
	str r0, [r7, #0x00]
	b _0816153E
	.byte 0x00, 0x00
_08161498: .4byte 0x03001024
_0816149C: .4byte 0x00000824
_081614A0: .4byte 0x082127D8
_081614A4: .4byte 0x08002D30
_081614A8: .4byte 0x0600B800
_081614AC: .4byte 0x082127E0
_081614B0: .4byte 0x08005C60
_081614B4: .4byte 0x0600E800
_081614B8: .4byte 0x082127E8
_081614BC: .4byte 0x082127F0
_081614C0: .4byte 0x02000050
_081614C4: .4byte sub_81615E4
_081614C8:
	ldr r0, [r6, #0x3C]
	ldr r2, [r0, #0x2C]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	adds r4, r6, #0x0
	adds r4, #0x24
	ldr r2, [r2, #0x14]
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r0, [r6, #0x3C]
	ldr r2, [r0, #0x2C]
	movs r3, #0x38
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x3C]
	bl _call_via_r1
	ldr r0, [r6, #0x3C]
	ldr r1, [r0, #0x2C]
	adds r1, #0x40
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r6, #0x3C]
	ldr r2, [r0, #0x2C]
	movs r3, #0x30
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x34]
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r4, [r6, #0x24]
	asrs r4, r4, #0x08
	ldr r5, [r6, #0x28]
	asrs r5, r5, #0x08
	ldr r0, [r6, #0x2C]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_815FEF8
	ldr r0, [r6, #0x30]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_815FEF8
	ldr r0, _08161548 @ =0x02000014
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x06
	strh r4, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
_0816153E:
	movs r0, #0x00
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08161548: .4byte 0x02000014
