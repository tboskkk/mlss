	.syntax unified
	.text

	thumb_func_start sub_8176ED8
sub_8176ED8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176F0C @ =0x081729C5
	str r4, [sp, #0x000]
	ldr r4, _08176F10 @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x0A
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x04
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176F14 @ =0x085047A8
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176F0C: .4byte sub_81729C4
_08176F10: .4byte 0x0000207D
_08176F14: .4byte 0x085047A8
