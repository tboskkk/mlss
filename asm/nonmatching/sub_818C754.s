	.syntax unified
	.text

	thumb_func_start sub_818C754
sub_818C754:
	push {r4, lr}
	add sp, #-0x024
	ldr r4, _0818C784 @ =0x08180109
	str r4, [sp, #0x000]
	ldr r4, _0818C788 @ =0x00004165
	str r4, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r4, #0x08
	str r4, [sp, #0x010]
	str r3, [sp, #0x014]
	str r3, [sp, #0x018]
	ldr r3, _0818C78C @ =0x08504CA8
	str r3, [sp, #0x01C]
	movs r3, #0x03
	str r3, [sp, #0x020]
	movs r3, #0x47
	bl sub_80DEEA8
	add sp, #0x024
	pop {r4}
	pop {r0}
	bx r0
_0818C784: .4byte sub_8180108
_0818C788: .4byte 0x00004165
_0818C78C: .4byte 0x08504CA8
