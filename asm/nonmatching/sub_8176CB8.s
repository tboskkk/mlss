	.syntax unified
	.text

	thumb_func_start sub_8176CB8
sub_8176CB8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176CEC @ =0x0817399D
	str r4, [sp, #0x000]
	ldr r4, _08176CF0 @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x07
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x06
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176CF4 @ =0x085047FC
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x1D
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176CEC: .4byte sub_817399C
_08176CF0: .4byte 0x0000207D
_08176CF4: .4byte 0x085047FC
