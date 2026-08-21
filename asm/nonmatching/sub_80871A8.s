	.syntax unified
	.text

	thumb_func_start sub_80871A8
sub_80871A8:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	cmp r2, #0x03
	bne _080871D0
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080871D4
	ldr r0, [r3, #0x6C]
	cmp r0, #0x00
	beq _080871D4
	ldrb r1, [r0, #0x09]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080871D4
_080871D0:
	movs r0, #0x01
	b _08087222
_080871D4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2A
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r4
	bne _080871FE
	ldr r0, _08087228 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x08]
_080871FE:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bne _08087220
	ldr r0, _08087228 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x08]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x08]
_08087220:
	movs r0, #0x00
_08087222:
	pop {r4, r5}
	pop {r1}
	bx r1
_08087228: .4byte 0x03000FD8
