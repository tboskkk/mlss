	.syntax unified
	.text

	thumb_func_start sub_8176D70
sub_8176D70:
	push {r4, r5, lr}
	add sp, #-0x024
	ldr r4, _08176DA4 @ =0x08173205
	str r4, [sp, #0x000]
	movs r4, #0x82
	lsls r4, r4, #0x06
	str r4, [sp, #0x004]
	movs r5, #0x02
	str r5, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x05
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176DA8 @ =0x085047CC
	str r3, [sp, #0x01C]
	str r5, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08176DA4: .4byte sub_8173204
_08176DA8: .4byte 0x085047CC
