	.syntax unified
	.text

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
