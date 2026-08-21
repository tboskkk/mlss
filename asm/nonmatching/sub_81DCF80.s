	.syntax unified
	.text

	thumb_func_start sub_81DCF80
sub_81DCF80:
	push {lr}
	adds r1, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _081DCF90
	adds r0, r1, #0x0
	b _081DCF96
_081DCF90:
	adds r0, r1, #0x0
	bl sub_81DCF6C
_081DCF96:
	pop {pc}
