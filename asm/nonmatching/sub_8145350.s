	.syntax unified
	.text

	thumb_func_start sub_8145350
sub_8145350:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	bl sub_81457C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08145372
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814537C
_08145372:
	ldr r0, _08145378 @ =0x08144CD5
	str r0, [r6, #0x00]
	b _0814549E
_08145378: .4byte sub_8144CD4
_0814537C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08145390
	b _0814549E
_08145390:
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x05
	beq _081453A2
	cmp r0, #0x08
	beq _081453A2
	cmp r0, #0x0B
	bne _081453BC
_081453A2:
	ldr r0, _081453B8 @ =0x081454A9
	str r0, [r6, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _0814549E
_081453B8: .4byte sub_81454A8
_081453BC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
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
	beq _081453F2
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r2, r0, #0x0D
	movs r0, #0x07
	ands r2, r0
	b _081453F6
_081453F2:
	movs r2, #0x01
	negs r2, r2
_081453F6:
	adds r3, r5, #0x0
	adds r3, #0x24
	movs r0, #0x07
	ands r2, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, _08145444 @ =0x03001038
	ldr r0, _08145448 @ =0x0819832C
	ldr r1, _0814544C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, #0x01
	beq _0814546C
	cmp r0, #0x01
	bgt _08145450
	cmp r0, #0x00
	beq _0814545A
	b _08145482
	.byte 0x00, 0x00
_08145444: .4byte 0x03001038
_08145448: .4byte 0x0819832C
_0814544C: .4byte 0x08198220
_08145450:
	cmp r0, #0x02
	beq _0814547A
	cmp r0, #0x03
	beq _08145462
	b _08145482
_0814545A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x05
	b _08145480
_08145462:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814546C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	movs r1, #0x08
	b _08145480
_0814547A:
	ldr r0, [r4, #0x00]
	adds r0, #0x21
	movs r1, #0x0B
_08145480:
	strb r1, [r0, #0x00]
_08145482:
	adds r0, r5, #0x0
	bl sub_8047928
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0814549E:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
