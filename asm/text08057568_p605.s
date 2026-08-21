	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8158764
sub_8158764:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0815878C @ =0x08CDC730
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _0815877C
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x34]
_0815877C:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_815FB14
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0815878C: .4byte 0x08CDC730
