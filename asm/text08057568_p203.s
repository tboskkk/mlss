	.include "asm/macros.inc"

	.syntax unified
	.text

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
