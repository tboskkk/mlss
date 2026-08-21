	.syntax unified
	.text

	thumb_func_start sub_818D898
sub_818D898:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D8C8 @ =0x08177B5D
	str r4, [sp, #0x000]
	ldr r4, _0818D8CC @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x06
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D8D0 @ =0x08504948
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x1B
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818D8C8: .4byte sub_8177B5C
_0818D8CC: .4byte 0x00004165
_0818D8D0: .4byte 0x08504948
