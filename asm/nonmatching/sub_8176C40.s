	.syntax unified
	.text

	thumb_func_start sub_8176C40
sub_8176C40:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176C70 @ =0x08173D8D
	str r4, [sp, #0x000]
	ldr r4, _08176C74 @ =0x0000207F
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176C78 @ =0x08504814
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176C70: .4byte sub_8173D8C
_08176C74: .4byte 0x0000207F
_08176C78: .4byte 0x08504814
