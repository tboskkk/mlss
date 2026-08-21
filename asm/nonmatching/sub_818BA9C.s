	.syntax unified
	.text

	thumb_func_start sub_818BA9C
sub_818BA9C:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818BACC @ =0x08186C35
	str r4, [sp, #0x000]
	ldr r4, _0818BAD0 @ =0x00004183
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818BAD4 @ =0x08504F44
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x1A
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818BACC: .4byte sub_8186C34
_0818BAD0: .4byte 0x00004183
_0818BAD4: .4byte 0x08504F44
