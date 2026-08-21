	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8065B48
sub_8065B48:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08065B6A
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08065B70 @ =0x08065511
	str r0, [r4, #0x4C]
	movs r0, #0x81
	bl stop_sfx_80195A8
_08065B6A:
	pop {r4}
	pop {r0}
	bx r0
_08065B70: .4byte sub_8065510
