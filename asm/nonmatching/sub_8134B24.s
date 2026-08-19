	.syntax unified
	.text

	thumb_func_start sub_8134B24
sub_8134B24:
	push {lr}
	ldrh r1, [r0, #0x02]
	ldrh r0, [r0, #0x04]
	cmp r1, r0
	bcs _08134B32
	movs r0, #0x00
	b _08134B34
_08134B32:
	movs r0, #0x01
_08134B34:
	pop {r1}
	bx r1
