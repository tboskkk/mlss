	.syntax unified
	.text

	thumb_func_start sub_818C40C
sub_818C40C:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C43C @ =0x081822B5
	str r4, [sp, #0x000]
	ldr r4, _0818C440 @ =0x0000415F
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x02
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C444 @ =0x08504D2C
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0xA1
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C43C: .4byte sub_81822B4
_0818C440: .4byte 0x0000415F
_0818C444: .4byte 0x08504D2C
