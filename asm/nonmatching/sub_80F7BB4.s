	.syntax unified
	.text

	thumb_func_start sub_80F7BB4
sub_80F7BB4:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x00]
_080F7BC0:
	ldrb r0, [r1, #0x0F]
	cmp r0, #0x00
	beq _080F7BDA
	ldrb r0, [r1, #0x0C]
	ldr r3, [r5, #0x00]
	cmp r0, r3
	beq _080F7BD2
	cmp r3, #0x3F
	bne _080F7BDA
_080F7BD2:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F7BEE
_080F7BDA:
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r1, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F7BC0
	movs r0, #0x01
_080F7BEE:
	pop {r4, r5}
	pop {r1}
	bx r1
