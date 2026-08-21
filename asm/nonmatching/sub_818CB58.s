	.syntax unified
	.text

	thumb_func_start sub_818CB58
sub_818CB58:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CB88 @ =0x0817E411
	str r4, [sp, #0x000]
	ldr r4, _0818CB8C @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CB90 @ =0x08504BF4
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x13
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818CB88: .4byte sub_817E410
_0818CB8C: .4byte 0x00004165
_0818CB90: .4byte 0x08504BF4
