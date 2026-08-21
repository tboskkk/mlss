	.syntax unified
	.text

	thumb_func_start sub_818D7A8
sub_818D7A8:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D7D8 @ =0x08178429
	str r4, [sp, #0x000]
	ldr r4, _0818D7DC @ =0x00004173
	str r4, [sp, #0x004]
	movs r5, #0x04
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D7E0 @ =0x0850499C
	str r3, [sp, #0x01C]
	movs r3, #0x07
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D7D8: .4byte sub_8178428
_0818D7DC: .4byte 0x00004173
_0818D7E0: .4byte 0x0850499C
