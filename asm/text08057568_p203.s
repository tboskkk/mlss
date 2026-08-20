	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8065BD8
sub_8065BD8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065C28
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065C04
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	b _08065C28
_08065C04:
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	ldr r0, _08065C30 @ =0x08065CC5
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
_08065C28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C30: .4byte sub_8065CC4
	thumb_func_start sub_8065C34
sub_8065C34:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08065C50
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065C58 @ =0x080659E1
	str r0, [r4, #0x4C]
_08065C50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C58: .4byte sub_80659E0
	thumb_func_start sub_8065C5C
sub_8065C5C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065C94
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08065C94
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, _08065C9C @ =0x08065D11
	str r0, [r5, #0x4C]
_08065C94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065C9C: .4byte sub_8065D10
	thumb_func_start sub_8065CA0
sub_8065CA0:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r0, _08065CC0 @ =0x08065495
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08065CC0: .4byte sub_8065494
	thumb_func_start sub_8065CC4
sub_8065CC4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065D06
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065CF0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	b _08065D06
_08065CF0:
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065D0C @ =0x08065D79
	str r0, [r4, #0x4C]
_08065D06:
	pop {r4}
	pop {r0}
	bx r0
_08065D0C: .4byte sub_8065D78
	thumb_func_start sub_8065D10
sub_8065D10:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065D68
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065D36
	adds r1, #0xFF
_08065D36:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065D40
	adds r2, #0xFF
_08065D40:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065D4A
	adds r3, #0xFF
_08065D4A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08065D70 @ =0x0000112B
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_8065758
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _08065D74 @ =0x08065DD5
	str r0, [r4, #0x4C]
_08065D68:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08065D70: .4byte 0x0000112B
_08065D74: .4byte sub_8065DD4
	thumb_func_start sub_8065D78
sub_8065D78:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065DD0 @ =0x08065E2D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065DD0: .4byte sub_8065E2C
	thumb_func_start sub_8065DD4
sub_8065DD4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065E20
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08065E10
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	movs r1, #0x04
	str r1, [r0, #0x00]
	ldr r0, _08065E0C @ =0x08065E69
	b _08065E1E
_08065E0C: .4byte sub_8065E68
_08065E10:
	adds r0, r4, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065E28 @ =0x08065E4D
_08065E1E:
	str r0, [r4, #0x4C]
_08065E20:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065E28: .4byte sub_8065E4C
