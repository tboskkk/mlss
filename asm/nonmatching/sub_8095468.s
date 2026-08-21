	.syntax unified
	.text

	thumb_func_start sub_8095468
sub_8095468:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_80871A8
	adds r2, r0, #0x0
	cmp r2, #0x00
	bne _080954D6
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0809548C
	strh r2, [r4, #0x1E]
	b _08095490
_0809548C:
	movs r0, #0x01
	strh r0, [r4, #0x1E]
_08095490:
	ldr r1, [r5, #0x38]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	bge _080954A4
	ldr r0, _080954A0 @ =0x080950D1
	str r0, [r4, #0x4C]
	b _080954BA
	.byte 0x00, 0x00
_080954A0: .4byte sub_80950D0
_080954A4:
	movs r0, #0x1C
	ldsh r2, [r4, r0]
	adds r1, r2, #0x0
	adds r1, #0x4C
	movs r0, #0xE0
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x4C
	adds r0, r4, #0x0
	bl sub_80880C4
_080954BA:
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
_080954D6:
	pop {r4, r5}
	pop {r1}
	bx r1
