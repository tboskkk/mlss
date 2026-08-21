	.syntax unified
	.text

	thumb_func_start sub_818BB8C
sub_818BB8C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BBBC @ =0x081866E5
	str r4, [sp, #0x000]
	ldr r4, _0818BBC0 @ =0x00004110
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BBC4 @ =0x08504EFC
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x65
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818BBBC: .4byte sub_81866E4
_0818BBC0: .4byte 0x00004110
_0818BBC4: .4byte 0x08504EFC
