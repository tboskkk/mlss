	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81631F0
sub_81631F0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x00]
	str r0, [r4, #0x10]
	ldr r3, [r4, #0x04]
	str r3, [r4, #0x14]
	str r1, [r4, #0x08]
	str r2, [r4, #0x0C]
	subs r0, r0, r1
	asrs r0, r0, #0x08
	subs r3, r3, r2
	asrs r3, r3, #0x08
	ldr r2, _08163234 @ =0x03001038
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	str r0, [r4, #0x28]
	cmp r0, #0x00
	bge _08163226
	movs r0, #0x01
	str r0, [r4, #0x28]
_08163226:
	movs r0, #0x00
	str r0, [r4, #0x2C]
	movs r0, #0x02
	str r0, [r4, #0x24]
	pop {r4}
	pop {r0}
	bx r0
_08163234: .4byte 0x03001038
	thumb_func_start sub_8163238
sub_8163238:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [sp, #0x00C]
	ldr r0, [r5, #0x00]
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x14]
	str r1, [r5, #0x08]
	str r2, [r5, #0x0C]
	str r3, [r5, #0x28]
	movs r0, #0x00
	str r0, [r5, #0x2C]
	cmp r4, #0x00
	bne _08163258
	movs r0, #0x01
	b _0816325A
_08163258:
	movs r0, #0x02
_0816325A:
	str r0, [r5, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
