	.syntax unified
	.text

	thumb_func_start sub_818BCB8
sub_818BCB8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BCE8 @ =0x08185A01
	str r4, [sp, #0x000]
	ldr r4, _0818BCEC @ =0x0000416C
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BCF0 @ =0x08504E9C
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x51
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BCE8: .4byte sub_8185A00
_0818BCEC: .4byte 0x0000416C
_0818BCF0: .4byte 0x08504E9C
