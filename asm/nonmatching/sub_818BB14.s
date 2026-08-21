	.syntax unified
	.text

	thumb_func_start sub_818BB14
sub_818BB14:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BB44 @ =0x081869C1
	str r4, [sp, #0x000]
	ldr r4, _0818BB48 @ =0x00004079
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BB4C @ =0x08504F28
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x33
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BB44: .4byte sub_81869C0
_0818BB48: .4byte 0x00004079
_0818BB4C: .4byte 0x08504F28
