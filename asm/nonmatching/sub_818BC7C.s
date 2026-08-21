	.syntax unified
	.text

	thumb_func_start sub_818BC7C
sub_818BC7C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818BCAC @ =0x08185B41
	str r4, [sp, #0x000]
	ldr r4, _0818BCB0 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818BCB4 @ =0x08504EAC
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x22
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818BCAC: .4byte sub_8185B40
_0818BCB0: .4byte 0x00004165
_0818BCB4: .4byte 0x08504EAC
