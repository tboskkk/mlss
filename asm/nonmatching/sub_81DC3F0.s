	.syntax unified
	.text

	thumb_func_start sub_81DC3F0
sub_81DC3F0:
	push {lr}
	add sp, #-0x010
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	mov r0, sp
	bl sub_81DBAE8
	add sp, #0x010
	pop {pc}
