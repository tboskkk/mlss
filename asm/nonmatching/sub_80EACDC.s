	.syntax unified
	.text

	thumb_func_start sub_80EACDC
sub_80EACDC:
	push {r4, lr}
	add sp, #-0x008
	ldr r0, [r2, #0x04]
	cmp r0, #0x01
	beq _080EAD10
	cmp r0, #0x01
	bgt _080EACF0
	cmp r0, #0x00
	beq _080EACFA
	b _080EAD6C
_080EACF0:
	cmp r0, #0x02
	beq _080EAD24
	cmp r0, #0x03
	beq _080EAD4C
	b _080EAD6C
_080EACFA:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD0C @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x22
	b _080EAD32
	.byte 0x00, 0x00
_080EAD0C: .4byte 0x03000D44
_080EAD10:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD20 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	b _080EAD32
_080EAD20: .4byte 0x03000D44
_080EAD24:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD48 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x25
_080EAD32:
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	b _080EAD6C
	.byte 0x00, 0x00
_080EAD48: .4byte 0x03000D44
_080EAD4C:
	adds r1, #0x18
	movs r4, #0x00
	ldsh r0, [r2, r4]
	str r0, [sp, #0x000]
	ldr r0, _080EAD78 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
_080EAD6C:
	movs r0, #0x01
	add sp, #0x008
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EAD78: .4byte 0x03000D44
