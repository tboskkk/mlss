	.syntax unified
	.text

	thumb_func_start sub_80EADEC
sub_80EADEC:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	movs r3, #0x00
	ldr r2, [r1, #0x00]
_080EADF6:
	ldrb r0, [r2, #0x0F]
	cmp r0, #0x00
	beq _080EAE10
	ldrb r0, [r2, #0x0C]
	ldr r1, [r5, #0x00]
	cmp r0, r1
	beq _080EAE08
	cmp r1, #0x3F
	bne _080EAE10
_080EAE08:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EAE24
_080EAE10:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r2, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080EADF6
	movs r0, #0x01
_080EAE24:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0x01, 0x20, 0x70, 0x47
