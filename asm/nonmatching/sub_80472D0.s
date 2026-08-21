	.syntax unified
	.text

	thumb_func_start sub_80472D0
sub_80472D0:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r0, r1, #0x0
	adds r6, r2, #0x0
	cmp r0, #0x00
	beq _08047336
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	adds r4, r3, r1
	movs r7, #0x0F
	movs r0, #0xF0
	lsls r0, r0, #0x09
	ands r2, r0
	ldr r3, [r4, #0x00]
	ldr r5, _08047314 @ =0xFFFE1FFF
	ands r3, r5
	orrs r3, r2
	str r3, [r4, #0x00]
	cmp r6, #0x00
	beq _08047318
	lsls r0, r3, #0x0F
	lsrs r0, r0, #0x1C
	cmp r0, #0x0E
	bhi _08047358
	adds r1, r0, #0x1
	ands r1, r7
	lsls r1, r1, #0x0D
	adds r0, r5, #0x0
	ands r0, r3
	orrs r0, r1
	str r0, [r4, #0x00]
	b _08047358
_08047314: .4byte 0xFFFE1FFF
_08047318:
	movs r0, #0xF0
	lsls r0, r0, #0x09
	ands r0, r3
	cmp r0, #0x00
	beq _08047358
	lsls r0, r3, #0x0F
	lsrs r0, r0, #0x1C
	subs r0, #0x01
	ands r0, r7
	lsls r0, r0, #0x0D
	adds r1, r5, #0x0
	ands r1, r3
	orrs r1, r0
	str r1, [r4, #0x00]
	b _08047358
_08047336:
	cmp r6, #0x00
	beq _0804734A
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x09
	orrs r1, r2
	b _08047356
_0804734A:
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r1, [r0, #0x00]
	ldr r2, _08047360 @ =0xFFFE1FFF
	ands r1, r2
_08047356:
	str r1, [r0, #0x00]
_08047358:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047360: .4byte 0xFFFE1FFF
