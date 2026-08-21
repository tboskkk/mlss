	.syntax unified
	.text

	thumb_func_start sub_818D94C
sub_818D94C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818D97C @ =0x081773F9
	str r4, [sp, #0x000]
	ldr r4, _0818D980 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818D984 @ =0x0850490C
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x22
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0818D97C: .4byte sub_81773F8
_0818D980: .4byte 0x00004165
_0818D984: .4byte 0x0850490C
