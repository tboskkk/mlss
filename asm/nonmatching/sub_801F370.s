	.syntax unified
	.text

	thumb_func_start sub_801F370
sub_801F370:
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
	movs r3, #0x00
	ldrh r1, [r1, #0x14]
	cmp r1, #0x00
	beq _0801F3A6
	movs r4, #0x01
_0801F390:
	adds r0, r1, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _0801F39E
	lsls r0, r3, #0x0C
	strh r0, [r2, #0x00]
	adds r2, #0x02
_0801F39E:
	adds r3, #0x01
	asrs r1, r1, #0x01
	cmp r1, #0x00
	bne _0801F390
_0801F3A6:
	mov r1, r8
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	beq _0801F3BE
	mov r0, r8
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0801F3E4
_0801F3BE:
	mov r3, r8
	movs r7, #0x04
	ldsh r0, [r3, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bgt _0801F3E4
	movs r2, #0x06
	ldsh r0, [r3, r2]
	cmp r0, r1
	bgt _0801F3E4
	movs r7, #0x08
	ldsh r0, [r3, r7]
	cmp r0, r1
	bgt _0801F3E4
	movs r2, #0x0A
	ldsh r0, [r3, r2]
	cmp r0, r1
	ble _0801F3EA
_0801F3E4:
	movs r3, #0x03
	str r3, [sp, #0x02C]
	b _0801F404
_0801F3EA:
	mov r7, r8
	ldr r2, [r7, #0x04]
	ldr r0, _0801F608 @ =0x01000100
	movs r1, #0x01
	str r1, [sp, #0x02C]
	cmp r2, r0
	bne _0801F404
	ldr r1, [r7, #0x08]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x02C]
_0801F404:
	ldr r2, [sp, #0x024]
	ldr r2, [r2, #0x00]
	str r2, [sp, #0x030]
	movs r3, #0x00
	str r3, [sp, #0x034]
	ldr r7, [sp, #0x028]
	cmp r3, r7
	blt _0801F416
	b _0801F7B8
_0801F416:
	ldr r0, [sp, #0x030]
	ldrb r1, [r0, #0x04]
	lsrs r2, r1, #0x02
	movs r0, #0x03
	ands r2, r0
	str r2, [sp, #0x038]
	movs r3, #0x03
	str r3, [sp, #0x03C]
	ldr r7, [sp, #0x02C]
	cmp r7, #0x03
	beq _0801F434
	str r7, [sp, #0x03C]
	cmp r2, #0x00
	beq _0801F434
	str r2, [sp, #0x03C]
_0801F434:
	lsrs r0, r1, #0x04
	lsls r0, r0, #0x01
	ldr r1, _0801F60C @ =0x0839EE04
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
	ldrb r5, [r0, #0x01]
	ldr r2, [sp, #0x030]
	movs r6, #0x00
	ldsb r6, [r2, r6]
	movs r4, #0x01
	ldsb r4, [r2, r4]
	ldr r7, [sp, #0x038]
	cmp r7, #0x03
	bne _0801F458
	lsrs r0, r3, #0x01
	adds r6, r6, r0
	lsrs r0, r5, #0x01
	adds r4, r4, r0
_0801F458:
	mov r1, r8
	movs r2, #0x04
	ldsh r0, [r1, r2]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	beq _0801F492
	lsls r3, r3, #0x08
	muls r6, r0
	muls r0, r3
	cmp r0, #0x00
	bge _0801F472
	adds r0, #0xFF
_0801F472:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0801F486
	adds r0, #0xFF
_0801F486:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _0801F490
	adds r0, #0xFF
_0801F490:
	asrs r3, r0, #0x08
_0801F492:
	mov r7, r8
	ldrb r1, [r7, #0x11]
	movs r0, #0x40
	ands r0, r1
	adds r2, r1, #0x0
	cmp r0, #0x00
	beq _0801F4A4
	negs r0, r6
	subs r6, r0, r3
_0801F4A4:
	mov r1, r8
	movs r7, #0x06
	ldsh r0, [r1, r7]
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	beq _0801F4E4
	lsls r5, r5, #0x08
	mov r7, r8
	movs r1, #0x06
	ldsh r0, [r7, r1]
	muls r4, r0
	muls r0, r5
	cmp r0, #0x00
	bge _0801F4C4
	adds r0, #0xFF
_0801F4C4:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _0801F4D8
	adds r0, #0xFF
_0801F4D8:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _0801F4E2
	adds r0, #0xFF
_0801F4E2:
	asrs r5, r0, #0x08
_0801F4E4:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _0801F4F0
	negs r0, r4
	subs r4, r0, r5
_0801F4F0:
	mov r2, r8
	ldrh r0, [r2, #0x0C]
	lsls r1, r0, #0x10
	cmp r1, #0x00
	beq _0801F556
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	mov r9, r0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	mov r10, r0
	lsrs r1, r1, #0x18
	mov r0, r9
	adds r7, r6, r0
	add r4, r10
	mov r12, r4
	lsls r1, r1, #0x01
	ldr r2, _0801F610 @ =0x08198584
	adds r0, r1, r2
	movs r2, #0x00
	ldsh r4, [r0, r2]
	adds r2, r7, #0x0
	muls r2, r4
	ldr r0, _0801F614 @ =0x08198504
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	mov r0, r12
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0x00
	bge _0801F538
	ldr r2, _0801F618 @ =0x00003FFF
	adds r0, r0, r2
_0801F538:
	asrs r0, r0, #0x0E
	mov r2, r9
	subs r6, r0, r2
	negs r0, r7
	muls r1, r0
	mov r0, r12
	muls r0, r4
	adds r0, r1, r0
	cmp r0, #0x00
	bge _0801F550
	ldr r7, _0801F618 @ =0x00003FFF
	adds r0, r0, r7
_0801F550:
	asrs r0, r0, #0x0E
	mov r1, r10
	subs r4, r0, r1
_0801F556:
	mov r2, r8
	ldr r1, [r2, #0x08]
	ldr r0, _0801F608 @ =0x01000100
	cmp r1, r0
	beq _0801F5AE
	movs r7, #0x08
	ldsh r1, [r2, r7]
	adds r0, r6, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F56E
	adds r0, #0xFF
_0801F56E:
	asrs r6, r0, #0x08
	adds r0, r3, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F57A
	adds r0, #0xFF
_0801F57A:
	asrs r0, r0, #0x08
	subs r0, r3, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r6, r6, r0
	mov r0, r8
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	adds r0, r4, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F596
	adds r0, #0xFF
_0801F596:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _0801F5A2
	adds r0, #0xFF
_0801F5A2:
	asrs r0, r0, #0x08
	subs r0, r5, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r4, r4, r0
_0801F5AE:
	ldr r7, [sp, #0x03C]
	cmp r7, #0x03
	bne _0801F5C8
	lsrs r0, r3, #0x1F
	adds r0, r3, r0
	asrs r0, r0, #0x01
	subs r6, r6, r0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	subs r4, r4, r0
	lsls r3, r3, #0x01
	lsls r5, r5, #0x01
_0801F5C8:
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r6, r6, r0
	movs r7, #0x02
	ldsh r0, [r1, r7]
	adds r4, r4, r0
	cmn r6, r3
	bge _0801F5DC
	b _0801F79A
_0801F5DC:
	cmp r6, #0xEF
	ble _0801F5E2
	b _0801F79A
_0801F5E2:
	cmn r4, r5
	bge _0801F5E8
	b _0801F79A
_0801F5E8:
	cmp r4, #0x9F
	ble _0801F5EE
	b _0801F79A
_0801F5EE:
	ldr r1, [sp, #0x030]
	ldrb r0, [r1, #0x04]
	lsrs r0, r0, #0x01
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0801F61C
	mov r2, r8
	ldrb r0, [r2, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r5, r0, #0x0A
	b _0801F624
_0801F608: .4byte 0x01000100
_0801F60C: .4byte 0x0839EE04
_0801F610: .4byte 0x08198584
_0801F614: .4byte 0x08198504
_0801F618: .4byte 0x00003FFF
_0801F61C:
	mov r3, r8
	ldrb r0, [r3, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r5, r0, #0x14
_0801F624:
	lsls r1, r5, #0x14
	mov r7, r8
	ldrh r0, [r7, #0x0E]
	lsls r0, r0, #0x0E
	orrs r1, r0
	ldr r2, [sp, #0x070]
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x07
	orrs r1, r0
	ldr r3, [sp, #0x034]
	orrs r1, r3
	ldr r7, [sp, #0x020]
	str r1, [r7, #0x08]
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x03C]
	cmp r0, #0x00
	beq _0801F6A2
	ldr r1, [sp, #0x038]
	cmp r1, #0x00
	bne _0801F6A2
	ldr r2, [sp, #0x030]
	ldrb r0, [r2, #0x02]
	lsrs r0, r0, #0x02
	str r0, [sp, #0x040]
	movs r0, #0x03
	ldr r3, [sp, #0x040]
	ands r3, r0
	mov r7, r8
	ldrb r0, [r7, #0x11]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1F
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x01
	orrs r1, r0
	eors r3, r1
	str r3, [sp, #0x040]
	ldr r0, [sp, #0x068]
	adds r2, r0, r3
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0801F6A2
	add r1, sp, #0x06C
	ldrb r1, [r1, #0x00]
	strb r1, [r2, #0x00]
	ldr r2, [sp, #0x06C]
	adds r2, #0x01
	str r2, [sp, #0x06C]
	ldrh r2, [r7, #0x10]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x1C
	adds r1, #0x01
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _0801F6F8 @ =0xFFFFFC3F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #0x10]
_0801F6A2:
	movs r0, #0x00
	ldr r3, [sp, #0x020]
	strh r0, [r3, #0x06]
	ldr r7, [sp, #0x020]
	mov r1, r8
	ldrh r0, [r1, #0x10]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ands r1, r0
	ldr r3, [sp, #0x030]
	ldrb r2, [r3, #0x04]
	movs r0, #0xC0
	ands r0, r2
	lsls r0, r0, #0x08
	orrs r1, r0
	ldr r2, [sp, #0x03C]
	lsls r0, r2, #0x08
	orrs r1, r0
	movs r0, #0xFF
	ands r4, r0
	orrs r1, r4
	adds r3, r7, #0x0
	strh r1, [r3, #0x00]
	cmp r2, #0x00
	beq _0801F71C
	ldr r0, [sp, #0x030]
	ldrb r1, [r0, #0x04]
	movs r0, #0x30
	ands r0, r1
	lsls r4, r0, #0x0A
	ldr r3, _0801F6FC @ =0x000001FF
	ands r3, r6
	ldr r1, [sp, #0x038]
	cmp r1, #0x00
	bne _0801F700
	ldr r2, [sp, #0x068]
	ldr r1, [sp, #0x040]
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0801F712
	.byte 0x00, 0x00
_0801F6F8: .4byte 0xFFFFFC3F
_0801F6FC: .4byte 0x000001FF
_0801F700:
	mov r2, r8
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1B
	ldr r1, [sp, #0x030]
	ldrb r2, [r1, #0x02]
	movs r1, #0x0F
	ands r1, r2
	adds r0, r0, r1
_0801F712:
	lsls r0, r0, #0x09
	orrs r0, r4
	orrs r0, r3
	strh r0, [r7, #0x02]
	b _0801F75A
_0801F71C:
	ldr r2, [sp, #0x030]
	ldrb r0, [r2, #0x04]
	movs r3, #0x30
	ands r3, r0
	ldrb r4, [r2, #0x02]
	movs r1, #0x04
	ands r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, r8
	ldrb r2, [r0, #0x11]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	eors r1, r0
	movs r0, #0x08
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r2, r2, #0x07
	lsls r2, r2, #0x03
	eors r0, r2
	orrs r1, r0
	orrs r3, r1
	lsls r3, r3, #0x0A
	ldr r1, _0801F778 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	orrs r3, r6
	ldr r2, [sp, #0x020]
	strh r3, [r2, #0x02]
_0801F75A:
	ldr r3, [sp, #0x030]
	ldrb r0, [r3, #0x02]
	lsrs r3, r0, #0x04
	ldr r0, [sp, #0x064]
	cmp r0, #0x00
	bne _0801F77C
	ldr r1, [sp, #0x030]
	ldrb r2, [r1, #0x03]
	ldrb r1, [r1, #0x04]
	movs r0, #0x01
	ands r0, r1
	lsls r0, r0, #0x08
	orrs r2, r0
	b _0801F780
	.byte 0x00, 0x00
_0801F778: .4byte 0x000001FF
_0801F77C:
	ldr r0, [sp, #0x064]
	ldrb r2, [r0, #0x00]
_0801F780:
	lsls r0, r3, #0x01
	add r0, sp
	ldrh r0, [r0, #0x00]
	orrs r5, r0
	mov r1, r8
	ldrh r0, [r1, #0x2E]
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r5, r0
	strh r5, [r7, #0x04]
	ldr r2, [sp, #0x020]
	ldr r2, [r2, #0x10]
	str r2, [sp, #0x020]
_0801F79A:
	ldr r3, [sp, #0x064]
	cmp r3, #0x00
	beq _0801F7A4
	adds r3, #0x01
	str r3, [sp, #0x064]
_0801F7A4:
	ldr r7, [sp, #0x034]
	adds r7, #0x01
	str r7, [sp, #0x034]
	ldr r0, [sp, #0x030]
	adds r0, #0x05
	str r0, [sp, #0x030]
	ldr r1, [sp, #0x028]
	cmp r7, r1
	bge _0801F7B8
	b _0801F416
_0801F7B8:
	ldr r2, [sp, #0x030]
	ldr r3, [sp, #0x024]
	str r2, [r3, #0x00]
	ldr r0, [sp, #0x020]
	add sp, #0x044
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
