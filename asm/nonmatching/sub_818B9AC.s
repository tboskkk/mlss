	.syntax unified
	.text

	thumb_func_start sub_818B9AC
sub_818B9AC:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818B9DC @ =0x081870FD
	str r4, [sp, #0x000]
	ldr r4, _0818B9E0 @ =0x000040AC
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818B9E4 @ =0x08504F74
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x65
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818B9DC: .4byte sub_81870FC
_0818B9E0: .4byte 0x000040AC
_0818B9E4: .4byte 0x08504F74
