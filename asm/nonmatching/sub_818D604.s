	.syntax unified
	.text

	thumb_func_start sub_818D604
sub_818D604:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D634 @ =0x08179461
	str r4, [sp, #0x000]
	ldr r4, _0818D638 @ =0x00004159
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D63C @ =0x08504A08
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D634: .4byte sub_8179460
_0818D638: .4byte 0x00004159
_0818D63C: .4byte 0x08504A08
