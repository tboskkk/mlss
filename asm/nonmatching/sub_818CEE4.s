	.syntax unified
	.text

	thumb_func_start sub_818CEE4
sub_818CEE4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CF18 @ =0x0817C6C5
	str r4, [sp, #0x000]
	ldr r4, _0818CF1C @ =0x00004172
	str r4, [sp, #0x004]
	movs r4, #0x03
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CF20 @ =0x08504B30
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x13
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CF18: .4byte sub_817C6C4
_0818CF1C: .4byte 0x00004172
_0818CF20: .4byte 0x08504B30
