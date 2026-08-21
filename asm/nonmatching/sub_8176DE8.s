	.syntax unified
	.text

	thumb_func_start sub_8176DE8
sub_8176DE8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176E18 @ =0x08173005
	str r4, [sp, #0x000]
	ldr r4, _08176E1C @ =0x0000207F
	str r4, [sp, #0x004]
	movs r4, #0x02
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176E20 @ =0x085047C4
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176E18: .4byte sub_8173004
_08176E1C: .4byte 0x0000207F
_08176E20: .4byte 0x085047C4
