	.syntax unified
	.text

	thumb_func_start sub_817690C
sub_817690C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0817693C @ =0x0817518D
	str r4, [sp, #0x000]
	ldr r4, _08176940 @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x07
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176944 @ =0x08504870
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0817693C: .4byte sub_817518C
_08176940: .4byte 0x0000207D
_08176944: .4byte 0x08504870
