	.syntax unified
	.text

	thumb_func_start sub_818D234
sub_818D234:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D268 @ =0x0817B399
	str r4, [sp, #0x000]
	ldr r4, _0818D26C @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D270 @ =0x08504AA8
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D268: .4byte sub_817B398
_0818D26C: .4byte 0x00004159
_0818D270: .4byte 0x08504AA8
