	.syntax unified
	.text

	thumb_func_start sub_8148E2C
sub_8148E2C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x52
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, _08148E8C @ =0x00000283
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	cmn r1, r0
	bge _08148E86
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r1, _08148E90 @ =0x0000020F
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148E94 @ =0x08148D41
	str r0, [r5, #0x00]
_08148E86:
	pop {r4, r5}
	pop {r0}
	bx r0
_08148E8C: .4byte 0x00000283
_08148E90: .4byte 0x0000020F
_08148E94: .4byte sub_8148D40
