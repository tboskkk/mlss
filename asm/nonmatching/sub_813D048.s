	.syntax unified
	.text

	thumb_func_start sub_813D048
sub_813D048:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r4, [r0, #0x00]
	adds r0, r6, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D0BE
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804776C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
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
	movs r0, #0xCC
	lsls r0, r0, #0x01
	b _0813D0DA
_0813D0BE:
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r2, r5, r1
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_813D0F0
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813D0E8 @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
_0813D0DA:
	adds r1, r5, r0
	ldr r0, _0813D0EC @ =0x0813D64D
	str r0, [r1, #0x00]
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0813D0E8: .4byte sub_813939C
_0813D0EC: .4byte sub_813D64C
