	.syntax unified
	.text

	thumb_func_start sub_8088858
sub_8088858:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	mov r12, r0
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x3C]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	mov r0, r12
	adds r0, #0xD8
	mov r7, r12
	ldr r1, [r7, #0x18]
	ldr r6, [r0, #0x00]
	subs r1, r1, r6
	cmp r1, #0x00
	bge _080888A6
	adds r1, #0x0F
_080888A6:
	asrs r2, r1, #0x04
	movs r0, #0xDC
	add r0, r12
	mov r10, r0
	mov r1, r12
	ldr r0, [r1, #0x1C]
	mov r3, r10
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _080888BE
	adds r0, #0x0F
_080888BE:
	asrs r0, r0, #0x04
	mov r8, r0
	movs r5, #0xE0
	add r5, r12
	mov r9, r5
	mov r7, r12
	ldr r0, [r7, #0x20]
	ldr r3, [r5, #0x00]
	subs r0, r0, r3
	cmp r0, #0x00
	bge _080888D6
	adds r0, #0x0F
_080888D6:
	asrs r0, r0, #0x04
	str r0, [sp, #0x000]
	mov r5, r12
	ldr r0, [r5, #0x40]
	subs r0, r0, r6
	cmp r0, #0x00
	bge _080888E6
	adds r0, #0x0F
_080888E6:
	asrs r5, r0, #0x04
	mov r7, r12
	ldr r0, [r7, #0x44]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _080888F4
	adds r0, #0x0F
_080888F4:
	asrs r1, r0, #0x04
	mov r7, r12
	ldr r0, [r7, #0x48]
	subs r0, r0, r3
	cmp r0, #0x00
	bge _08088902
	adds r0, #0x0F
_08088902:
	asrs r3, r0, #0x04
	movs r0, #0x00
	mov r12, r0
	adds r7, r2, #0x0
	muls r7, r2
	adds r2, r7, #0x0
	mov r7, r8
	mov r0, r8
	muls r0, r7
	adds r2, r2, r0
	ldr r7, [sp, #0x000]
	adds r0, r7, #0x0
	muls r0, r7
	adds r2, r2, r0
	adds r0, r5, #0x0
	muls r0, r5
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	cmp r2, r0
	bge _08088938
	movs r7, #0x01
	mov r12, r7
_08088938:
	mov r0, r12
	cmp r0, #0x00
	bne _08088952
	str r6, [r4, #0x10]
	mov r1, r10
	ldr r0, [r1, #0x00]
	str r0, [r4, #0x14]
	mov r2, r9
	ldr r0, [r2, #0x00]
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	bl sub_8087540
_08088952:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
