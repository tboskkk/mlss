	.syntax unified
	.text

	thumb_func_start sub_818C718
sub_818C718:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C748 @ =0x0818036D
	str r4, [sp, #0x000]
	ldr r4, _0818C74C @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x0A
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C750 @ =0x08504CB4
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x1F
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C748: .4byte sub_818036C
_0818C74C: .4byte 0x00004165
_0818C750: .4byte 0x08504CB4
