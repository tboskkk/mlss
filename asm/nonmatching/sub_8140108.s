	.syntax unified
	.text

	thumb_func_start sub_8140108
sub_8140108:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r2, #0x0
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814018C @ =0x0000020D
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08140190 @ =0x0000020F
	adds r2, r5, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	movs r4, #0x00
	strh r0, [r1, #0x00]
	ldrh r3, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	lsls r3, r3, #0x01
	adds r3, r3, r0
	ldrh r2, [r3, #0x2A]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	ldrh r3, [r3, #0x22]
	adds r1, r1, r3
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_813B394
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140194
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081401A0
	.byte 0x00, 0x00
_0814018C: .4byte 0x0000020D
_08140190: .4byte 0x0000020F
_08140194:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081401A0:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	ldr r1, [r2, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081401D4
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r0, r0, #0x0D
	movs r1, #0x07
	ands r0, r1
	asrs r1, r0, #0x01
	b _081401D6
_081401D4:
	movs r1, #0x00
_081401D6:
	adds r0, r5, #0x0
	movs r2, #0x07
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081401FC @ =0x08140201
	str r0, [r7, #0x00]
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081401FC: .4byte sub_8140200
