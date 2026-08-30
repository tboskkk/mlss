	.syntax unified
	.text

	thumb_func_start sub_815FA50
sub_815FA50:
	push {lr}
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0815FA5C
	bl sprite_show_8020CBC
_0815FA5C:
	pop {r0}
	bx r0
