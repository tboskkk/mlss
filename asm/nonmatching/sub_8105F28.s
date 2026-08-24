	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _08105F48
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _08105FFC
_08105F48:
	ldr r0, _0810600C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _08106010 @ =0x0000033F
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r7, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x08]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	mov r10, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08106014 @ =0x00002088
	adds r0, r4, #0x0
	bl sub_807FB78
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08105FAC
	adds r0, #0xFF
_08105FAC:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x3C]
	ldr r0, [r5, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08105FBC
	adds r0, #0xFF
_08105FBC:
	asrs r1, r0, #0x08
	adds r0, r7, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r1, r7, #0x0
	adds r1, #0xCD
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	strh r0, [r4, #0x02]
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	mov r1, r10
	orrs r0, r1
	strb r0, [r4, #0x12]
	ldr r0, _08106018 @ =0x00000155
	mov r1, r9
	bl play_sfx_80195B4
	movs r0, #0x40
	strh r0, [r6, #0x10]
	ldr r1, _0810601C @ =0x08106841
	str r1, [r6, #0x04]
	adds r0, r6, #0x0
	bl _call_via_r1
_08105FFC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810600C: .4byte 0x03000FD8
_08106010: .4byte 0x0000033F
_08106014: .4byte 0x00002088
_08106018: .4byte 0x00000155
_0810601C: .4byte sub_8106840
