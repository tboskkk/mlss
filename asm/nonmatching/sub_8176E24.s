	.syntax unified
	.text

	thumb_func_start sub_8176E24
sub_8176E24:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176E54 @ =0x08172F05
	str r4, [sp, #0x000]
	ldr r4, _08176E58 @ =0x0000207F
	str r4, [sp, #0x004]
	movs r4, #0x02
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r5, #0x01
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r4, [sp, #0x018]
	ldr r3, _08176E5C @ =0x085047C0
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_08176E54: .4byte sub_8172F04
_08176E58: .4byte 0x0000207F
_08176E5C: .4byte 0x085047C0
