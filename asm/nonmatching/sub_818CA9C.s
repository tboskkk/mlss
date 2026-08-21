	.syntax unified
	.text

	thumb_func_start sub_818CA9C
sub_818CA9C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CACC @ =0x0817E995
	str r4, [sp, #0x000]
	ldr r4, _0818CAD0 @ =0x00004182
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CAD4 @ =0x08504C20
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x09
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CACC: .4byte sub_817E994
_0818CAD0: .4byte 0x00004182
_0818CAD4: .4byte 0x08504C20
