	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80DA300
sub_80DA300:
	push {r4, r5, lr}
	ldr r0, [r0, #0x28]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087124
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _080DA31A
	adds r0, r5, #0x0
	bl sub_80D9F34
_080DA31A:
	adds r0, r4, #0x0
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
