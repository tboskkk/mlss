	.syntax unified
	.text

	thumb_func_start sub_818C010
sub_818C010:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818C040 @ =0x08184529
	str r4, [sp, #0x000]
	ldr r4, _0818C044 @ =0x000040D3
	str r4, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	str r5, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C048 @ =0x08504E28
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x8D
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818C040: .4byte sub_8184528
_0818C044: .4byte 0x000040D3
_0818C048: .4byte 0x08504E28
