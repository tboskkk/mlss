	.include "asm/macros.inc"

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
	thumb_func_start sub_8088508
sub_8088508:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _08088558
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _0808852A
	cmp r1, #0x04
	bne _08088550
_0808852A:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08088550:
	ldr r0, [r4, #0x50]
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r4, #0x50]
_08088558:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8088560
sub_8088560:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _08088574
	cmp r1, #0x04
	bne _080885B0
_08088574:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08088594
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080885A0
_08088594:
	ldr r2, _080885BC @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080885A0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080885B0:
	ldr r0, _080885C0 @ =0x08087C6D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080885BC: .4byte 0x0000204D
_080885C0: .4byte sub_8087C6C
	thumb_func_start sub_80885C4
sub_80885C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080885D8
	cmp r1, #0x04
	bne _08088614
_080885D8:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080885F8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _08088604
_080885F8:
	ldr r2, _08088624 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_08088604:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_08088614:
	ldr r0, [r4, #0x4C]
	str r0, [r4, #0x50]
	ldr r0, _08088628 @ =0x0808864D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08088624: .4byte 0x0000204D
_08088628: .4byte sub_808864C
