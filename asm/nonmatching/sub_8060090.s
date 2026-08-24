	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806016C
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080600B8
	adds r0, #0xFF
_080600B8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080600C6
	adds r3, #0xFF
_080600C6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080600D0
	adds r0, #0xFF
_080600D0:
	asrs r0, r0, #0x08
	adds r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08060174 @ =0x0000410E
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r5, r0
	lsls r5, r5, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r5
	strb r1, [r3, #0x00]
	ldr r0, _08060178 @ =0x0806021D
	str r0, [r4, #0x4C]
	ldr r0, _0806017C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08060180 @ =0x080601D5
	str r0, [r4, #0x58]
	ldr r0, _08060184 @ =0x0806018D
	str r0, [r4, #0x5C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r4, #0x74
	strb r0, [r4, #0x00]
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08060188 @ =0x080602B5
	str r0, [r6, #0x4C]
_0806016C:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08060174: .4byte 0x0000410E
_08060178: .4byte sub_806021C
_0806017C: .4byte sub_8087540
_08060180: .4byte sub_80601D4
_08060184: .4byte sub_806018C
_08060188: .4byte sub_80602B4
