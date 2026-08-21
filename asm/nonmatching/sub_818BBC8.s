	.syntax unified
	.text

	thumb_func_start sub_818BBC8
sub_818BBC8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BBF8 @ =0x08186405
	str r4, [sp, #0x000]
	ldr r4, _0818BBFC @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BC00 @ =0x08504EE8
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x22
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818BBF8: .4byte sub_8186404
_0818BBFC: .4byte 0x00004165
_0818BC00: .4byte 0x08504EE8
