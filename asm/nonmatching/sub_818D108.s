	.syntax unified
	.text

	thumb_func_start sub_818D108
sub_818D108:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D138 @ =0x0817BBB9
	str r4, [sp, #0x000]
	ldr r4, _0818D13C @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D140 @ =0x08504AC4
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D138: .4byte sub_817BBB8
_0818D13C: .4byte 0x00004159
_0818D140: .4byte 0x08504AC4
