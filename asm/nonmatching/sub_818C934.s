	.syntax unified
	.text

	thumb_func_start sub_818C934
sub_818C934:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C964 @ =0x0817EFF9
	str r4, [sp, #0x000]
	ldr r4, _0818C968 @ =0x00004184
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C96C @ =0x08504C48
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x0C
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C964: .4byte sub_817EFF8
_0818C968: .4byte 0x00004184
_0818C96C: .4byte 0x08504C48
