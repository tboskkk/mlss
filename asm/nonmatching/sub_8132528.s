	.syntax unified
	.text

	thumb_func_start sub_8132528
sub_8132528:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _08132538
	adds r0, #0xFF
_08132538:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x28
	ldr r2, [r2, #0x3C]
	cmp r2, #0x00
	bge _08132546
	adds r2, #0xFF
_08132546:
	asrs r2, r2, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
	ldr r0, _0813256C @ =0x08132571
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0813256C: .4byte sub_8132570
