	.syntax unified
	.text

	thumb_func_start sub_81767E0
sub_81767E0:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176814 @ =0x08176031
	str r4, [sp, #0x000]
	movs r4, #0x82
	lsls r4, r4, #0x06
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176818 @ =0x085048D4
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176814: .4byte sub_8176030
_08176818: .4byte 0x085048D4
