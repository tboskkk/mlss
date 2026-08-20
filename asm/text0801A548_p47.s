	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_804FAF8
sub_804FAF8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x44]
	bl sub_8020D40
	ldrb r1, [r4, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
