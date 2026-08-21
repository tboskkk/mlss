	.syntax unified
	.text

	thumb_func_start sub_818B778
sub_818B778:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818B7A8 @ =0x08187E25
	str r4, [sp, #0x000]
	ldr r4, _0818B7AC @ =0x000040B0
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818B7B0 @ =0x08505018
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x29
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818B7A8: .4byte sub_8187E24
_0818B7AC: .4byte 0x000040B0
_0818B7B0: .4byte 0x08505018
