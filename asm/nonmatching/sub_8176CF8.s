	.syntax unified
	.text

	thumb_func_start sub_8176CF8
sub_8176CF8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176D28 @ =0x081736C1
	str r4, [sp, #0x000]
	ldr r4, _08176D2C @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x07
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176D30 @ =0x085047E8
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x1F
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176D28: .4byte sub_81736C0
_08176D2C: .4byte 0x0000207D
_08176D30: .4byte 0x085047E8
