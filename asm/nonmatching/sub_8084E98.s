	.syntax unified
	.text

	thumb_func_start sub_8084E98
sub_8084E98:
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0x0
	ldr r7, [sp, #0x014]
	ldr r5, [sp, #0x018]
	lsls r1, r4, #0x02
	adds r1, r1, r4
	lsls r1, r1, #0x07
	lsls r3, r3, #0x05
	adds r1, r1, r3
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0xA2
	lsls r3, r3, #0x02
	adds r2, r0, r3
	lsls r3, r1, #0x01
	ldr r2, [r2, #0x00]
	adds r6, r2, r3
	subs r4, r5, #0x1
	lsls r2, r4, #0x05
	adds r2, r2, r7
	bl sub_8084614
	b _08084F1C
_08084EC8:
	subs r1, r7, #0x1
	subs r4, r5, #0x1
	adds r5, r6, #0x0
	adds r5, #0x40
	cmp r1, #0x00
	blt _08084F1A
	movs r3, #0x00
	lsls r0, r1, #0x01
	adds r2, r0, r6
	movs r0, #0x03
	bics r0, r1
	cmp r1, #0x00
	blt _08084EFA
	cmp r0, #0x00
	beq _08084F04
	cmp r0, #0x03
	bge _08084EFA
	cmp r0, #0x02
	bge _08084EF4
	strh r3, [r2, #0x00]
	subs r2, #0x02
	subs r1, #0x01
_08084EF4:
	strh r3, [r2, #0x00]
	subs r2, #0x02
	subs r1, #0x01
_08084EFA:
	strh r3, [r2, #0x00]
	subs r2, #0x02
	subs r1, #0x01
	cmp r1, #0x00
	blt _08084F1A
_08084F04:
	strh r3, [r2, #0x00]
	subs r0, r2, #0x2
	strh r3, [r0, #0x00]
	subs r0, r2, #0x4
	strh r3, [r0, #0x00]
	subs r0, r2, #0x6
	strh r3, [r0, #0x00]
	subs r2, #0x08
	subs r1, #0x04
	cmp r1, #0x00
	bge _08084F04
_08084F1A:
	adds r6, r5, #0x0
_08084F1C:
	adds r5, r4, #0x0
	cmp r5, #0x00
	bge _08084EC8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
