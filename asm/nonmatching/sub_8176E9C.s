	.syntax unified
	.text

	thumb_func_start sub_8176E9C
sub_8176E9C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _08176ECC @ =0x08172C2D
	str r4, [sp, #0x000]
	ldr r4, _08176ED0 @ =0x0000207C
	str r4, [sp, #0x004]
	movs r4, #0x0C
	str r4, [sp, #0x008]
	movs r4, #0x00
	str r4, [sp, #0x00C]
	movs r4, #0x02
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _08176ED4 @ =0x085047B4
	str r3, [sp, #0x01C]
	str r4, [sp, #0x020]
	movs r3, #0x00
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_08176ECC: .4byte sub_8172C2C
_08176ED0: .4byte 0x0000207C
_08176ED4: .4byte 0x085047B4
