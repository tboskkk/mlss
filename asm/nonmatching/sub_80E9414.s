	.syntax unified
	.text

	thumb_func_start sub_80E9414
sub_80E9414:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r3, #0x08]
	cmp r0, #0x00
	beq _080E9460
	movs r4, #0x00
	movs r1, #0x00
	ldr r2, [r3, #0x04]
	cmp r2, #0x00
	beq _080E945C
_080E942A:
	ldr r0, [r2, #0x08]
	cmp r0, r5
	bls _080E9438
	cmp r4, #0x00
	bne _080E9454
	adds r4, r2, #0x0
	b _080E9454
_080E9438:
	cmp r0, r5
	bne _080E9454
	cmp r1, #0x00
	beq _080E9446
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	b _080E944A
_080E9446:
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x04]
_080E944A:
	ldr r0, [r3, #0x00]
	str r0, [r2, #0x00]
	str r2, [r3, #0x00]
	ldr r0, [r2, #0x04]
	b _080E947E
_080E9454:
	adds r1, r2, #0x0
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080E942A
_080E945C:
	cmp r4, #0x00
	bne _080E9464
_080E9460:
	movs r0, #0x00
	b _080E947E
_080E9464:
	ldr r2, [r3, #0x08]
	str r5, [r2, #0x08]
	ldr r1, [r4, #0x08]
	subs r1, r1, r5
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r2, #0x04]
	ldr r1, [r2, #0x00]
	str r1, [r3, #0x08]
	ldr r1, [r3, #0x00]
	str r1, [r2, #0x00]
	str r2, [r3, #0x00]
_080E947E:
	pop {r4, r5}
	pop {r1}
	bx r1
