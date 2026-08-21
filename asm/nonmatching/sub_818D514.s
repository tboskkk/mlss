	.syntax unified
	.text

	thumb_func_start sub_818D514
sub_818D514:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D544 @ =0x08179C05
	str r4, [sp, #0x000]
	ldr r4, _0818D548 @ =0x0000415B
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D54C @ =0x08504A2C
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D544: .4byte sub_8179C04
_0818D548: .4byte 0x0000415B
_0818D54C: .4byte 0x08504A2C
