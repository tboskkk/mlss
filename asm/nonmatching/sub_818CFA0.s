	.syntax unified
	.text

	thumb_func_start sub_818CFA0
sub_818CFA0:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CFD0 @ =0x0817C2A9
	str r4, [sp, #0x000]
	ldr r4, _0818CFD4 @ =0x0000415B
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818CFD8 @ =0x08504B0C
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818CFD0: .4byte sub_817C2A8
_0818CFD4: .4byte 0x0000415B
_0818CFD8: .4byte 0x08504B0C
