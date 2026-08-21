	.syntax unified
	.text

	thumb_func_start sub_80F7BF4
sub_80F7BF4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
_080F7BFE:
	ldrb r0, [r3, #0x0F]
	cmp r0, #0x00
	beq _080F7C22
	ldrb r1, [r3, #0x0C]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _080F7C22
	lsls r0, r4, #0x18
	ldr r1, [r5, #0x28]
	lsrs r0, r0, #0x14
	ldr r4, [r1, #0x00]
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	bl sub_807FB64
	movs r0, #0x00
	strb r0, [r4, #0x0F]
	b _080F7C34
_080F7C22:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r3, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F7BFE
_080F7C34:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
