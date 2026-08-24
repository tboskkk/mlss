	.syntax unified
	.text

	thumb_func_start sub_817FC40
sub_817FC40:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	mov r9, r0
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r8
	adds r1, #0x04
	mov r8, r1
	subs r1, #0x04
	ldr r1, [r1, #0x00]
	mov r10, r1
	mov r2, r8
	adds r2, #0x04
	mov r8, r2
	subs r2, #0x04
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x01C]
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r4, r9
	ldr r0, [r4, #0x08]
	ldr r1, [r0, #0x34]
	str r1, [sp, #0x018]
	bl sub_80841B8
	str r0, [sp, #0x024]
	movs r5, #0x00
	str r5, [sp, #0x028]
	ldr r0, [sp, #0x018]
	ldr r1, [sp, #0x024]
	bl sub_807F9A8
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x030]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x034]
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x038]
	movs r3, #0x07
	str r3, [sp, #0x02C]
_0817FCA6:
	mov r4, r8
	ldm r4!, {r0}
	str r0, [sp, #0x00C]
	ldm r4!, {r1}
	str r1, [sp, #0x010]
	adds r4, #0x04
	mov r8, r4
	subs r4, #0x04
	ldm r4!, {r2}
	str r2, [sp, #0x014]
	mov r5, r10
	muls r5, r0
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0817FCC6
	adds r0, #0xFF
_0817FCC6:
	asrs r7, r0, #0x08
	str r7, [sp, #0x00C]
	mov r0, r10
	muls r0, r1
	cmp r0, #0x00
	bge _0817FCD4
	adds r0, #0xFF
_0817FCD4:
	asrs r3, r0, #0x08
	str r3, [sp, #0x010]
	mov r0, r10
	muls r0, r2
	cmp r0, #0x00
	bge _0817FCE2
	adds r0, #0xFF
_0817FCE2:
	asrs r2, r0, #0x08
	str r2, [sp, #0x014]
	adds r1, r3, #0x0
	ldr r6, _0817FDD0 @ =0x08198584
	adds r6, #0x80
	movs r4, #0x00
	ldsh r0, [r6, r4]
	cmp r0, #0x00
	bge _0817FCF6
	adds r0, #0x3F
_0817FCF6:
	asrs r0, r0, #0x06
	muls r1, r0
	ldr r5, _0817FDD4 @ =0x08198504
	mov r12, r5
	mov r4, r12
	adds r4, #0x80
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _0817FD0C
	adds r0, #0x3F
_0817FD0C:
	asrs r0, r0, #0x06
	muls r0, r2
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0817FD18
	adds r0, #0xFF
_0817FD18:
	asrs r5, r0, #0x08
	str r5, [sp, #0x010]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	bge _0817FD26
	adds r0, #0x3F
_0817FD26:
	asrs r0, r0, #0x06
	adds r1, r2, #0x0
	muls r1, r0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bge _0817FD36
	adds r0, #0x3F
_0817FD36:
	asrs r0, r0, #0x06
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817FD42
	adds r0, #0xFF
_0817FD42:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	adds r2, r7, #0x0
	movs r0, #0xFF
	ldr r3, [sp, #0x020]
	ands r0, r3
	lsls r1, r0, #0x01
	ldr r0, _0817FDD0 @ =0x08198584
	adds r4, r1, r0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, #0x00
	bge _0817FD5E
	adds r0, #0x3F
_0817FD5E:
	asrs r0, r0, #0x06
	muls r2, r0
	mov r0, r12
	adds r3, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	bge _0817FD70
	adds r0, #0x3F
_0817FD70:
	asrs r0, r0, #0x06
	muls r0, r5
	subs r0, r2, r0
	cmp r0, #0x00
	bge _0817FD7C
	adds r0, #0xFF
_0817FD7C:
	asrs r2, r0, #0x08
	str r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, #0x00
	bge _0817FD8A
	adds r0, #0x3F
_0817FD8A:
	asrs r0, r0, #0x06
	adds r1, r5, #0x0
	muls r1, r0
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, #0x00
	bge _0817FD9A
	adds r0, #0x3F
_0817FD9A:
	asrs r0, r0, #0x06
	muls r0, r7
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0817FDA6
	adds r0, #0xFF
_0817FDA6:
	asrs r0, r0, #0x08
	ldr r5, _0817FDD8 @ =0xFFFFF000
	adds r0, r0, r5
	str r0, [sp, #0x010]
	mov r0, r9
	ldrb r1, [r0, #0x1B]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0817FDDC
	mov r3, r9
	movs r4, #0x12
	ldsh r1, [r3, r4]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817FDC8
	adds r0, #0xFF
_0817FDC8:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	b _0817FDEE
	.byte 0x00, 0x00
_0817FDD0: .4byte 0x08198584
_0817FDD4: .4byte 0x08198504
_0817FDD8: .4byte 0xFFFFF000
_0817FDDC:
	mov r5, r9
	movs r0, #0x12
	ldsh r1, [r5, r0]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0817FDEA
	adds r0, #0xFF
_0817FDEA:
	asrs r0, r0, #0x08
	adds r0, r1, r0
_0817FDEE:
	str r0, [sp, #0x00C]
	mov r2, r9
	movs r3, #0x14
	ldsh r1, [r2, r3]
	ldr r0, [sp, #0x010]
	cmp r0, #0x00
	bge _0817FDFE
	adds r0, #0xFF
_0817FDFE:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x010]
	mov r4, r9
	movs r5, #0x16
	ldsh r1, [r4, r5]
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _0817FE12
	adds r0, #0xFF
_0817FE12:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	str r0, [sp, #0x014]
	add r0, sp, #0x00C
	ldr r1, [sp, #0x030]
	ldr r2, [sp, #0x034]
	movs r3, #0x00
	bl sub_807FBD8
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	ldr r0, [sp, #0x014]
	lsls r0, r0, #0x0E
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x038]
	ldr r1, [sp, #0x024]
	bl sub_807C564
	ldr r0, [sp, #0x028]
	cmp r0, #0x00
	bne _0817FE4E
	ldr r0, _0817FEA0 @ =0x03000D74
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x38]
	str r0, [sp, #0x018]
	movs r1, #0x01
	str r1, [sp, #0x028]
_0817FE4E:
	ldr r2, [sp, #0x02C]
	subs r2, #0x01
	str r2, [sp, #0x02C]
	cmp r2, #0x00
	blt _0817FE5A
	b _0817FCA6
_0817FE5A:
	ldr r3, [sp, #0x028]
	cmp r3, #0x00
	beq _0817FE68
	ldr r0, _0817FEA0 @ =0x03000D74
	ldr r1, [r0, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r1, #0x38]
_0817FE68:
	ldr r4, [sp, #0x01C]
	add r10, r4
	lsls r0, r4, #0x03
	subs r0, r0, r4
	cmp r0, #0x00
	bge _0817FE76
	adds r0, #0x07
_0817FE76:
	asrs r0, r0, #0x03
	str r0, [sp, #0x01C]
	ldr r5, [sp, #0x020]
	adds r5, #0x03
	mov r0, r9
	ldr r0, [r0, #0x0C]
	mov r8, r0
	mov r1, r10
	mov r2, r8
	stm r2!, {r1}
	ldr r3, [sp, #0x01C]
	stm r2!, {r3}
	str r5, [r2, #0x00]
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0817FEA0: .4byte 0x03000D74
