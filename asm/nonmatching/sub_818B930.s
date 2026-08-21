	.syntax unified
	.text

	thumb_func_start sub_818B930
sub_818B930:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818B964 @ =0x081873FD
	str r4, [sp, #0x000]
	ldr r4, _0818B968 @ =0x000040AA
	str r4, [sp, #0x004]
	movs r4, #0x2E
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818B96C @ =0x08504FA4
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x15
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818B964: .4byte sub_81873FC
_0818B968: .4byte 0x000040AA
_0818B96C: .4byte 0x08504FA4
