	.syntax unified
	.text

	thumb_func_start sub_818CD44
sub_818CD44:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CD74 @ =0x0817D41D
	str r4, [sp, #0x000]
	ldr r4, _0818CD78 @ =0x0000417D
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x09
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CD7C @ =0x08504B88
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x1A
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818CD74: .4byte sub_817D41C
_0818CD78: .4byte 0x0000417D
_0818CD7C: .4byte 0x08504B88
