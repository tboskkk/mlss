	.syntax unified
	.text

	thumb_func_start sub_818D8D4
sub_818D8D4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D904 @ =0x081778ED
	str r4, [sp, #0x000]
	ldr r4, _0818D908 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x06
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D90C @ =0x08504934
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x1B
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818D904: .4byte sub_81778EC
_0818D908: .4byte 0x00004165
_0818D90C: .4byte 0x08504934
