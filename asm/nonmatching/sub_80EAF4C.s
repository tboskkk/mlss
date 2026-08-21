	.syntax unified
	.text

	thumb_func_start sub_80EAF4C
sub_80EAF4C:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x01
	beq _080EAF80
	cmp r0, #0x01
	bgt _080EAF5E
	cmp r0, #0x00
	beq _080EAF68
	b _080EAFAE
_080EAF5E:
	cmp r0, #0x02
	beq _080EAF98
	cmp r0, #0x03
	beq _080EAFA4
	b _080EAFAE
_080EAF68:
	ldr r0, [r2, #0x08]
	cmp r0, #0x02
	bne _080EAF74
	movs r0, #0x01
	negs r0, r0
	str r0, [r2, #0x08]
_080EAF74:
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x04]
	ldr r2, [r2, #0x08]
	bl sub_8019308
	b _080EAFAE
_080EAF80:
	ldr r0, [r2, #0x08]
	cmp r0, #0x02
	bne _080EAF8C
	movs r0, #0x01
	negs r0, r0
	str r0, [r2, #0x08]
_080EAF8C:
	ldr r0, [r2, #0x00]
	ldr r1, [r2, #0x08]
	ldrb r2, [r2, #0x04]
	bl sub_8019650
	b _080EAFAE
_080EAF98:
	ldr r0, [r2, #0x00]
	ldrb r1, [r2, #0x08]
	ldrb r2, [r2, #0x04]
	bl sub_80193B4
	b _080EAFAE
_080EAFA4:
	ldr r0, [r2, #0x00]
	ldrb r1, [r2, #0x08]
	ldrb r2, [r2, #0x04]
	bl sub_8019460
_080EAFAE:
	movs r0, #0x01
	pop {r1}
	bx r1
