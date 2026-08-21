	.syntax unified
	.text

	thumb_func_start sub_818C6A0
sub_818C6A0:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C6D0 @ =0x08180731
	str r4, [sp, #0x000]
	ldr r4, _0818C6D4 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C6D8 @ =0x08504CC4
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x79
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C6D0: .4byte sub_8180730
_0818C6D4: .4byte 0x00004165
_0818C6D8: .4byte 0x08504CC4
