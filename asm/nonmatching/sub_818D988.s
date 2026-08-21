	.syntax unified
	.text

	thumb_func_start sub_818D988
sub_818D988:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D9B8 @ =0x08177181
	str r4, [sp, #0x000]
	ldr r4, _0818D9BC @ =0x00004164
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D9C0 @ =0x085048FC
	str r3, [sp, #0x01C]
	movs r3, #0x04
	str r3, [sp, #0x020]
	movs r3, #0x1A
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818D9B8: .4byte sub_8177180
_0818D9BC: .4byte 0x00004164
_0818D9C0: .4byte 0x085048FC
