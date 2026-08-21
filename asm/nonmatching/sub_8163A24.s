	.syntax unified
	.text

	thumb_func_start sub_8163A24
sub_8163A24:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _08163A32
	bl sprite_hide_8021F20
_08163A32:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _08163A3C
	bl sprite_hide_8021F20
_08163A3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
