	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EAD98
sub_80EAD98:
	push {lr}
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080EADB0
	ldr r0, _080EADAC @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x29
	movs r1, #0x01
	b _080EADB8
	.byte 0x00, 0x00
_080EADAC: .4byte 0x03000D44
_080EADB0:
	ldr r0, _080EADC0 @ =0x03000D44
	ldr r0, [r0, #0x00]
	adds r0, #0x29
	movs r1, #0xFF
_080EADB8:
	strb r1, [r0, #0x00]
	movs r0, #0x01
	pop {r1}
	bx r1
_080EADC0: .4byte 0x03000D44
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
	thumb_func_start sub_80EAE9C
sub_80EAE9C:
	push {lr}
	adds r3, r1, #0x0
	ldr r0, _080EAEB8 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _080EAEB2
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x00]
_080EAEB2:
	movs r0, #0x01
	pop {r1}
	bx r1
_080EAEB8: .4byte 0x03000FB8
	thumb_func_start sub_80EAEBC
sub_80EAEBC:
	push {lr}
	ldr r0, [r1, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	ldm r3!, {r1}
	asrs r0, r1
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EAED8
	ldr r0, [r3, #0x00]
	str r0, [r2, #0x00]
_080EAED8:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EAEE0
sub_80EAEE0:
	push {lr}
	ldm r2!, {r0}
	cmp r0, #0x00
	bne _080EAEF0
	ldrb r0, [r2, #0x04]
	ldrb r1, [r2, #0x00]
	bl sub_8019508
_080EAEF0:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80EAEF8
sub_80EAEF8:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080EAF1E
	cmp r1, #0x01
	bgt _080EAF0C
	cmp r1, #0x00
	beq _080EAF12
	b _080EAF44
_080EAF0C:
	cmp r1, #0x02
	beq _080EAF30
	b _080EAF44
_080EAF12:
	ldr r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080EAF44
_080EAF1E:
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _080EAF2A
	bl stop_sfx_80195A8
	b _080EAF44
_080EAF2A:
	bl stop_all_sfx_801959C
	b _080EAF44
_080EAF30:
	ldr r0, [r2, #0x00]
	bl sub_8019588
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EAF44
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080EAF46
_080EAF44:
	movs r0, #0x01
_080EAF46:
	pop {r4}
	pop {r1}
	bx r1
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
	thumb_func_start sub_80EAFB4
sub_80EAFB4:
	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x04
	bhi _080EB03E
	lsls r0, r0, #0x02
	ldr r1, _080EAFC8 @ =0x080EAFCC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EAFC8: .4byte 0x080EAFCC
	.byte 0xE0, 0xAF, 0x0E, 0x08, 0xEE, 0xAF, 0x0E, 0x08, 0xFA, 0xAF, 0x0E, 0x08, 0x06, 0xB0, 0x0E, 0x08
	.byte 0x12, 0xB0, 0x0E, 0x08, 0x10, 0x68, 0x51, 0x68, 0x01, 0x22, 0x52, 0x42, 0x2E, 0xF7, 0x8E, 0xF9
	.byte 0x27, 0xE0, 0x10, 0x68, 0x51, 0x68, 0xFF, 0x22, 0x2E, 0xF7, 0x88, 0xF9, 0x21, 0xE0, 0x10, 0x68
	.byte 0x12, 0x79, 0xFF, 0x21, 0x2E, 0xF7, 0xD8, 0xF9, 0x1B, 0xE0, 0x10, 0x68, 0x12, 0x79, 0x00, 0x21
	.byte 0x2E, 0xF7, 0xD2, 0xF9, 0x15, 0xE0, 0x01, 0xCA, 0x00, 0x28, 0x12, 0xDB, 0x01, 0x28, 0x02, 0xDD
	.byte 0x02, 0x28, 0x04, 0xD0, 0x0D, 0xE0, 0x10, 0x68, 0x2E, 0xF7, 0x00, 0xFB, 0x09, 0xE0, 0x10, 0x68
	.byte 0x2E, 0xF7, 0xE4, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x03, 0xD0, 0x60, 0x69, 0x20, 0x60, 0x00, 0x20
	.byte 0x00, 0xE0
_080EB03E:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
