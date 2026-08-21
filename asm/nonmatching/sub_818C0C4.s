	.syntax unified
	.text

	thumb_func_start sub_818C0C4
sub_818C0C4:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C0F4 @ =0x08183D85
	str r4, [sp, #0x000]
	ldr r4, _0818C0F8 @ =0x000040C4
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x03
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C0FC @ =0x08504DF8
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x47
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C0F4: .4byte sub_8183D84
_0818C0F8: .4byte 0x000040C4
_0818C0FC: .4byte 0x08504DF8
