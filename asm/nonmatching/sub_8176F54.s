	.syntax unified
	.text

	thumb_func_start sub_8176F54
sub_8176F54:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176F84 @ =0x08172785
	str r4, [sp, #0x000]
	ldr r4, _08176F88 @ =0x0000207D
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _08176F8C @ =0x08504798
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_08176F84: .4byte sub_8172784
_08176F88: .4byte 0x0000207D
_08176F8C: .4byte 0x08504798
