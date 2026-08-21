	.syntax unified
	.text

	thumb_func_start sub_818D9C4
sub_818D9C4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D9F4 @ =0x08177079
	str r4, [sp, #0x000]
	ldr r4, _0818D9F8 @ =0x00004169
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D9FC @ =0x085048F8
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x05
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D9F4: .4byte sub_8177078
_0818D9F8: .4byte 0x00004169
_0818D9FC: .4byte 0x085048F8
