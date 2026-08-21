	.syntax unified
	.text

	thumb_func_start sub_8176DAC
sub_8176DAC:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176DDC @ =0x08173105
	str r4, [sp, #0x000]
	ldr r4, _08176DE0 @ =0x0000208E
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176DE4 @ =0x085047C8
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176DDC: .4byte sub_8173104
_08176DE0: .4byte 0x0000208E
_08176DE4: .4byte 0x085047C8
