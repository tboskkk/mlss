	.syntax unified
	.text

	thumb_func_start sub_818B970
sub_818B970:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818B9A0 @ =0x0818727D
	str r4, [sp, #0x000]
	ldr r4, _0818B9A4 @ =0x000040AD
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818B9A8 @ =0x08504F8C
	str r3, [sp, #0x01C]
	movs r3, #0x06
	str r3, [sp, #0x020]
	movs r3, #0x65
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818B9A0: .4byte sub_818727C
_0818B9A4: .4byte 0x000040AD
_0818B9A8: .4byte 0x08504F8C
