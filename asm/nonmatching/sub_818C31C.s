	.syntax unified
	.text

	thumb_func_start sub_818C31C
sub_818C31C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C34C @ =0x081829ED
	str r4, [sp, #0x000]
	ldr r4, _0818C350 @ =0x0000416C
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x03
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C354 @ =0x08504D5C
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0xB5
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818C34C: .4byte sub_81829EC
_0818C350: .4byte 0x0000416C
_0818C354: .4byte 0x08504D5C
