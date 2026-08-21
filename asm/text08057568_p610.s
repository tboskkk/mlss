	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80B30AC
sub_80B30AC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B30CC
	ldr r0, [r4, #0x08]
	bl sub_807FB64
	ldr r0, _080B30D4 @ =0x080B325D
	str r0, [r4, #0x4C]
_080B30CC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B30D4: .4byte sub_80B325C
