	.syntax unified
	.text

	thumb_func_start sub_801F7D0
sub_801F7D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x044
	str r0, [sp, #0x020]
	mov r8, r1
	str r2, [sp, #0x024]
	str r3, [sp, #0x028]
	mov r2, sp
	movs r4, #0x00
	ldrh r1, [r1, #0x14]
	cmp r1, #0x00
	beq _0801F806
	movs r5, #0x01
_0801F7F0:
	adds r0, r1, #0x0
	ands r0, r5
	cmp r0, #0x00
	beq _0801F7FE
	lsls r0, r4, #0x0C
	strh r0, [r2, #0x00]
	adds r2, #0x02
_0801F7FE:
	adds r4, #0x01
	asrs r1, r1, #0x01
	cmp r1, #0x00
	bne _0801F7F0
_0801F806:
	mov r0, r8
	movs r1, #0x0C
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	beq _0801F81C
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801F842
_0801F81C:
	mov r3, r8
	movs r4, #0x04
	ldsh r0, [r3, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801F842
	movs r7, #0x06
	ldsh r0, [r3, r7]
	cmp r0, r1
	bgt _0801F842
	movs r4, #0x08
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _0801F842
	movs r7, #0x0A
	ldsh r0, [r3, r7]
	cmp r0, r1
	ble _0801F846
_0801F842:
	movs r0, #0x03
	b _0801F862
_0801F846:
	movs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r2, #0x00
	bne _0801F864
	mov r3, r8
	ldr r2, [r3, #0x04]
	ldr r0, _0801FAFC @ =0x01000100
	cmp r2, r0
	bne _0801F864
	ldr r1, [r3, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
_0801F862:
	str r0, [sp, #0x02C]
_0801F864:
	mov r4, r8
	ldrb r0, [r4, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x14
	str r0, [sp, #0x030]
	ldr r7, [sp, #0x024]
	ldr r7, [r7, #0x00]
	str r7, [sp, #0x034]
	movs r0, #0x00
	str r0, [sp, #0x038]
	ldr r1, [sp, #0x028]
	cmp r0, r1
	blt _0801F880
	b _0801FB94
_0801F880:
	ldr r2, [sp, #0x034]
	ldrb r2, [r2, #0x03]
	str r2, [sp, #0x03C]
	lsrs r0, r2, #0x04
	lsls r0, r0, #0x01
	ldr r3, _0801FB00 @ =0x0839EE04
	adds r0, r0, r3
	ldrb r4, [r0, #0x00]
	ldrb r6, [r0, #0x01]
	ldr r7, [sp, #0x034]
	movs r5, #0x00
	ldsb r5, [r7, r5]
	movs r3, #0x01
	ldsb r3, [r7, r3]
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801F8D6
	lsls r4, r4, #0x08
	muls r5, r0
	muls r0, r4
	cmp r0, #0x00
	bge _0801F8B6
	adds r0, #0xFF
_0801F8B6:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801F8CA
	adds r0, #0xFF
_0801F8CA:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801F8D4
	adds r0, #0xFF
_0801F8D4:
	asrs r4, r0, #0x08
_0801F8D6:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801F8E8
	negs r0, r5
	subs r5, r0, r4
_0801F8E8:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0801F928
	lsls r6, r6, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r3, r0
	muls r0, r6
	cmp r0, #0x00
	bge _0801F908
	adds r0, #0xFF
_0801F908:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801F91C
	adds r0, #0xFF
_0801F91C:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801F926
	adds r0, #0xFF
_0801F926:
	asrs r6, r0, #0x08
_0801F928:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801F934
	negs r0, r3
	subs r3, r0, r6
_0801F934:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801F99A
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r5, r0
	add r3, r10
	mov r12, r3
	lsls r1, r1, #0x01
	ldr r2, _0801FB04 @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r3, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r3
	ldr r0, _0801FB08 @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801F97C
	ldr r2, _0801FB0C @ =0x00003FFF
	adds r0, r0, r2
_0801F97C:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r5, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r3
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801F994
	ldr r3, _0801FB0C @ =0x00003FFF
	adds r0, r0, r3
_0801F994:
	asrs r0, r0, #0x0E
	mov r7, r10
	subs r3, r0, r7
_0801F99A:
	mov r0, r8
	ldr r1, [r0, #0x08]
	ldr r0, _0801FAFC @ =0x01000100
	cmp r1, r0
	beq _0801F9F4
	mov r2, r8
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9B4
	adds r0, #0xFF
_0801F9B4:
	asrs r5, r0, #0x08
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9C0
	adds r0, #0xFF
_0801F9C0:
	asrs r0, r0, #0x08
	subs r0, r4, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r5, r5, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9DC
	adds r0, #0xFF
_0801F9DC:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F9E8
	adds r0, #0xFF
_0801F9E8:
	asrs r0, r0, #0x08
	subs r0, r6, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r3, r3, r0
_0801F9F4:
	ldr r7, [sp, #0x02C]
	cmp r7, #0x03
	bne _0801FA0E
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	subs r5, r5, r0
	lsrs r0, r6, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	subs r3, r3, r0
	lsls r4, r4, #0x01
	lsls r6, r6, #0x01
_0801FA0E:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r5, r5, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r3, r3, r0
	cmn r5, r4
	bge _0801FA22
	b _0801FB74
_0801FA22:
	cmp r5, #0xEF
	ble _0801FA28
	b _0801FB74
_0801FA28:
	cmn r3, r6
	bge _0801FA2E
	b _0801FB74
_0801FA2E:
	cmp r3, #0x9F
	ble _0801FA34
	b _0801FB74
_0801FA34:
	ldr r0, [sp, #0x030]
	lsls r1, r0, #0x14
	mov r2, r8
	ldrh r0, [r2, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r4, [sp, #0x070]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r7, [sp, #0x038]
	orrs r1, r7
	ldr r0, [sp, #0x020]
	str r1, [r0, #0x08]
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r1, [sp, #0x02C]
	cmp r1, #0x00
	beq _0801FAAA
	ldr r2, [sp, #0x03C]
	lsrs r2, r2, #0x02
	str r2, [sp, #0x040]
	movs r0, #0x03
	ands r2, r0
	mov r4, r8
	ldrb r0, [r4, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r2, r1
	str r2, [sp, #0x040]
	ldr r7, [sp, #0x068]
	adds r2, r7, r2
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801FAAA
	add r0, sp, #0x06C
	ldrb r0, [r0, #0x00]
	strb r0, [r2, #0x00]
	ldr r1, [sp, #0x06C]
	adds r1, #0x01
	str r1, [sp, #0x06C]
	ldrh r2, [r4, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801FB10 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x10]
_0801FAAA:
	movs r0, #0x00
	ldr r2, [sp, #0x020]
	strh r0, [r2, #0x06]
	ldr r4, [sp, #0x020]
	mov r7, r8
	ldrh r0, [r7, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	movs r0, #0xC0
	ldr r2, [sp, #0x03C]
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r7, [sp, #0x02C]
	lsls r0, r7, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r3, r0
	orrs r1, r3
	strh r1, [r4, #0x00]
	cmp r7, #0x00
	beq _0801FB18
	movs r1, #0x30
	ands r1, r2
	lsls r1, r1, #0x0A
	ldr r2, [sp, #0x068]
	ldr r3, [sp, #0x040]
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x09
	orrs r1, r0
	ldr r7, _0801FB14 @ =0x000001FF
	adds r0, r7, #0x0
	ands r5, r0
	orrs r1, r5
	ldr r0, [sp, #0x020]
	strh r1, [r0, #0x02]
	b _0801FB3E
_0801FAFC: .4byte 0x01000100
_0801FB00: .4byte 0x0839EE04
_0801FB04: .4byte 0x08198584
_0801FB08: .4byte 0x08198504
_0801FB0C: .4byte 0x00003FFF
_0801FB10: .4byte 0xFFFFFC3F
_0801FB14: .4byte 0x000001FF
_0801FB18:
	movs r2, #0x3C
	ldr r1, [sp, #0x03C]
	ands r2, r1
	mov r3, r8
	ldrb r1, [r3, #0x11]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x03
	orrs r0, r1
	eors r2, r0
	lsls r2, r2, #0x0A
	ldr r7, _0801FB50 @ =0x000001FF
	adds r0, r7, #0x0
	ands r5, r0
	orrs r2, r5
	ldr r0, [sp, #0x020]
	strh r2, [r0, #0x02]
_0801FB3E:
	movs r0, #0x03
	ldr r1, [sp, #0x03C]
	ands r0, r1
	ldr r2, [sp, #0x064]
	cmp r2, #0x00
	bne _0801FB54
	ldr r3, [sp, #0x034]
	ldrb r2, [r3, #0x02]
	b _0801FB58
_0801FB50: .4byte 0x000001FF
_0801FB54:
	ldr r7, [sp, #0x064]
	ldrb r2, [r7, #0x00]
_0801FB58:
	lsls r0, r0, #0x01
	add r0, sp
	ldrh r0, [r0, #0x00]
	ldr r1, [sp, #0x030]
	orrs r1, r0
	mov r3, r8
	ldrh r0, [r3, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r4, #0x04]
	ldr r4, [sp, #0x020]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x020]
_0801FB74:
	ldr r7, [sp, #0x064]
	cmp r7, #0x00
	beq _0801FB80
	adds r0, r7, #0x0
	adds r0, #0x01
	str r0, [sp, #0x064]
_0801FB80:
	ldr r1, [sp, #0x038]
	adds r1, #0x01
	str r1, [sp, #0x038]
	ldr r2, [sp, #0x034]
	adds r2, #0x04
	str r2, [sp, #0x034]
	ldr r3, [sp, #0x028]
	cmp r1, r3
	bge _0801FB94
	b _0801F880
_0801FB94:
	ldr r4, [sp, #0x034]
	ldr r7, [sp, #0x024]
	str r4, [r7, #0x00]
	ldr r0, [sp, #0x020]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
