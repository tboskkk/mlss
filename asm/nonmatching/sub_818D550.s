	.syntax unified
	.text

	thumb_func_start sub_818D550
sub_818D550:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D584 @ =0x081799CD
	str r4, [sp, #0x000]
	ldr r4, _0818D588 @ =0x0000415B
	str r4, [sp, #0x004]
	movs r4, #0x04
	str r4, [sp, #0x008]
	movs r5, #0x00
	str r5, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D58C @ =0x08504A20
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
_0818D584: .4byte sub_81799CC
_0818D588: .4byte 0x0000415B
_0818D58C: .4byte 0x08504A20
