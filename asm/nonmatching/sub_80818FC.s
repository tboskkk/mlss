	.syntax unified
	.text

	thumb_func_start sub_80818FC
sub_80818FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r5, [r7, #0x08]
	adds r0, r5, #0x0
	bl sub_8081444
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	bl sub_81DD77C
	adds r6, r0, #0x1
	ldr r0, _08081940 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0D]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0808192E
	lsls r6, r6, #0x01
_0808192E:
	ldr r0, [r5, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xF6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r6
	bgt _08081944
	movs r0, #0x00
	b _08081948
_08081940: .4byte 0x03000FD8
_08081944:
	ldrh r0, [r1, #0x00]
	subs r0, r0, r6
_08081948:
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08081952
	adds r1, #0xFF
_08081952:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0808195C
	adds r2, #0xFF
_0808195C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08081966
	adds r3, #0xFF
_08081966:
	asrs r3, r3, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	movs r4, #0x01
	str r4, [sp, #0x000]
	movs r0, #0x0B
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	bl sub_807CC3C
	ldr r0, _08081A4C @ =0x084FB814
	ldrh r2, [r0, #0x0A]
	ldr r0, _08081A50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _08081A54 @ =0x000002BE
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	ands r4, r0
	cmp r4, #0x00
	beq _0808199C
	adds r2, #0x01
_0808199C:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x04
	strh r0, [r7, #0x10]
	ldr r0, _08081A58 @ =0x03001038
	mov r9, r0
	ldr r1, _08081A5C @ =0x0819832C
	ldr r0, _08081A60 @ =0x08198220
	subs r4, r1, r0
	mov r1, r9
	ldr r0, [r1, #0x00]
	adds r3, r0, r4
	ldr r1, [r5, #0x28]
	adds r1, #0xD8
	movs r2, #0x03
	mov r8, r2
	ldr r0, [r5, #0x38]
	mov r2, r8
	muls r2, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _080819DE
	adds r0, #0xFF
_080819DE:
	asrs r0, r0, #0x08
	movs r1, #0x04
	bl _call_via_r3
	adds r6, r0, #0x0
	mov r3, r9
	ldr r0, [r3, #0x00]
	adds r2, r0, r4
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	mov r3, r8
	muls r3, r1
	adds r1, r3, #0x0
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08081A04
	adds r0, #0xFF
_08081A04:
	asrs r0, r0, #0x08
	movs r1, #0x04
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r5, #0x40]
	cmp r2, #0x00
	bge _08081A26
	adds r2, #0xFF
_08081A26:
	asrs r2, r2, #0x08
	adds r2, #0x18
	adds r0, r5, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldrh r0, [r7, #0x10]
	subs r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08081A64 @ =0x08081C7D
	str r0, [r7, #0x04]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081A4C: .4byte word_84FB814 @ =0x084FB814
_08081A50: .4byte 0x03000FD8
_08081A54: .4byte 0x000002BE
_08081A58: .4byte 0x03001038
_08081A5C: .4byte 0x0819832C
_08081A60: .4byte 0x08198220
_08081A64: .4byte sub_8081C7C
