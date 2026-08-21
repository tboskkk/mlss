	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163888
sub_8163888:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, _081638AC @ =0x08CDD108
	str r0, [r5, #0x0C]
	adds r0, r5, #0x0
	bl sub_8163BE4
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _081638A6
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_081638A6:
	pop {r4, r5}
	pop {r0}
	bx r0
_081638AC: .4byte 0x08CDD108
