	.syntax unified
	.text

	thumb_func_start sub_8176948
sub_8176948:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176978 @ =0x08174E9D
	str r4, [sp, #0x000]
	ldr r4, _0817697C @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x02
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176980 @ =0x0850485C
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176978: .4byte sub_8174E9C
_0817697C: .4byte 0x0000207D
_08176980: .4byte 0x0850485C
