	.syntax unified
	.text

	thumb_func_start sub_8081A68
sub_8081A68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r0, r4, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08081B28
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x00
	beq _08081B20
	adds r6, r0, #0x0
	ldr r1, _08081B14 @ =0x03001038
	mov r10, r1
	ldr r1, _08081B18 @ =0x0819832C
	ldr r0, _08081B1C @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r3, r0, r1
	ldr r1, [r4, #0x28]
	adds r1, #0xD8
	subs r7, r6, #0x1
	ldr r0, [r4, #0x38]
	adds r2, r0, #0x0
	muls r2, r7
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	cmp r0, #0x00
	bge _08081AB8
	adds r0, #0xFF
_08081AB8:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	bl _call_via_r3
	mov r9, r0
	mov r1, r10
	ldr r0, [r1, #0x00]
	mov r1, r8
	adds r2, r0, r1
	ldr r0, [r4, #0x28]
	adds r0, #0xDC
	ldr r1, [r4, #0x3C]
	muls r1, r7
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08081ADC
	adds r0, #0xFF
_08081ADC:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r1, r9
	movs r3, #0x00
	bl sub_808843C
	ldr r2, [r4, #0x40]
	cmp r2, #0x00
	bge _08081AFE
	adds r2, #0xFF
_08081AFE:
	asrs r2, r2, #0x08
	adds r2, #0x14
	adds r0, r4, #0x0
	movs r1, #0xE0
	lsls r1, r1, #0x03
	bl sub_808842C
	ldrh r0, [r5, #0x10]
	subs r0, #0x01
	strh r0, [r5, #0x10]
	b _08081B28
_08081B14: .4byte 0x03001038
_08081B18: .4byte 0x0819832C
_08081B1C: .4byte 0x08198220
_08081B20:
	movs r0, #0x14
	strh r0, [r5, #0x10]
	ldr r0, _08081B38 @ =0x08081B3D
	str r0, [r5, #0x04]
_08081B28:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08081B38: .4byte sub_8081B3C
