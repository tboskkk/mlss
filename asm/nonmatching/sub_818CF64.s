	.syntax unified
	.text

	thumb_func_start sub_818CF64
sub_818CF64:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CF94 @ =0x0817C3C1
	str r4, [sp, #0x000]
	ldr r4, _0818CF98 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x04
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r5, #0x01
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _0818CF9C @ =0x08504B14
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818CF94: .4byte sub_817C3C0
_0818CF98: .4byte 0x00004159
_0818CF9C: .4byte 0x08504B14
