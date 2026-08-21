	.syntax unified
	.text

	thumb_func_start sub_806CAF0
sub_806CAF0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806CB08
	adds r1, #0xFF
_0806CB08:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806CB12
	adds r2, #0xFF
_0806CB12:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806CB1C
	adds r3, #0xFF
_0806CB1C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806CB34 @ =0x00001DE6
	bl sub_80DF024
	ldr r0, _0806CB38 @ =0x0806CBA1
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806CB34: .4byte 0x00001DE6
_0806CB38: .4byte sub_806CBA0
