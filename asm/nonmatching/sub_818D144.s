	.syntax unified
	.text

	thumb_func_start sub_818D144
sub_818D144:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D174 @ =0x0817BA9D
	str r4, [sp, #0x000]
	ldr r4, _0818D178 @ =0x0000416B
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D17C @ =0x08504AC0
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x0C
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D174: .4byte sub_817BA9C
_0818D178: .4byte 0x0000416B
_0818D17C: .4byte 0x08504AC0
