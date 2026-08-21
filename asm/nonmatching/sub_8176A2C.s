	.syntax unified
	.text

	thumb_func_start sub_8176A2C
sub_8176A2C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176A5C @ =0x08174A4D
	str r4, [sp, #0x000]
	movs r4, #0x82
	lsls r4, r4, #0x06
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176A60 @ =0x0850484C
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176A5C: .4byte sub_8174A4C
_08176A60: .4byte 0x0850484C
