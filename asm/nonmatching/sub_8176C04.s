	.syntax unified
	.text

	thumb_func_start sub_8176C04
sub_8176C04:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176C34 @ =0x08173EA1
	str r4, [sp, #0x000]
	ldr r4, _08176C38 @ =0x0000207F
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _08176C3C @ =0x08504818
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176C34: .4byte sub_8173EA0
_08176C38: .4byte 0x0000207F
_08176C3C: .4byte 0x08504818
