	.syntax unified
	.text

	thumb_func_start sub_818D36C
sub_818D36C:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D39C @ =0x0817AA21
	str r4, [sp, #0x000]
	ldr r4, _0818D3A0 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r5, #0x02
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _0818D3A4 @ =0x08504A80
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D39C: .4byte sub_817AA20
_0818D3A0: .4byte 0x00004159
_0818D3A4: .4byte 0x08504A80
