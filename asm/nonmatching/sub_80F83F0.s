	.syntax unified
	.text

	thumb_func_start sub_80F83F0
sub_80F83F0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	bne _080F8424
	ldr r1, [r2, #0x08]
	asrs r0, r1, #0x07
	cmp r0, #0x04
	bne _080F8424
	movs r0, #0x7F
	ands r1, r0
	str r1, [r2, #0x08]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	beq _080F8416
	ldr r0, [r2, #0x10]
	negs r0, r0
	str r0, [r2, #0x10]
_080F8416:
	ldrb r0, [r2, #0x08]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	bl sub_80F7068
	movs r0, #0x01
	b _080F8432
_080F8424:
	adds r0, r4, #0x0
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA144
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080F8432:
	pop {r4, r5}
	pop {r1}
	bx r1
