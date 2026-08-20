	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EEE08
sub_80EEE08:
	push {r4, r5, lr}
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r0, _080EEE78 @ =0x000003FF
	cmp r1, r0
	beq _080EEE84
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	ldr r1, _080EEE7C @ =room_props_table
	adds r0, r0, r1
	adds r5, #0x04
	ldrh r0, [r0, #0x10]
	lsls r0, r0, #0x02
	ldr r1, _080EEE80 @ =0x083D6C58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x07]
	lsls r0, r0, #0x08
	ldrb r1, [r2, #0x06]
	orrs r0, r1
	subs r2, r2, r0
	ldm r5!, {r1}
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r3, r2, r0
	ldrb r0, [r3, #0x12]
	lsrs r0, r0, #0x03
	movs r1, #0x07
	ands r0, r1
	cmp r0, #0x03
	bne _080EEEBA
	ldrb r2, [r3, #0x0F]
	lsls r2, r2, #0x18
	ldrb r0, [r3, #0x0E]
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrb r0, [r3, #0x0D]
	lsls r0, r0, #0x08
	orrs r2, r0
	ldrb r0, [r3, #0x0C]
	orrs r2, r0
	lsrs r2, r2, #0x0A
	movs r0, #0x96
	lsls r0, r0, #0x04
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldrb r3, [r5, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_80E9958
	b _080EEEBA
	.byte 0x00, 0x00
_080EEE78: .4byte 0x000003FF
_080EEE7C: .4byte room_props_table
_080EEE80: .4byte 0x083D6C58
_080EEE84:
	ldr r0, _080EEEC4 @ =0x03000FC0
	ldr r4, [r0, #0x00]
	movs r0, #0xA6
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r0, [r5, #0x08]
	movs r1, #0x00
	cmp r0, #0x00
	beq _080EEE98
	subs r1, #0x01
_080EEE98:
	str r1, [r5, #0x00]
	str r1, [r2, #0x00]
	movs r0, #0xA8
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r1, _080EEEC8 @ =0x03001034
	ldr r0, [r5, #0x00]
	ldr r3, [r1, #0x00]
	adds r1, r2, #0x0
	movs r2, #0xFC
	bl _call_via_r3
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r5, #0x00]
	str r0, [r2, #0x00]
_080EEEBA:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EEEC4: .4byte 0x03000FC0
_080EEEC8: .4byte 0x03001034
	thumb_func_start sub_80EEECC
sub_80EEECC:
	push {lr}
	ldr r3, [r0, #0x14]
	ldm r2!, {r1}
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080EEF08
	cmp r1, #0x01
	bgt _080EEEEC
	cmp r1, #0x00
	beq _080EEEF6
	b _080EEF48
_080EEEEC:
	cmp r1, #0x02
	beq _080EEF18
	cmp r1, #0x03
	beq _080EEF30
	b _080EEF48
_080EEEF6:
	ldr r1, [r2, #0x00]
	ldr r2, _080EEF04 @ =0x00000351
	adds r3, r0, r2
	lsls r1, r1, #0x07
	ldrb r2, [r3, #0x00]
	movs r0, #0x7F
	b _080EEF42
_080EEF04: .4byte 0x00000351
_080EEF08:
	ldr r1, [r2, #0x00]
	ldr r0, _080EEF14 @ =0x00000209
	adds r3, r3, r0
	movs r0, #0x01
	b _080EEF38
	.byte 0x00, 0x00
_080EEF14: .4byte 0x00000209
_080EEF18:
	ldr r1, [r2, #0x00]
	ldr r2, _080EEF2C @ =0x0000020B
	adds r3, r3, r2
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	b _080EEF42
_080EEF2C: .4byte 0x0000020B
_080EEF30:
	ldr r0, _080EEF50 @ =0x0000026A
	adds r3, r3, r0
	movs r0, #0x01
	ldrb r1, [r2, #0x00]
_080EEF38:
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
_080EEF42:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080EEF48:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EEF50: .4byte 0x0000026A
