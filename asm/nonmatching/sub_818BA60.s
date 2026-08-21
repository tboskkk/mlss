	.syntax unified
	.text

	thumb_func_start sub_818BA60
sub_818BA60:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818BA90 @ =0x08186D51
	str r4, [sp, #0x000]
	ldr r4, _0818BA94 @ =0x00004183
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818BA98 @ =0x08504F4C
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x1A
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818BA90: .4byte sub_8186D50
_0818BA94: .4byte 0x00004183
_0818BA98: .4byte 0x08504F4C
