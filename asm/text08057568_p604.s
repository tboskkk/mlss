	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81580E0
sub_81580E0:
	push {lr}
	ldr r0, [r0, #0x30]
	bl sub_816504C
	cmp r0, #0x00
	bne _081580F0
	movs r0, #0x00
	b _081580F2
_081580F0:
	movs r0, #0x01
_081580F2:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
