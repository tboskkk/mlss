	.syntax unified
	.text

	thumb_func_start sub_81768D0
sub_81768D0:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176900 @ =0x0817547D
	str r4, [sp, #0x000]
	ldr r4, _08176904 @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x07
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176908 @ =0x08504884
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176900: .4byte sub_817547C
_08176904: .4byte 0x0000207D
_08176908: .4byte 0x08504884
