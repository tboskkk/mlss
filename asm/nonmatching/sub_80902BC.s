	.syntax unified
	.text

	thumb_func_start sub_80902BC
sub_80902BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r3, r4, #0x0
	adds r3, #0x94
	ldr r1, [r3, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, _08090300 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08090304
	ldr r2, [r3, #0x00]
	movs r1, #0x7A
	negs r1, r1
	subs r1, r1, r2
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x01
	cmp r0, #0x00
	bge _080902FA
	adds r0, #0xFF
_080902FA:
	asrs r0, r0, #0x08
	adds r0, r2, r0
	b _08090308
_08090300: .4byte 0x0300034C
_08090304:
	movs r0, #0x7A
	negs r0, r0
_08090308:
	str r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r1, [r4, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0809033C
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r2, _08090344 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08090348 @ =0x0809034D
	str r0, [r4, #0x4C]
_0809033C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08090344: .4byte 0x0000204D
_08090348: .4byte sub_809034C
