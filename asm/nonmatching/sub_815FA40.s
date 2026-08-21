	.syntax unified
	.text

	thumb_func_start sub_815FA40
sub_815FA40:
	push {lr}
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0815FA4C
	bl sprite_hide_8021F20
_0815FA4C:
	pop {r0}
	bx r0
