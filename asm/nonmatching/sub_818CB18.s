	.syntax unified
	.text

	thumb_func_start sub_818CB18
sub_818CB18:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818CB4C @ =0x0817E609
	str r4, [sp, #0x000]
	ldr r4, _0818CB50 @ =0x0000415C
	str r4, [sp, #0x004]
	movs r4, #0x05
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x04
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818CB54 @ =0x08504C0C
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CB4C: .4byte sub_817E608
_0818CB50: .4byte 0x0000415C
_0818CB54: .4byte 0x08504C0C
