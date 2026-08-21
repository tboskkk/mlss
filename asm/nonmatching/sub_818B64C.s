	.syntax unified
	.text

	thumb_func_start sub_818B64C
sub_818B64C:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818B67C @ =0x08188591
	str r4, [sp, #0x000]
	ldr r4, _0818B680 @ =0x0000415F
	str r4, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818B684 @ =0x08505060
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x14
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818B67C: .4byte sub_8188590
_0818B680: .4byte 0x0000415F
_0818B684: .4byte 0x08505060
