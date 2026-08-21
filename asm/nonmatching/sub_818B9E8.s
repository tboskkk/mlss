	.syntax unified
	.text

	thumb_func_start sub_818B9E8
sub_818B9E8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BA18 @ =0x08186F7D
	str r4, [sp, #0x000]
	ldr r4, _0818BA1C @ =0x000040AF
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BA20 @ =0x08504F5C
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x65
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BA18: .4byte sub_8186F7C
_0818BA1C: .4byte 0x000040AF
_0818BA20: .4byte 0x08504F5C
