	.syntax unified
	.text

	thumb_func_start sub_809B410
sub_809B410:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r6, [r4, #0x2C]
	bl sub_80884AC
	adds r5, r4, #0x0
	adds r5, #0x79
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809B466
	ldr r1, _0809B46C @ =0x000040C2
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl sub_807C0D0
	ldr r1, _0809B470 @ =0x0809B559
	str r1, [r0, #0x4C]
	bl _call_via_r1
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809B462
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_0809B462:
	ldr r0, _0809B474 @ =0x0809B2C1
	str r0, [r4, #0x4C]
_0809B466:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0809B46C: .4byte 0x000040C2
_0809B470: .4byte sub_809B558
_0809B474: .4byte sub_809B2C0
