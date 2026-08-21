	.syntax unified
	.text

	thumb_func_start sub_813D3A0
sub_813D3A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r7, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813D4C0
	adds r0, r7, #0x0
	add r1, sp, #0x00C
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D4C0
	add r0, sp, #0x00C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x28]
	mov r8, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	add r4, sp, #0x010
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _0813D4B8 @ =0x00007FFF
	adds r0, r4, #0x0
	mov r1, r8
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D4C0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	mov r2, r8
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D4C0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r2, r5, r0
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_813D0F0
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813D4BC @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	b _0813D4FC
	.byte 0x00, 0x00
_0813D4B8: .4byte 0x00007FFF
_0813D4BC: .4byte sub_813939C
_0813D4C0:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xA0
	lsls r1, r1, #0x01
	add r1, r9
_0813D4FC:
	ldr r0, _0813D510 @ =0x0813D515
	str r0, [r1, #0x00]
	add sp, #0x020
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813D510: .4byte sub_813D514
