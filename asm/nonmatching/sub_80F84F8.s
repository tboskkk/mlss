	.syntax unified
	.text

	thumb_func_start sub_80F84F8
sub_80F84F8:
	push {lr}
	adds r3, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080F8534
	cmp r1, #0x01
	bgt _080F850C
	cmp r1, #0x00
	beq _080F8512
	b _080F8574
_080F850C:
	cmp r1, #0x02
	beq _080F8550
	b _080F8574
_080F8512:
	ldr r0, _080F8530 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r1, r3
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F8574
	subs r3, #0x04
	adds r0, r1, r3
	ldr r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	orrs r1, r2
	str r1, [r0, #0x00]
	b _080F8574
_080F8530: .4byte 0x03000FD8
_080F8534:
	ldr r0, [r0, #0x2C]
	ldr r1, _080F854C @ =0x00001788
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r2, #0x00]
	ands r0, r1
	cmp r0, #0x00
	bne _080F8574
	ldr r0, [r3, #0x14]
	str r0, [r3, #0x00]
	movs r0, #0x00
	b _080F8576
_080F854C: .4byte 0x00001788
_080F8550:
	ldr r0, [r2, #0x00]
	bl sub_8105790
	ldr r0, _080F856C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0xA4
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F8570
	bl sub_810CE88
	b _080F8574
_080F856C: .4byte 0x03000FD8
_080F8570:
	bl sub_810CF04
_080F8574:
	movs r0, #0x01
_080F8576:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
