	.syntax unified
	.text

	thumb_func_start sub_8176B18
sub_8176B18:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176B48 @ =0x081742F1
	str r4, [sp, #0x000]
	ldr r4, _08176B4C @ =0x0000207C
	str r4, [sp, #0x004]
	movs r4, #0x09
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	str r5, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176B48: .4byte sub_81742F0
_08176B4C: .4byte 0x0000207C
