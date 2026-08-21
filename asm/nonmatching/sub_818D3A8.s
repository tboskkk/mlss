	.syntax unified
	.text

	thumb_func_start sub_818D3A8
sub_818D3A8:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D3D8 @ =0x0817A84D
	str r4, [sp, #0x000]
	ldr r4, _0818D3DC @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r5, #0x02
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _0818D3E0 @ =0x08504A78
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D3D8: .4byte sub_817A84C
_0818D3DC: .4byte 0x00004159
_0818D3E0: .4byte 0x08504A78
