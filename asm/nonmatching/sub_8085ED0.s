	.syntax unified
	.text

	thumb_func_start sub_8085ED0
sub_8085ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	mov r12, r1
	movs r0, #0x44
	add r0, r8
	mov r9, r0
	movs r1, #0x44
	add r1, r12
	mov r10, r1
	mov r2, r8
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08085F0A
	mov r3, r9
	movs r0, #0x00
	ldsb r0, [r3, r0]
	negs r2, r0
	movs r0, #0x01
	ldsb r0, [r3, r0]
	negs r0, r0
	b _08085F14
_08085F0A:
	mov r7, r9
	movs r2, #0x01
	ldsb r2, [r7, r2]
	movs r0, #0x00
	ldsb r0, [r7, r0]
_08085F14:
	str r0, [sp, #0x004]
	mov r1, r12
	ldr r0, [r1, #0x08]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08085F34
	mov r3, r10
	movs r0, #0x00
	ldsb r0, [r3, r0]
	negs r5, r0
	movs r0, #0x01
	ldsb r0, [r3, r0]
	negs r0, r0
	b _08085F3E
_08085F34:
	mov r7, r10
	movs r5, #0x01
	ldsb r5, [r7, r5]
	movs r0, #0x00
	ldsb r0, [r7, r0]
_08085F3E:
	lsls r1, r0, #0x08
	mov r0, r12
	ldr r4, [r0, #0x38]
	adds r1, r4, r1
	lsls r0, r2, #0x08
	mov r2, r8
	ldr r3, [r2, #0x38]
	adds r0, r3, r0
	subs r6, r1, r0
	subs r2, r4, r3
	mov r7, r12
	ldr r0, [r7, #0x10]
	mov r7, r8
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	subs r7, r2, r0
	cmp r6, #0x00
	blt _08085F68
	movs r0, #0x01
	str r0, [sp, #0x000]
	b _08085F88
_08085F68:
	ldr r2, [sp, #0x004]
	lsls r1, r2, #0x08
	adds r1, r3, r1
	lsls r0, r5, #0x08
	adds r0, r4, r0
	subs r6, r1, r0
	negs r7, r7
	mvns r0, r6
	asrs r0, r0, #0x1F
	str r0, [sp, #0x000]
	movs r0, #0x02
	ldr r3, [sp, #0x000]
	ands r3, r0
	str r3, [sp, #0x000]
	cmp r3, #0x00
	beq _08085F8C
_08085F88:
	cmp r6, r7
	bgt _0808606A
_08085F8C:
	mov r0, r10
	movs r1, #0x04
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	mov r2, r12
	ldr r5, [r2, #0x3C]
	adds r1, r5, r1
	mov r3, r9
	movs r0, #0x05
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
	mov r2, r8
	ldr r4, [r2, #0x3C]
	adds r0, r4, r0
	subs r3, r1, r0
	subs r0, r5, r4
	str r0, [sp, #0x008]
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r2, r1, r0
	cmp r3, #0x00
	blt _08085FC2
	movs r4, #0x05
	b _08085FE6
_08085FC2:
	mov r3, r9
	movs r1, #0x04
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x08
	adds r1, r4, r1
	mov r3, r10
	movs r0, #0x05
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
	adds r0, r5, r0
	subs r3, r1, r0
	negs r2, r2
	movs r4, #0x00
	cmp r3, #0x00
	blt _08085FE2
	movs r4, #0x06
_08085FE2:
	cmp r4, #0x00
	beq _08085FEA
_08085FE6:
	cmp r3, r2
	bgt _0808606A
_08085FEA:
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	bne _08085FF8
	cmp r4, #0x00
	bne _08085FF8
	movs r7, #0x00
	b _0808600A
_08085FF8:
	adds r1, r6, #0x0
	muls r1, r2
	adds r0, r3, #0x0
	muls r0, r7
	cmp r1, r0
	bgt _0808600A
	adds r6, r3, #0x0
	adds r7, r2, #0x0
	str r4, [sp, #0x000]
_0808600A:
	mov r2, r10
	movs r1, #0x02
	ldsb r1, [r2, r1]
	lsls r1, r1, #0x08
	mov r3, r12
	ldr r5, [r3, #0x40]
	adds r1, r5, r1
	mov r2, r9
	movs r0, #0x03
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x08
	mov r3, r8
	ldr r4, [r3, #0x40]
	adds r0, r4, r0
	subs r3, r1, r0
	subs r0, r5, r4
	str r0, [sp, #0x008]
	mov r1, r12
	ldr r0, [r1, #0x18]
	mov r2, r8
	ldr r1, [r2, #0x18]
	subs r0, r0, r1
	ldr r1, [sp, #0x008]
	subs r2, r1, r0
	cmp r3, #0x00
	blt _08086042
	movs r4, #0x03
	b _08086066
_08086042:
	mov r3, r9
	movs r1, #0x02
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x08
	adds r1, r4, r1
	mov r3, r10
	movs r0, #0x03
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
	adds r0, r5, r0
	subs r3, r1, r0
	negs r2, r2
	mvns r0, r3
	asrs r4, r0, #0x1F
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0808606E
_08086066:
	cmp r3, r2
	ble _0808606E
_0808606A:
	movs r0, #0x00
	b _0808607E
_0808606E:
	adds r1, r6, #0x0
	muls r1, r2
	adds r0, r3, #0x0
	muls r0, r7
	cmp r1, r0
	bgt _0808607C
	str r4, [sp, #0x000]
_0808607C:
	ldr r0, [sp, #0x000]
_0808607E:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
