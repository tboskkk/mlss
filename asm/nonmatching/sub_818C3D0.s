	.syntax unified
	.text

	thumb_func_start sub_818C3D0
sub_818C3D0:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C400 @ =0x0818251D
	str r4, [sp, #0x000]
	ldr r4, _0818C404 @ =0x0000415F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x02
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C408 @ =0x08504D38
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0xA1
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C400: .4byte sub_818251C
_0818C404: .4byte 0x0000415F
_0818C408: .4byte 0x08504D38
