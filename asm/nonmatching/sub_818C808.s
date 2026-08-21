	.syntax unified
	.text

	thumb_func_start sub_818C808
sub_818C808:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C838 @ =0x0817F9AD
	str r4, [sp, #0x000]
	ldr r4, _0818C83C @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x06
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C840 @ =0x08504C7C
	str r3, [sp, #0x01C]
	movs r3, #0x05
	str r3, [sp, #0x020]
	movs r3, #0x15
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C838: .4byte sub_817F9AC
_0818C83C: .4byte 0x00004165
_0818C840: .4byte 0x08504C7C
