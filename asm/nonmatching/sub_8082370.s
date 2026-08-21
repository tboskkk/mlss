	.syntax unified
	.text

	thumb_func_start sub_8082370
sub_8082370:
	push {r4, lr}
	adds r1, r0, #0x0
	ldr r3, [r1, #0x08]
	ldrh r2, [r1, #0x10]
	movs r4, #0x10
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _08082392
	subs r0, r2, #0x1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080823B4
	adds r0, r3, #0x0
	bl sub_8081568
	b _080823B4
_08082392:
	ldr r0, _080823AC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _080823B0
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x0B]
	b _080823B4
	.byte 0x00, 0x00
_080823AC: .4byte 0x03000FD8
_080823B0:
	ldr r0, _080823BC @ =0x08081F85
	str r0, [r1, #0x04]
_080823B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080823BC: .4byte sub_8081F84
