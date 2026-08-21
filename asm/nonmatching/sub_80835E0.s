	.syntax unified
	.text

	thumb_func_start sub_80835E0
sub_80835E0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	adds r3, r0, #0x0
	ldr r1, [r3, #0x08]
	movs r2, #0x04
	ldsh r0, [r1, r2]
	str r0, [sp, #0x000]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	str r0, [sp, #0x004]
	movs r2, #0x08
	ldsh r0, [r1, r2]
	str r0, [sp, #0x008]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	str r0, [sp, #0x00C]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	mov r10, r0
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x010]
	ldrb r0, [r1, #0x12]
	lsls r2, r0, #0x1D
	lsrs r2, r2, #0x1E
	mov r12, r2
	lsls r0, r0, #0x1B
	lsrs r7, r0, #0x1F
	adds r1, #0x20
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r9, r1
	ldr r0, [r3, #0x28]
	mov r8, r0
	cmp r0, #0x00
	bne _08083636
	b _080837E6
_08083636:
	adds r0, #0x08
	cmp r0, r3
	beq _0808369C
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0808364C
	b _080837E6
_0808364C:
	mov r1, r8
	ldr r2, [r1, #0x10]
	mov r3, sp
	ldrh r3, [r3, #0x00]
	strh r3, [r2, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r2, #0x06]
	mov r1, sp
	ldrh r1, [r1, #0x08]
	strh r1, [r2, #0x08]
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r2, #0x0A]
	mov r0, r10
	strh r0, [r2, #0x0C]
	ldr r1, [sp, #0x010]
	lsls r3, r1, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	mov r0, r12
	lsls r3, r0, #0x01
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	lsls r3, r7, #0x04
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x12]
	adds r2, #0x20
	mov r1, r9
	strb r1, [r2, #0x00]
_0808369C:
	mov r2, r8
	ldr r3, [r2, #0x38]
	cmp r3, #0x00
	beq _08083706
	ldr r0, [sp, #0x010]
	lsls r6, r0, #0x06
	mov r1, r12
	lsls r5, r1, #0x01
	lsls r4, r7, #0x04
_080836AE:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08083700
	ldr r1, [r3, #0x08]
	mov r2, sp
	ldrh r2, [r2, #0x00]
	strh r2, [r1, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x06]
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r1, #0x08]
	mov r0, sp
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0A]
	mov r2, r10
	strh r2, [r1, #0x0C]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r6
	strb r0, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r5
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, #0x12]
	adds r1, #0x20
	mov r0, r9
	strb r0, [r1, #0x00]
_08083700:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _080836AE
_08083706:
	mov r1, r8
	ldr r4, [r1, #0x00]
	cmp r4, #0x00
	beq _080837E6
	cmp r4, r8
	beq _080837E6
	ldr r2, [sp, #0x010]
	lsls r2, r2, #0x06
	str r2, [sp, #0x014]
	adds r0, r7, #0x0
	lsls r3, r0, #0x04
	str r3, [sp, #0x020]
	mov r1, r12
	str r1, [sp, #0x018]
	lsls r2, r1, #0x01
	str r2, [sp, #0x01C]
	str r0, [sp, #0x024]
_08083728:
	ldr r1, [r4, #0x10]
	mov r3, sp
	ldrh r3, [r3, #0x00]
	strh r3, [r1, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x06]
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r1, #0x08]
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r1, #0x0A]
	mov r0, r10
	strh r0, [r1, #0x0C]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	ldr r2, [sp, #0x014]
	orrs r0, r2
	strb r0, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	ldr r3, [sp, #0x01C]
	orrs r0, r3
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	ldr r3, [sp, #0x020]
	orrs r0, r3
	strb r0, [r1, #0x12]
	adds r1, #0x20
	mov r0, r9
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x38]
	cmp r3, #0x00
	beq _080837E0
	ldr r0, [sp, #0x010]
	movs r1, #0x01
	ands r0, r1
	lsls r7, r0, #0x06
	ldr r0, [sp, #0x018]
	lsls r6, r0, #0x01
	ldr r1, [sp, #0x024]
	lsls r5, r1, #0x04
	mov r12, r2
_0808378A:
	adds r0, r3, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080837DA
	ldr r1, [r3, #0x08]
	mov r2, sp
	ldrh r2, [r2, #0x00]
	strh r2, [r1, #0x04]
	mov r0, sp
	ldrh r0, [r0, #0x04]
	strh r0, [r1, #0x06]
	mov r2, sp
	ldrh r2, [r2, #0x08]
	strh r2, [r1, #0x08]
	mov r0, sp
	ldrh r0, [r0, #0x0C]
	strh r0, [r1, #0x0A]
	mov r2, r10
	strh r2, [r1, #0x0C]
	ldrb r2, [r1, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r7
	strb r0, [r1, #0x11]
	ldrb r2, [r1, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	orrs r0, r6
	mov r2, r12
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #0x12]
	adds r1, #0x20
	mov r0, r9
	strb r0, [r1, #0x00]
_080837DA:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _0808378A
_080837E0:
	ldr r4, [r4, #0x00]
	cmp r4, r8
	bne _08083728
_080837E6:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
