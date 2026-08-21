	.syntax unified
	.text

	thumb_func_start sub_80821C4
sub_80821C4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080821DA
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _080821F8
_080821DA:
	movs r2, #0x01
	negs r2, r2
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08082200 @ =0x08081F85
	str r0, [r4, #0x04]
_080821F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082200: .4byte sub_8081F84
