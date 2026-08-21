	.syntax unified
	.text

	thumb_func_start sub_818BDB0
sub_818BDB0:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818BDE4 @ =0x0818523D
	str r4, [sp, #0x000]
	ldr r4, _0818BDE8 @ =0x00004159
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x04
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818BDEC @ =0x08504E74
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818BDE4: .4byte sub_818523C
_0818BDE8: .4byte 0x00004159
_0818BDEC: .4byte 0x08504E74
