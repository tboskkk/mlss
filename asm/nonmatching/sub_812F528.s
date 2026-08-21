	.syntax unified
	.text

	thumb_func_start sub_812F528
sub_812F528:
	push {lr}
	add sp, #-0x010
	ldr r0, [r0, #0x20]
	ldr r1, _0812F54C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
	add sp, #0x010
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812F54C: .4byte 0x0000FFFF
