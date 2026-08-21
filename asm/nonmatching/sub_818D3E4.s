	.syntax unified
	.text

	thumb_func_start sub_818D3E4
sub_818D3E4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D414 @ =0x0817A635
	str r4, [sp, #0x000]
	ldr r4, _0818D418 @ =0x00004175
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D41C @ =0x08504A70
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x15
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818D414: .4byte sub_817A634
_0818D418: .4byte 0x00004175
_0818D41C: .4byte 0x08504A70
