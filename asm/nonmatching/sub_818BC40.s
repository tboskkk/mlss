	.syntax unified
	.text

	thumb_func_start sub_818BC40
sub_818BC40:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BC70 @ =0x08185E31
	str r4, [sp, #0x000]
	ldr r4, _0818BC74 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BC78 @ =0x08504EC0
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x22
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818BC70: .4byte sub_8185E30
_0818BC74: .4byte 0x00004165
_0818BC78: .4byte 0x08504EC0
