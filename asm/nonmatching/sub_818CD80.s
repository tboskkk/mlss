	.syntax unified
	.text

	thumb_func_start sub_818CD80
sub_818CD80:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CDB0 @ =0x0817D1F1
	str r4, [sp, #0x000]
	ldr r4, _0818CDB4 @ =0x0000417C
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x09
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CDB8 @ =0x08504B70
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x1A
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818CDB0: .4byte sub_817D1F0
_0818CDB4: .4byte 0x0000417C
_0818CDB8: .4byte 0x08504B70
