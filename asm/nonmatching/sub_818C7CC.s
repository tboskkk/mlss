	.syntax unified
	.text

	thumb_func_start sub_818C7CC
sub_818C7CC:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C7FC @ =0x0817FC41
	str r4, [sp, #0x000]
	ldr r4, _0818C800 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C804 @ =0x08504C90
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x1F
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C7FC: .4byte sub_817FC40
_0818C800: .4byte 0x00004165
_0818C804: .4byte 0x08504C90
