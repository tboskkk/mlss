	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8113E20
sub_8113E20:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08113E3C
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x86
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
_08113E3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
