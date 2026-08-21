	.syntax unified
	.text

	thumb_func_start sub_818C664
sub_818C664:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C694 @ =0x08180989
	str r4, [sp, #0x000]
	ldr r4, _0818C698 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C69C @ =0x08504CD0
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x79
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C694: .4byte sub_8180988
_0818C698: .4byte 0x00004165
_0818C69C: .4byte 0x08504CD0
