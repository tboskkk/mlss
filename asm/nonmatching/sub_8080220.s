	.syntax unified
	.text

	thumb_func_start sub_8080220
sub_8080220:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08080270
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08080254
	ldr r2, _08080250 @ =0x00002039
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	b _08080260
	.byte 0x00, 0x00
_08080250: .4byte 0x00002039
_08080254:
	ldr r2, _08080278 @ =0x00002068
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
_08080260:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08080270:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08080278: .4byte 0x00002068
