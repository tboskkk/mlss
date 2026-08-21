	.syntax unified
	.text

	thumb_func_start sub_8176E60
sub_8176E60:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176E90 @ =0x08172E05
	str r4, [sp, #0x000]
	ldr r4, _08176E94 @ =0x00002092
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176E98 @ =0x085047BC
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176E90: .4byte sub_8172E04
_08176E94: .4byte 0x00002092
_08176E98: .4byte 0x085047BC
