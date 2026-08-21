	.syntax unified
	.text

	thumb_func_start sub_813326C
sub_813326C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08133298
	movs r1, #0x2C
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	bge _08133286
	adds r0, #0x0F
_08133286:
	asrs r0, r0, #0x04
	cmp r0, #0x28
	bne _081332B0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7E
	bl play_sfx_80195B4
	b _081332B0
_08133298:
	ldr r0, [r4, #0x28]
	ldr r2, _081332B8 @ =0x00000113
	adds r1, r0, r2
	movs r3, #0x00
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	str r3, [r4, #0x4C]
_081332B0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081332B8: .4byte 0x00000113
