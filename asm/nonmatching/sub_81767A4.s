	.syntax unified
	.text

	thumb_func_start sub_81767A4
sub_81767A4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _081767D8 @ =0x08176299
	str r4, [sp, #0x000]
	movs r4, #0x82
	lsls r4, r4, #0x06
	str r4, [sp, #0x004]
	movs r4, #0x02
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _081767DC @ =0x085048E0
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_081767D8: .4byte sub_8176298
_081767DC: .4byte 0x085048E0
