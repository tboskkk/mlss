	.syntax unified
	.text

	thumb_func_start sub_818D180
sub_818D180:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D1AC @ =0x0817B981
	str r4, [sp, #0x000]
	ldr r4, _0818D1B0 @ =0x0000416A
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	str r5, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x03
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D1AC: .4byte sub_817B980
_0818D1B0: .4byte 0x0000416A
