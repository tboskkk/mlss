	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0809F202
	b _0809F326
_0809F202:
	mov r0, r8
	movs r1, #0x19
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _0809F330 @ =0x00004032
	mov r0, r8
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r4, #0x1F
	adds r0, r4, #0x0
	ands r0, r1
	movs r6, #0x40
	orrs r0, r6
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	movs r5, #0x02
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r0, _0809F334 @ =0x0809F345
	str r0, [r7, #0x4C]
	ldr r1, _0809F338 @ =0x00004031
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, _0809F33C @ =0x00004033
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x78
	ldrb r0, [r1, #0x00]
	ands r4, r0
	orrs r4, r6
	strb r4, [r1, #0x00]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	bl sub_807F4FC
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	movs r5, #0x07
_0809F2A6:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _0809F2A6
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r0, _0809F340 @ =0x0809FC51
	str r0, [r7, #0x4C]
	ldr r1, _0809F33C @ =0x00004033
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r7, r0, #0x0
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, #0x01
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	bl sub_807F4FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	mov r1, r8
	str r4, [r1, #0x4C]
_0809F326:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809F330: .4byte 0x00004032
_0809F334: .4byte sub_809F344
_0809F338: .4byte 0x00004031
_0809F33C: .4byte 0x00004033
_0809F340: .4byte sub_809FC50
