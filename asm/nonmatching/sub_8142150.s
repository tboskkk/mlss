	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814217E
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814218A
_0814217E:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814218A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x40
	ldrb r1, [r0, #0x00]
	ldr r2, _081421E4 @ =0x00000239
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081421E8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _081421EC
_081421E4: .4byte 0x00000239
_081421E8:
	movs r3, #0x01
	negs r3, r3
_081421EC:
	adds r2, r5, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _08142258 @ =0x03001038
	ldr r1, _0814225C @ =0x0819832C
	ldr r2, _08142260 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	adds r2, #0x0E
	adds r1, r6, r2
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	ldr r0, _08142264 @ =0x08142269
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142258: .4byte 0x03001038
_0814225C: .4byte 0x0819832C
_08142260: .4byte 0x08198220
_08142264: .4byte sub_8142268
