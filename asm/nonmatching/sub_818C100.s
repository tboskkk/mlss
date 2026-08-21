	.syntax unified
	.text

	thumb_func_start sub_818C100
sub_818C100:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C130 @ =0x08183AF9
	str r4, [sp, #0x000]
	ldr r4, _0818C134 @ =0x000040C4
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x03
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C138 @ =0x08504DE8
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x47
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C130: .4byte sub_8183AF8
_0818C134: .4byte 0x000040C4
_0818C138: .4byte 0x08504DE8
