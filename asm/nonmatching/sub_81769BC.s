	.syntax unified
	.text

	thumb_func_start sub_81769BC
sub_81769BC:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _081769EC @ =0x08174C75
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
	ldr r3, _081769F0 @ =0x08504854
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_081769EC: .4byte sub_8174C74
_081769F0: .4byte 0x08504854
