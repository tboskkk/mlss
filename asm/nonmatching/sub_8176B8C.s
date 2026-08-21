	.syntax unified
	.text

	thumb_func_start sub_8176B8C
sub_8176B8C:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176BBC @ =0x081740C9
	str r4, [sp, #0x000]
	ldr r4, _08176BC0 @ =0x0000207E
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _08176BC4 @ =0x08504820
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176BBC: .4byte sub_81740C8
_08176BC0: .4byte 0x0000207E
_08176BC4: .4byte 0x08504820
