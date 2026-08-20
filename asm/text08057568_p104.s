	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EADC4
sub_80EADC4:
	push {r4, lr}
	ldr r0, _080EADE4 @ =0x03000D44
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r4, #0x04
	ldsb r4, [r2, r4]
	movs r3, #0x08
	ldsb r3, [r2, r3]
	adds r2, r4, #0x0
	bl sub_801BBE4
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080EADE4: .4byte 0x03000D44
	.byte 0x01, 0x20, 0x70, 0x47
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
	thumb_func_start sub_80EAE70
sub_80EAE70:
	push {lr}
	add sp, #-0x008
	adds r0, r3, #0x0
	adds r1, #0x18
	movs r3, #0x00
	ldsh r2, [r2, r3]
	str r2, [sp, #0x000]
	ldr r2, _080EAE98 @ =0x03000FB8
	ldr r2, [r2, #0x00]
	adds r2, #0x30
	ldrb r2, [r2, #0x00]
	str r2, [sp, #0x004]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r1}
	bx r1
_080EAE98: .4byte 0x03000FB8
