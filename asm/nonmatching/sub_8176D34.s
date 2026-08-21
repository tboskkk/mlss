	.syntax unified
	.text

	thumb_func_start sub_8176D34
sub_8176D34:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176D64 @ =0x081733E5
	str r4, [sp, #0x000]
	ldr r4, _08176D68 @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x07
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176D6C @ =0x085047D4
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x19
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176D64: .4byte sub_81733E4
_08176D68: .4byte 0x0000207D
_08176D6C: .4byte 0x085047D4
