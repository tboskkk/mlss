	.syntax unified
	.text

	thumb_func_start sub_80EAE30
sub_80EAE30:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	movs r3, #0x00
	ldr r2, [r4, #0x00]
	b _080EAE48
_080EAE3C:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	lsrs r3, r0, #0x10
	adds r2, #0x10
_080EAE48:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	bgt _080EAE68
	ldrb r0, [r2, #0x0F]
	cmp r0, #0x00
	beq _080EAE3C
	ldrb r1, [r2, #0x0C]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	bne _080EAE3C
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80E8EE0
_080EAE68:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
