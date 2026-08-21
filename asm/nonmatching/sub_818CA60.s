	.syntax unified
	.text

	thumb_func_start sub_818CA60
sub_818CA60:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CA90 @ =0x0817EA9D
	str r4, [sp, #0x000]
	ldr r4, _0818CA94 @ =0x000040DC
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CA98 @ =0x08504C24
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x41
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818CA90: .4byte sub_817EA9C
_0818CA94: .4byte 0x000040DC
_0818CA98: .4byte 0x08504C24
