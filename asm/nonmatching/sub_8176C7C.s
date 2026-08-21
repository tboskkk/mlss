	.syntax unified
	.text

	thumb_func_start sub_8176C7C
sub_8176C7C:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176CAC @ =0x08173C79
	str r4, [sp, #0x000]
	ldr r4, _08176CB0 @ =0x0000207F
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _08176CB4 @ =0x08504810
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176CAC: .4byte sub_8173C78
_08176CB0: .4byte 0x0000207F
_08176CB4: .4byte 0x08504810
