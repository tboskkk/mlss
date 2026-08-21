	.syntax unified
	.text

	thumb_func_start sub_818C538
sub_818C538:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C568 @ =0x081815FD
	str r4, [sp, #0x000]
	ldr r4, _0818C56C @ =0x0000415F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C570 @ =0x08504D00
	str r3, [sp, #0x01C]
	movs r3, #0x01
	str r3, [sp, #0x020]
	movs r3, #0xF1
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C568: .4byte sub_81815FC
_0818C56C: .4byte 0x0000415F
_0818C570: .4byte 0x08504D00
