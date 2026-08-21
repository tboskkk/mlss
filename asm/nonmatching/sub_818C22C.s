	.syntax unified
	.text

	thumb_func_start sub_818C22C
sub_818C22C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C25C @ =0x08183135
	str r4, [sp, #0x000]
	ldr r4, _0818C260 @ =0x0000416E
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C264 @ =0x08504D90
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x83
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C25C: .4byte sub_8183134
_0818C260: .4byte 0x0000416E
_0818C264: .4byte 0x08504D90
