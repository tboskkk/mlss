	.syntax unified
	.text

	thumb_func_start sub_80884AC
sub_80884AC:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r0, #0x7E
	adds r0, r0, r3
	mov r12, r0
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r3, #0x0
	adds r0, #0x7A
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r1, r3, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	ldsh r1, [r1, r4]
	muls r0, r1
	cmp r0, #0x00
	bge _080884D2
	adds r0, #0xFF
_080884D2:
	asrs r1, r0, #0x08
	adds r1, r2, r1
	mov r0, r12
	ldrh r2, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xAC
	strh r2, [r0, #0x00]
	mov r4, r12
	strh r1, [r4, #0x00]
	ldr r0, _080884FC @ =0x00003FFF
	cmp r1, r0
	ble _08088500
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r0, #0x00
	b _08088502
	.byte 0x00, 0x00
_080884FC: .4byte 0x00003FFF
_08088500:
	movs r0, #0x01
_08088502:
	pop {r4}
	pop {r1}
	bx r1
