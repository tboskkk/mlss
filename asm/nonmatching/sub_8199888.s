	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	subs r0, #0x01
	ldrb r2, [r0, #0x00]
	adds r3, r2, #0x0
	cmp r2, #0x1F
	bhi _081998C4
	movs r0, #0x1F
	ands r2, r0
	cmp r2, #0x00
	bne _081998AC
	ldrb r1, [r4, #0x12]
	subs r0, #0x40
	ands r0, r1
	strb r0, [r4, #0x12]
	b _08199A1E
_081998AC:
	ldr r0, _081998C0 @ =0x03001074
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _081998B6
	b _08199A1E
_081998B6:
	adds r0, r4, #0x0
	bl _call_via_r2
	b _08199A1E
	.byte 0x00, 0x00
_081998C0: .4byte 0x03001074
_081998C4:
	cmp r2, #0x2F
	bhi _081998F2
	ldrb r1, [r4, #0x11]
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1C
	movs r5, #0x0F
	ands r2, r5
	adds r0, r0, r2
	lsls r0, r0, #0x04
	adds r3, r5, #0x0
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x11]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x1C
	cmp r0, #0x0E
	bhi _081998E8
	b _08199A1E
_081998E8:
	ands r3, r5
	movs r0, #0xE0
	orrs r3, r0
	strb r3, [r4, #0x11]
	b _08199A1E
_081998F2:
	cmp r2, #0x3F
	bhi _081999BC
	movs r0, #0x0F
	ands r2, r0
	lsls r6, r2, #0x18
	lsrs r5, r6, #0x18
	cmp r5, #0x03
	bhi _08199922
	movs r1, #0x01
	movs r3, #0x01
	ands r1, r5
	ldrb r2, [r4, #0x12]
	subs r0, #0x11
	ands r0, r2
	orrs r0, r1
	lsrs r1, r6, #0x19
	ands r1, r3
	lsls r1, r1, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x12]
	b _08199A1E
_08199922:
	cmp r5, #0x06
	bhi _081999A4
	cmp r1, #0x00
	bne _08199A1E
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x14
	bl memcpy
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x008]
	ldr r2, [sp, #0x00C]
	ldr r3, [sp, #0x010]
	bl sub_8199A28
	adds r3, r0, #0x0
	ldrb r2, [r4, #0x12]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1E
	subs r1, r5, #0x4
	cmp r0, r1
	beq _08199A1E
	movs r0, #0x03
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x12]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _0819997A
	cmp r0, #0x01
	bcc _08199974
	cmp r0, #0x02
	beq _08199992
	b _08199A1E
_08199974:
	ldrb r0, [r4, #0x0E]
	strb r0, [r4, #0x0C]
	b _08199A1E
_0819997A:
	ldrb r0, [r4, #0x13]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x03
	ldrb r1, [r4, #0x0E]
	adds r0, r0, r1
	ldrb r1, [r4, #0x0F]
	subs r0, r0, r1
	lsrs r1, r3, #0x10
	subs r0, r0, r1
	lsrs r0, r0, #0x01
	strb r0, [r4, #0x0C]
	b _08199A1E
_08199992:
	ldrb r0, [r4, #0x13]
	lsrs r0, r0, #0x02
	lsls r0, r0, #0x03
	ldrb r1, [r4, #0x0F]
	subs r0, r0, r1
	lsrs r1, r3, #0x10
	subs r0, r0, r1
	strb r0, [r4, #0x0C]
	b _08199A1E
_081999A4:
	cmp r5, #0x08
	bhi _08199A1E
	movs r0, #0x01
	ands r0, r5
	lsls r0, r0, #0x04
	ldrb r2, [r4, #0x12]
	movs r1, #0x11
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x12]
	b _08199A1E
_081999BC:
	cmp r2, #0x4F
	bhi _081999CE
	movs r0, #0x0F
	ands r2, r0
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_8199D48
	b _08199A1E
_081999CE:
	cmp r2, #0x5F
	bhi _081999E8
	movs r0, #0x0F
	ands r2, r0
	lsls r2, r2, #0x06
	ldrh r1, [r4, #0x12]
	ldr r0, _081999E4 @ =0xFFFFFC3F
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #0x12]
	b _08199A1E
_081999E4: .4byte 0xFFFFFC3F
_081999E8:
	lsls r0, r2, #0x18
	cmp r0, #0x00
	blt _081999F8
	ldrb r0, [r4, #0x0C]
	adds r0, #0xA1
	adds r0, r2, r0
	strb r0, [r4, #0x0C]
	b _08199A1E
_081999F8:
	cmp r2, #0x9F
	bhi _08199A06
	ldrb r0, [r4, #0x0C]
	adds r0, #0x7F
	subs r0, r0, r2
	strb r0, [r4, #0x0C]
	b _08199A1E
_08199A06:
	cmp r2, #0xBF
	bhi _08199A12
	ldrb r0, [r4, #0x0D]
	adds r0, #0x61
	adds r0, r2, r0
	b _08199A1C
_08199A12:
	cmp r3, #0xDF
	bhi _08199A1E
	ldrb r0, [r4, #0x0D]
	subs r0, #0x41
	subs r0, r0, r3
_08199A1C:
	strb r0, [r4, #0x0D]
_08199A1E:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
