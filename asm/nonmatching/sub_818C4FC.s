	.syntax unified
	.text

	thumb_func_start sub_818C4FC
sub_818C4FC:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C52C @ =0x081818AD
	str r4, [sp, #0x000]
	ldr r4, _0818C530 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C534 @ =0x08504D04
	str r3, [sp, #0x01C]
	movs r3, #0x01
	str r3, [sp, #0x020]
	movs r3, #0xF1
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C52C: .4byte sub_81818AC
_0818C530: .4byte 0x00004165
_0818C534: .4byte 0x08504D04
