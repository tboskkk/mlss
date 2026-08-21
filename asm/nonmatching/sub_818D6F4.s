	.syntax unified
	.text

	thumb_func_start sub_818D6F4
sub_818D6F4:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D724 @ =0x08178BC1
	str r4, [sp, #0x000]
	ldr r4, _0818D728 @ =0x00004174
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x04
	str r4, [sp, #0x010]
	str r5, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D72C @ =0x085049DC
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x13
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D724: .4byte sub_8178BC0
_0818D728: .4byte 0x00004174
_0818D72C: .4byte 0x085049DC
