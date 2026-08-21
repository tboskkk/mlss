	.syntax unified
	.text

	thumb_func_start sub_818CA24
sub_818CA24:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818CA54 @ =0x0817EBA5
	str r4, [sp, #0x000]
	ldr r4, _0818CA58 @ =0x00004184
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818CA5C @ =0x08504C28
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x0C
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818CA54: .4byte sub_817EBA4
_0818CA58: .4byte 0x00004184
_0818CA5C: .4byte 0x08504C28
