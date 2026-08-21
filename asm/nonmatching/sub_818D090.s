	.syntax unified
	.text

	thumb_func_start sub_818D090
sub_818D090:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _0818D0C0 @ =0x0817BDD9
	str r4, [sp, #0x000]
	ldr r4, _0818D0C4 @ =0x0000415B
	str r4, [sp, #0x004]
	movs r5, #0x00
	str r5, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r5, [sp, #0x018]
	ldr r3, _0818D0C8 @ =0x08504ACC
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
_0818D0C0: .4byte sub_817BDD8
_0818D0C4: .4byte 0x0000415B
_0818D0C8: .4byte 0x08504ACC
