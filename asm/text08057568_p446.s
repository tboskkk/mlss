	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_809E3E0
sub_809E3E0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_809E2E8
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809E408
	movs r0, #0xD2
	bl stop_sfx_80195A8
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0809E408:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
