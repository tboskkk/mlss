	.syntax unified
	.text

	thumb_func_start sub_8176FCC
sub_8176FCC:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176FFC @ =0x081723C1
	str r4, [sp, #0x000]
	movs r4, #0x82
	lsls r4, r4, #0x06
	str r4, [sp, #0x004]
	movs r5, #0x02
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08177000 @ =0x08504788
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_08176FFC: .4byte sub_81723C0
_08177000: .4byte 0x08504788
