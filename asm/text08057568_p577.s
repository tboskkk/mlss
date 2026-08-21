	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8132E68
sub_8132E68:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08132E9C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA0
	bl play_sfx_80195B4
	ldr r0, _08132EA4 @ =0x08132EE1
	str r0, [r4, #0x4C]
_08132E9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08132EA4: .4byte sub_8132EE0
	thumb_func_start sub_8132EA8
sub_8132EA8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08132ED6
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9F
	bl play_sfx_80195B4
	ldr r0, _08132EDC @ =0x08132819
	str r0, [r4, #0x4C]
_08132ED6:
	pop {r4}
	pop {r0}
	bx r0
_08132EDC: .4byte sub_8132818
