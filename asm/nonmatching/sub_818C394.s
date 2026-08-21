	.syntax unified
	.text

	thumb_func_start sub_818C394
sub_818C394:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C3C4 @ =0x08182785
	str r4, [sp, #0x000]
	ldr r4, _0818C3C8 @ =0x0000415F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C3CC @ =0x08504D44
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x25
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C3C4: .4byte sub_8182784
_0818C3C8: .4byte 0x0000415F
_0818C3CC: .4byte 0x08504D44
