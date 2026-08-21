	.syntax unified
	.text

	thumb_func_start sub_814C6F8
sub_814C6F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r5, r6, #0x0
	adds r5, #0x58
	add r7, sp, #0x004
	adds r1, r7, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C726
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814C72A
_0814C726:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
_0814C72A:
	strb r0, [r7, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0814C7AA
	ldr r1, [r3, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r6, #0x10]
	subs r0, r1, r0
	adds r3, r2, #0x0
	cmp r2, #0x00
	bge _0814C756
	negs r3, r2
_0814C756:
	adds r1, r0, #0x0
	cmp r0, #0x00
	bge _0814C75E
	negs r1, r0
_0814C75E:
	cmp r3, r1
	ble _0814C77C
	movs r3, #0x02
	cmp r2, #0x00
	bge _0814C76A
	movs r3, #0x06
_0814C76A:
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r2, [r0, #0x00]
	movs r1, #0x08
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x00]
	b _0814C794
_0814C77C:
	mvns r1, r0
	asrs r1, r1, #0x1F
	movs r0, #0x04
	adds r2, r6, #0x0
	adds r2, #0x24
	ands r1, r0
	ldrb r3, [r2, #0x00]
	subs r0, #0x0C
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r2, #0x0
_0814C794:
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	adds r3, r6, #0x0
	adds r3, #0x4C
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814C7AA:
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	cmp r0, #0x04
	bne _0814C894
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0814C894
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r2, #0x2A
	ldsh r1, [r1, r2]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814C894
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r2, [r1, #0x00]
	adds r1, r2, #0x0
	adds r1, #0x34
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bcs _0814C814
	adds r0, r2, #0x0
	adds r0, #0x37
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r4, #0xBD
	lsls r4, r4, #0x01
	adds r0, r5, r4
	strh r1, [r0, #0x00]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	b _0814C82A
_0814C814:
	adds r0, r2, #0x0
	adds r0, #0x36
	movs r1, #0x00
	ldsb r1, [r0, r1]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r0, r5, r3
	strh r1, [r0, #0x00]
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r5, r4
_0814C82A:
	strh r1, [r0, #0x00]
	ldr r2, _0814C888 @ =0x03001038
	ldr r0, _0814C88C @ =0x0819832C
	ldr r1, _0814C890 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x08
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r2, [r1, #0x00]
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r2, #0x20
	strb r0, [r2, #0x00]
	movs r4, #0xBE
	lsls r4, r4, #0x01
	adds r1, r5, r4
	movs r0, #0x08
	strh r0, [r1, #0x00]
	b _0814C9D6
	.byte 0x00, 0x00
_0814C888: .4byte 0x03001038
_0814C88C: .4byte 0x0819832C
_0814C890: .4byte 0x08198220
_0814C894:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0814C93C
	movs r1, #0xBE
	lsls r1, r1, #0x01
	adds r7, r5, r1
	ldrh r0, [r7, #0x00]
	cmp r0, #0x08
	bne _0814C93C
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r5, r3
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x00
	beq _0814C8C8
	b _0814C9D6
_0814C8C8:
	movs r4, #0xBC
	lsls r4, r4, #0x01
	adds r0, r5, r4
	ldrh r1, [r0, #0x00]
	subs r4, #0x20
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	adds r0, #0x37
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0814C902
	ldr r0, [r2, #0x00]
	adds r0, #0x21
	movs r4, #0x0C
	strb r4, [r0, #0x00]
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r1, [r1, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	strh r4, [r7, #0x00]
	b _0814C9D6
_0814C902:
	ldr r2, _0814C930 @ =0x03001038
	ldr r0, _0814C934 @ =0x0819832C
	ldr r1, _0814C938 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x0C
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x0C
	strh r0, [r7, #0x00]
	b _0814C9D6
_0814C930: .4byte 0x03001038
_0814C934: .4byte 0x0819832C
_0814C938: .4byte 0x08198220
_0814C93C:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0814C9A0
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0814C990
	adds r0, r2, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _0814C990
	adds r0, r2, #0x0
	adds r0, #0x20
	movs r4, #0x2A
	ldsh r1, [r2, r4]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814C990
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0814C98C @ =0x0814C9E9
	mov r1, r8
	str r0, [r1, #0x00]
	b _0814C9D6
_0814C98C: .4byte sub_814C9E8
_0814C990:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0814C9D6
_0814C9A0:
	movs r3, #0xBE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldrh r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0814C9D6
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r0, r6, r4
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814C9D6
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r2, #0x2A
	ldsh r1, [r1, r2]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0814C9D6
	ldr r0, _0814C9E4 @ =0x0814CC85
	mov r3, r8
	str r0, [r3, #0x00]
_0814C9D6:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814C9E4: .4byte sub_814CC84
