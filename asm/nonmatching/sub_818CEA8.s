	.syntax unified
	.text

	thumb_func_start sub_818CEA8
sub_818CEA8:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CED8 @ =0x0817C8BD
	str r4, [sp, #0x000]
	ldr r4, _0818CEDC @ =0x00004175
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r5, #0x04
	str r5, [sp, #0x010]
	str r4, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CEE0 @ =0x08504B48
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x17
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CED8: .4byte sub_817C8BC
_0818CEDC: .4byte 0x00004175
_0818CEE0: .4byte 0x08504B48
