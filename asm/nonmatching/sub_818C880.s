	.syntax unified
	.text

	thumb_func_start sub_818C880
sub_818C880:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C8B0 @ =0x0817F4A5
	str r4, [sp, #0x000]
	ldr r4, _0818C8B4 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C8B8 @ =0x08504C64
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C8B0: .4byte sub_817F4A4
_0818C8B4: .4byte 0x00004159
_0818C8B8: .4byte 0x08504C64
