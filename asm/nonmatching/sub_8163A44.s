	.syntax unified
	.text

	thumb_func_start sub_8163A44
sub_8163A44:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _08163A52
	bl sprite_show_8020CBC
_08163A52:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _08163A5C
	bl sprite_show_8020CBC
_08163A5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
