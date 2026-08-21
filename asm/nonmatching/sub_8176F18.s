	.syntax unified
	.text

	thumb_func_start sub_8176F18
sub_8176F18:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176F48 @ =0x081728A5
	str r4, [sp, #0x000]
	ldr r4, _08176F4C @ =0x0000207D
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x01
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176F50 @ =0x085047A0
	str r3, [sp, #0x01C]
	movs r3, #0x02
	str r3, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176F48: .4byte sub_81728A4
_08176F4C: .4byte 0x0000207D
_08176F50: .4byte 0x085047A0
