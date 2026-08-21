	.syntax unified
	.text

	thumb_func_start sub_818C9E8
sub_818C9E8:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CA18 @ =0x0817ECB1
	str r4, [sp, #0x000]
	ldr r4, _0818CA1C @ =0x00004184
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CA20 @ =0x08504C30
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x0C
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818CA18: .4byte sub_817ECB0
_0818CA1C: .4byte 0x00004184
_0818CA20: .4byte 0x08504C30
