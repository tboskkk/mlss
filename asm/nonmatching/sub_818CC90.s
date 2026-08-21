	.syntax unified
	.text

	thumb_func_start sub_818CC90
sub_818CC90:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CCC0 @ =0x0817DB41
	str r4, [sp, #0x000]
	ldr r4, _0818CCC4 @ =0x0000415B
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818CCC8 @ =0x08504BB8
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818CCC0: .4byte sub_817DB40
_0818CCC4: .4byte 0x0000415B
_0818CCC8: .4byte 0x08504BB8
