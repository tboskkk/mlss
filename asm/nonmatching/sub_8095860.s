	.syntax unified
	.text

	thumb_func_start sub_8095860
sub_8095860:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r5, _0809589C @ =0x03000FD8
	ldr r0, [r5, #0x00]
	ldr r0, [r0, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080958E2
	ldr r0, [r5, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x03
	bne _080958A0
	adds r0, r4, #0x0
	bl sub_80962C4
	b _080958E2
	.byte 0x00, 0x00
_0809589C: .4byte 0x03000FD8
_080958A0:
	ldrb r0, [r1, #0x02]
	cmp r0, #0x02
	bne _080958AE
	adds r0, r4, #0x0
	bl sub_8096D8C
	b _080958E2
_080958AE:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080958DE
	ldr r2, _080958E8 @ =0x00002051
	cmp r4, r6
	bne _080958C4
	subs r2, #0x2F
_080958C4:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080958DE:
	ldr r0, _080958EC @ =0x080958F1
	str r0, [r4, #0x4C]
_080958E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080958E8: .4byte 0x00002051
_080958EC: .4byte sub_80958F0
