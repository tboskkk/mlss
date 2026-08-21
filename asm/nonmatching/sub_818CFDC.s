	.syntax unified
	.text

	thumb_func_start sub_818CFDC
sub_818CFDC:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D00C @ =0x0817C175
	str r4, [sp, #0x000]
	ldr r4, _0818D010 @ =0x00004159
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D014 @ =0x08504AFC
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D00C: .4byte sub_817C174
_0818D010: .4byte 0x00004159
_0818D014: .4byte 0x08504AFC
