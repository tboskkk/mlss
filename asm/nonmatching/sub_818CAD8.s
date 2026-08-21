	.syntax unified
	.text

	thumb_func_start sub_818CAD8
sub_818CAD8:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CB0C @ =0x0817E885
	str r4, [sp, #0x000]
	ldr r4, _0818CB10 @ =0x0000400C
	str r4, [sp, #0x004]
	movs r4, #0x05
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CB14 @ =0x08504C18
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x79
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CB0C: .4byte sub_817E884
_0818CB10: .4byte 0x0000400C
_0818CB14: .4byte 0x08504C18
