	.syntax unified
	.text

	thumb_func_start sub_818BA24
sub_818BA24:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818BA54 @ =0x08186E6D
	str r4, [sp, #0x000]
	ldr r4, _0818BA58 @ =0x000040F4
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818BA5C @ =0x08504F54
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x1F
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818BA54: .4byte sub_8186E6C
_0818BA58: .4byte 0x000040F4
_0818BA5C: .4byte 0x08504F54
