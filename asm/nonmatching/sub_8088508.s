	.syntax unified
	.text

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
