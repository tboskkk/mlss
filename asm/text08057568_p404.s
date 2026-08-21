	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8077538
sub_8077538:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077550 @ =0x08076575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08077550: .4byte sub_8076574
	thumb_func_start sub_8077554
sub_8077554:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08077560
_0807755A:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_08077560:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807755A
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
