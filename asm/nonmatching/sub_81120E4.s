	.syntax unified
	.text

	thumb_func_start sub_81120E4
sub_81120E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _081120FA
	adds r0, #0xFF
_081120FA:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08112108
	adds r0, #0xFF
_08112108:
	asrs r2, r0, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08112112
	adds r3, #0xFF
_08112112:
	asrs r3, r3, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	movs r2, #0x3C
	bl sub_8111E30
	ldr r0, _08112138 @ =0x08111C25
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08112138: .4byte sub_8111C24
