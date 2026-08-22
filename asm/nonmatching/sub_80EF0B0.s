	.syntax unified
	.text

	thumb_func_start sub_80EF0B0
sub_80EF0B0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	adds r5, r2, #0x0
	adds r7, r3, #0x0
	ldr r1, [r4, #0x14]
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x02
	adds r1, #0x28
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldr r0, [r5, #0x04]
	cmp r0, #0x0B
	bls _080EF0D0
	b _080EF1F2
_080EF0D0:
	lsls r0, r0, #0x02
	ldr r1, _080EF0DC @ =lbl_080EF0E0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EF0DC: .4byte lbl_080EF0E0
lbl_080EF0E0:
	.4byte _080EF110
	.4byte _080EF11C
	.4byte _080EF128
	.4byte _080EF138
	.4byte _080EF144
	.4byte _080EF18C
	.4byte _080EF190
	.4byte _080EF1B0
	.4byte _080EF1BE
	.4byte _080EF1CC
	.4byte _080EF1DA
	.4byte _080EF1E8
_080EF110:
	ldr r0, [r2, #12]
	cmp r0, #0
	bge.n _080EF118
	adds r0, #255 @ 0xff
_080EF118:
	asrs r0, r0, #8
	b.n _080EF1F0
_080EF11C:
	ldr r0, [r2, #16]
	cmp r0, #0
	bge.n _080EF124
	adds r0, #255 @ 0xff
_080EF124:
	asrs r0, r0, #8
	b.n _080EF1F0
_080EF128:
	ldr r1, [r2, #20]
	ldr r0, [r2, #24]
	adds r0, r1, r0
	cmp r0, #0
	bge.n _080EF134
	adds r0, #255 @ 0xff
_080EF134:
	asrs r0, r0, #8
	b.n _080EF1F0
_080EF138:
	adds r0, r2, #0
	adds r0, #36 @ 0x24
	ldrb r0, [r0, #0]
	lsls r0, r0, #29
	lsrs r0, r0, #29
	b.n _080EF1F0
_080EF144:
	ldr r1, [r4, #20]
	movs r2, #128 @ 0x80
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r2, [r0, #0]
	movs r3, #129 @ 0x81
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r3, [r0, #0]
	movs r1, #207 @ 0xcf
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	asrs r0, r0, #25
	ldr r1, [r5, #8]
	cmp r0, r1
	bne.n _080EF170
	adds r0, r2, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	b.n _080EF1F0
_080EF170:
	movs r2, #207 @ 0xcf
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	asrs r0, r0, #25
	cmp r0, r1
	bne.n _080EF188
	adds r0, r3, #0
	adds r0, #84 @ 0x54
	ldrb r0, [r0, #0]
	b.n _080EF1F0
_080EF188:
	movs r0, #255 @ 0xff
	b.n _080EF1F0
_080EF18C:
	ldrb r0, [r2, #0]
	b.n _080EF1F0
_080EF190:
	ldr r3, [pc, #24] @ (0x80ef1ac)
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	lsls r1, r0, #16
	asrs r0, r1, #24
	str r0, [sp, #8]
	cmp r0, #0
	bne.n _080EF1F2
	asrs r0, r1, #20
	movs r1, #12
	ands r0, r1
	movs r1, #64 @ 0x40
	orrs r0, r1
	b.n _080EF1F0
	lsls r6, r7, #8
	movs r0, r0
_080EF1B0:
	ldr r0, [r4, #20]
	ldr r1, [r5, #8]
	add r3, sp, #12
	add r2, sp, #8
	bl get_fobj_screen_pos
	b.n _080EF1F2
_080EF1BE:
	ldr r0, [r4, #20]
	ldr r1, [r5, #8]
	add r2, sp, #12
	add r3, sp, #8
	bl get_fobj_screen_pos
	b.n _080EF1F2
_080EF1CC:
	movs r1, #165 @ 0xa5
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0, #0]
	adds r0, #35 @ 0x23
	ldrb r0, [r0, #0]
	b.n _080EF1F0
_080EF1DA:
	ldr r0, [r4, #20]
	ldr r1, [r5, #8]
	bl sub_803C66C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	b.n _080EF1F0
_080EF1E8:
	ldr r0, [r4, #20]
	ldr r1, [r5, #8]
	bl sub_8025C04
_080EF1F0:
	str r0, [sp, #8]
_080EF1F2:
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r0, _080EF21C @ =0x03000FC0
	ldr r2, [r0, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r2, r2, r3
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x008]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080EF21C: .4byte 0x03000FC0
