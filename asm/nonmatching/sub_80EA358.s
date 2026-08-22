	.syntax unified
	.text

	thumb_func_start sub_80EA358
sub_80EA358:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r6, r3, #0x0
	ldm r2!, {r3}
	ldr r0, [r2, #0x00]
	cmp r0, #0xFF
	bne _080EA378
	ldr r0, _080EA374 @ =0x03000FF4
	ldr r0, [r0, #0x00]
	adds r0, #0x88
	ldrh r4, [r0, #0x00]
	b _080EA452
	.byte 0x00, 0x00
_080EA374: .4byte 0x03000FF4
_080EA378:
	asrs r0, r0, #0x07
	subs r0, #0x01
	cmp r0, #0x05
	bhi _080EA44C
	lsls r0, r0, #0x02
	ldr r1, _080EA38C @ =lbl_080EA390
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EA38C: .4byte lbl_080EA390
lbl_080EA390:
	.4byte _080EA3A8
	.4byte _080EA3C0
	.4byte _080EA3F0
	.4byte _080EA3D8
	.4byte _080EA424
	.4byte _080EA408
_080EA3A8:
	ldr r0, [r2, #0]
	movs r1, #127 @ 0x7f
	ands r0, r1
	ldr r1, [pc, #12] @ (0x80ea3bc)
	ldr r1, [r1, #0]
	adds r0, r0, r1
	adds r0, #186 @ 0xba
	ldrb r4, [r0, #0]
	b.n _080EA44C
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA3C0:
	ldr r0, [r2, #0]
	movs r1, #127 @ 0x7f
	ands r0, r1
	ldr r1, [pc, #12] @ (0x80ea3d4)
	ldr r1, [r1, #0]
	adds r0, r0, r1
	adds r0, #242 @ 0xf2
	ldrb r4, [r0, #0]
	b.n _080EA44C
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA3D8:
	ldr r0, [r2, #0]
	movs r1, #127 @ 0x7f
	ands r0, r1
	ldr r1, [pc, #12] @ (0x80ea3ec)
	ldr r1, [r1, #0]
	adds r0, r0, r1
	adds r0, #138 @ 0x8a
	ldrb r4, [r0, #0]
	b.n _080EA44C
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA3F0:
	ldr r0, [r2, #0]
	movs r1, #127 @ 0x7f
	ands r0, r1
	ldr r1, [pc, #12] @ (0x80ea404)
	ldr r1, [r1, #0]
	adds r0, r0, r1
	adds r0, #170 @ 0xaa
	ldrb r4, [r0, #0]
	b.n _080EA44C
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA408:
	ldr r0, [r2, #0]
	movs r1, #127 @ 0x7f
	ands r0, r1
	ldr r1, [pc, #16] @ (0x80ea420)
	ldr r1, [r1, #0]
	adds r0, r0, r1
	movs r1, #149 @ 0x95
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r4, [r0, #0]
	b.n _080EA44C
	movs r0, r0
	lsrs r4, r6, #31
	lsls r0, r0, #12
_080EA424:
	ldr r2, [r2, #0]
	movs r0, #127 @ 0x7f
	ands r0, r2
	asrs r0, r0, #3
	ldr r1, [pc, #68] @ (0x80ea474)
	ldr r1, [r1, #0]
	adds r0, r0, r1
	adds r0, #178 @ 0xb2
	ldrb r1, [r0, #0]
	adds r0, r2, #0
	cmp r2, #0
	bge.n _080EA43E
	adds r0, r2, #7
_080EA43E:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r2, r0
	adds r4, r1, #0
	asrs r4, r0
	movs r0, #1
	ands r4, r0
_080EA44C:
	cmp r4, #0xFF
	bne _080EA452
	movs r4, #0x00
_080EA452:
	adds r1, r5, #0x0
	adds r1, #0x18
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	adds r0, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03
