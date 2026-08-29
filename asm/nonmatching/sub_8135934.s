	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x064
	mov r9, r0
	adds r5, r1, #0x0
	ldr r0, _08135B5C @ =0x08CDC480
	mov r8, r0
	str r0, [sp, #0x010]
	mov r0, sp
	bl sub_8136470
	mov r4, r9
	adds r4, #0x48
	movs r1, #0x80
	lsls r1, r1, #0x01
	mov r2, r9
	str r1, [r2, #0x48]
	movs r0, #0x00
	str r0, [r4, #0x04]
	str r0, [r4, #0x08]
	str r0, [r4, #0x0C]
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1C]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x2C]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r4, #0x38]
	str r1, [r4, #0x3C]
	mov r0, r9
	adds r0, #0x0C
	ldr r1, [r2, #0x0C]
	ldr r2, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r0, r4, #0x0
	bl sub_8135084
	mov r0, r9
	adds r0, #0x20
	mov r3, r9
	ldr r1, [r3, #0x20]
	ldr r2, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r0, r4, #0x0
	bl sub_8135110
	mov r0, r9
	adds r0, #0x34
	mov r2, r9
	ldr r1, [r2, #0x34]
	ldr r2, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r0, r4, #0x0
	bl sub_8135458
	add r3, sp, #0x014
	mov r10, r3
	mov r0, r10
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_8134CAC
	mov r1, r9
	adds r1, #0x8C
	ldr r0, [sp, #0x014]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x04]
	ldr r0, [sp, #0x01C]
	str r0, [r1, #0x08]
	ldr r0, [sp, #0x020]
	str r0, [r1, #0x0C]
	ldr r0, [sp, #0x024]
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x028]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0x02C]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x030]
	str r0, [r1, #0x1C]
	ldr r0, [sp, #0x034]
	str r0, [r1, #0x20]
	ldr r0, [sp, #0x038]
	str r0, [r1, #0x24]
	ldr r0, [sp, #0x03C]
	str r0, [r1, #0x28]
	ldr r0, [sp, #0x040]
	str r0, [r1, #0x2C]
	ldr r0, [sp, #0x044]
	str r0, [r1, #0x30]
	ldr r0, [sp, #0x048]
	str r0, [r1, #0x34]
	ldr r0, [sp, #0x04C]
	str r0, [r1, #0x38]
	ldr r0, [sp, #0x050]
	str r0, [r1, #0x3C]
	ldr r0, _08135B60 @ =0x08CDC470
	str r0, [sp, #0x054]
	movs r5, #0x00
	str r5, [sp, #0x058]
	mov r0, r9
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	cmp r5, r0
	bge _08135AEC
	mov r7, r9
	adds r7, #0xD4
	adds r6, r1, #0x0
_08135A1A:
	movs r0, #0x34
	ldr r1, [sp, #0x058]
	adds r5, r1, #0x0
	muls r5, r0
	ldr r4, [r7, #0x00]
	adds r4, r5, r4
	mov r2, r8
	str r2, [sp, #0x038]
	add r0, sp, #0x028
	bl sub_8136470
	ldr r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	muls r1, r0
	ldr r2, [r4, #0x04]
	ldr r0, [r6, #0x10]
	muls r0, r2
	adds r1, r1, r0
	ldr r2, [r4, #0x08]
	ldr r0, [r6, #0x20]
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r6, #0x30]
	adds r1, r1, r0
	str r1, [sp, #0x028]
	ldr r1, [r4, #0x00]
	ldr r0, [r6, #0x04]
	muls r1, r0
	ldr r2, [r4, #0x04]
	ldr r0, [r6, #0x14]
	muls r0, r2
	adds r1, r1, r0
	ldr r2, [r4, #0x08]
	ldr r0, [r6, #0x24]
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r6, #0x34]
	adds r1, r1, r0
	str r1, [sp, #0x02C]
	ldr r1, [r4, #0x00]
	ldr r0, [r6, #0x08]
	muls r1, r0
	ldr r2, [r4, #0x04]
	ldr r0, [r6, #0x18]
	muls r0, r2
	adds r1, r1, r0
	ldr r2, [r4, #0x08]
	ldr r0, [r6, #0x28]
	muls r0, r2
	adds r1, r1, r0
	ldr r0, [r6, #0x38]
	adds r1, r1, r0
	str r1, [sp, #0x030]
	mov r3, r8
	str r3, [sp, #0x024]
	mov r0, r10
	add r1, sp, #0x028
	bl sub_8136688
	mov r0, r8
	str r0, [sp, #0x038]
	mov r0, r10
	mov r1, r10
	movs r2, #0x14
	bl memcpy
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x008]
	mov r2, r8
	str r2, [sp, #0x024]
	ldr r3, _08135B64 @ =0x03001038
	ldr r2, _08135B68 @ =0x0819832C
	ldr r0, _08135B6C @ =0x08198220
	subs r2, r2, r0
	ldr r3, [r3, #0x00]
	adds r3, r3, r2
	movs r0, #0xC8
	lsls r0, r0, #0x01
	bl _call_via_r3
	ldr r2, [r7, #0x00]
	adds r2, r5, r2
	ldr r1, [sp, #0x000]
	muls r1, r0
	adds r1, #0x78
	str r1, [r2, #0x28]
	ldr r1, [r7, #0x00]
	adds r5, r5, r1
	ldr r1, [sp, #0x004]
	muls r1, r0
	movs r0, #0x50
	subs r0, r0, r1
	str r0, [r5, #0x2C]
	ldr r3, [sp, #0x058]
	adds r3, #0x01
	str r3, [sp, #0x058]
	mov r0, r9
	adds r0, #0xD0
	ldr r0, [r0, #0x00]
	cmp r3, r0
	blt _08135A1A
_08135AEC:
	movs r5, #0x00
	str r5, [sp, #0x058]
	mov r0, r9
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x060]
	mov r0, r9
	ldr r0, [r0, #0x04]
	str r0, [sp, #0x05C]
	cmp r5, r1
	bge _08135BC0
	movs r1, #0xDC
	add r1, r9
	mov r12, r1
	mov r10, r5
_08135B0A:
	mov r2, r12
	ldr r1, [r2, #0x00]
	add r1, r10
	ldrh r2, [r1, #0x04]
	ldrh r3, [r1, #0x06]
	ldrh r4, [r1, #0x08]
	movs r0, #0x00
	str r0, [r1, #0x00]
	mov r0, r9
	adds r0, #0xD4
	ldr r1, [r0, #0x00]
	movs r5, #0x34
	adds r0, r2, #0x0
	muls r0, r5
	adds r2, r0, r1
	ldr r0, [r2, #0x08]
	mov r8, r0
	cmp r0, #0x00
	blt _08135B4A
	adds r0, r3, #0x0
	muls r0, r5
	adds r5, r0, r1
	ldr r7, [r5, #0x08]
	cmp r7, #0x00
	blt _08135B4A
	movs r3, #0x34
	adds r0, r4, #0x0
	muls r0, r3
	adds r4, r0, r1
	ldr r6, [r4, #0x08]
	cmp r6, #0x00
	bge _08135B70
_08135B4A:
	mov r5, r12
	ldr r1, [r5, #0x00]
	add r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1, #0x00]
	b _08135BAE
	.byte 0x00, 0x00
_08135B5C: .4byte 0x08CDC480
_08135B60: .4byte 0x08CDC470
_08135B64: .4byte 0x03001038
_08135B68: .4byte 0x0819832C
_08135B6C: .4byte 0x08198220
_08135B70:
	ldr r3, [r2, #0x28]
	ldr r1, [r5, #0x28]
	subs r1, r3, r1
	ldr r0, [r4, #0x2C]
	ldr r2, [r2, #0x2C]
	subs r0, r0, r2
	muls r1, r0
	ldr r0, [r5, #0x2C]
	subs r2, r2, r0
	ldr r0, [r4, #0x28]
	subs r0, r0, r3
	muls r0, r2
	subs r1, r1, r0
	cmp r1, #0x00
	ble _08135B9E
	mov r3, r12
	ldr r1, [r3, #0x00]
	add r1, r10
	ldr r0, [r1, #0x00]
	movs r5, #0x10
	orrs r0, r5
	str r0, [r1, #0x00]
	b _08135BAE
_08135B9E:
	mov r0, r12
	ldr r1, [r0, #0x00]
	add r1, r10
	mov r2, r8
	adds r0, r2, r7
	adds r0, r0, r6
	lsls r0, r0, #0x08
	str r0, [r1, #0x0C]
_08135BAE:
	movs r3, #0x24
	add r10, r3
	ldr r5, [sp, #0x058]
	adds r5, #0x01
	str r5, [sp, #0x058]
	ldr r1, [sp, #0x060]
	ldr r0, [r1, #0x00]
	cmp r5, r0
	blt _08135B0A
_08135BC0:
	ldr r2, [sp, #0x05C]
	cmp r2, #0x00
	beq _08135BD0
	mov r1, r9
	adds r1, #0x8C
	adds r0, r2, #0x0
	bl sub_8135934
_08135BD0:
	mov r3, r9
	ldr r0, [r3, #0x08]
	cmp r0, #0x00
	beq _08135BE0
	mov r1, r9
	adds r1, #0x8C
	bl sub_8135934
_08135BE0:
	ldr r0, _08135BF4 @ =0x08CDC480
	str r0, [sp, #0x010]
	add sp, #0x064
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08135BF4: .4byte 0x08CDC480
