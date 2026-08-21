	.syntax unified
	.text

	thumb_func_start sub_818C2E0
sub_818C2E0:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C310 @ =0x08182C51
	str r4, [sp, #0x000]
	ldr r4, _0818C314 @ =0x0000416C
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x03
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C318 @ =0x08504D68
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x47
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C310: .4byte sub_8182C50
_0818C314: .4byte 0x0000416C
_0818C318: .4byte 0x08504D68
