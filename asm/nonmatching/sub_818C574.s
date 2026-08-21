	.syntax unified
	.text

	thumb_func_start sub_818C574
sub_818C574:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C5A4 @ =0x08181355
	str r4, [sp, #0x000]
	ldr r4, _0818C5A8 @ =0x0000415F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C5AC @ =0x08504CFC
	str r3, [sp, #0x01C]
	movs r3, #0x01
	str r3, [sp, #0x020]
	movs r3, #0xF1
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C5A4: .4byte sub_8181354
_0818C5A8: .4byte 0x0000415F
_0818C5AC: .4byte 0x08504CFC
