	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start get_fobj_screen_pos
get_fobj_screen_pos: @ 08028E88
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r2, #0x0
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08028E9E
	adds r0, #0xFF
_08028E9E:
	asrs r0, r0, #0x08
	ldr r6, _08028ED4 @ =0x0000027E
	adds r1, r4, r6
	movs r6, #0x00
	ldsh r1, [r1, r6]
	subs r0, r0, r1
	str r0, [r5, #0x00]
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08028EBC
	adds r0, #0xFF
_08028EBC:
	asrs r0, r0, #0x08
	movs r2, #0xA0
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r6, #0x00
	ldsh r1, [r1, r6]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08028ED4: .4byte 0x0000027E
	.byte 0xF8, 0x30, 0x02, 0x78, 0x41, 0x21, 0x49, 0x42, 0x11, 0x40, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00
