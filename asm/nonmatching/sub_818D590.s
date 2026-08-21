	.syntax unified
	.text

	thumb_func_start sub_818D590
sub_818D590:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D5C0 @ =0x081798C9
	str r4, [sp, #0x000]
	ldr r4, _0818D5C4 @ =0x0000415B
	str r4, [sp, #0x004]
	movs r4, #0x05
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	str r5, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D5C0: .4byte sub_81798C8
_0818D5C4: .4byte 0x0000415B
