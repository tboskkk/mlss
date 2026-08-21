	.syntax unified
	.text

	thumb_func_start sub_818C8BC
sub_818C8BC:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C8EC @ =0x0817F235
	str r4, [sp, #0x000]
	ldr r4, _0818C8F0 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C8F4 @ =0x08504C58
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C8EC: .4byte sub_817F234
_0818C8F0: .4byte 0x00004159
_0818C8F4: .4byte 0x08504C58
