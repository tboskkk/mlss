	.syntax unified
	.text

	thumb_func_start sub_818C5EC
sub_818C5EC:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C61C @ =0x08180E79
	str r4, [sp, #0x000]
	ldr r4, _0818C620 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x02
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C624 @ =0x08504CF0
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x3D
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818C61C: .4byte sub_8180E78
_0818C620: .4byte 0x00004165
_0818C624: .4byte 0x08504CF0
