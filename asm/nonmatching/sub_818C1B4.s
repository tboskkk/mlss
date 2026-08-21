	.syntax unified
	.text

	thumb_func_start sub_818C1B4
sub_818C1B4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C1E4 @ =0x0818353D
	str r4, [sp, #0x000]
	ldr r4, _0818C1E8 @ =0x0000416D
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x0A
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C1EC @ =0x08504DB8
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x97
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C1E4: .4byte sub_818353C
_0818C1E8: .4byte 0x0000416D
_0818C1EC: .4byte 0x08504DB8
