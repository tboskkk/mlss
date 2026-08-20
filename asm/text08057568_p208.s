	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80793C4
sub_80793C4:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080793EA
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080793F0 @ =0x080798A9
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
_080793EA:
	pop {r4}
	pop {r0}
	bx r0
_080793F0: .4byte sub_80798A8
