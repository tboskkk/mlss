	.syntax unified
	.text

	thumb_func_start sub_818B700
sub_818B700:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818B730 @ =0x081880BD
	str r4, [sp, #0x000]
	ldr r4, _0818B734 @ =0x0000415A
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818B738 @ =0x08505040
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818B730: .4byte sub_81880BC
_0818B734: .4byte 0x0000415A
_0818B738: .4byte 0x08505040
