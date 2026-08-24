	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	ldr r0, _0810A6C0 @ =0x03000FD8
	mov r10, r0
	ldr r1, [r0, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	mov r9, r2
	adds r0, r1, r2
	ldr r5, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	ldr r0, [r1, #0x74]
	cmp r2, r0
	bne _0810A676
	adds r4, #0x01
_0810A676:
	cmp r5, #0x00
	bne _0810A6C4
	ldr r1, [sp, #0x02C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r6, #0x0
	adds r3, r7, #0x0
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0x80
	strb r0, [r1, #0x00]
	mov r1, r10
	ldr r0, [r1, #0x00]
	add r0, r9
	str r5, [r0, #0x00]
	b _0810A718
_0810A6C0: .4byte 0x03000FD8
_0810A6C4:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0810A6D6
	adds r0, r2, #0x0
	bl sub_807BC90
_0810A6D6:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x0D
	negs r1, r1
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, r4
	beq _0810A718
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0810A718:
	lsls r6, r6, #0x08
	lsls r7, r7, #0x08
	mov r2, r8
	lsls r2, r2, #0x08
	mov r8, r2
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	adds r3, r5, #0x0
	adds r3, #0x88
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r1, r6
	bne _0810A742
	ldr r0, [r3, #0x00]
	cmp r0, r7
	bne _0810A742
	ldr r0, [r2, #0x00]
	cmp r0, r8
	beq _0810A778
_0810A742:
	str r6, [r4, #0x00]
	str r7, [r3, #0x00]
	mov r0, r8
	str r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x05
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x80
	ldr r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	cmp r4, #0x00
	bne _0810A778
	ldr r0, _0810A788 @ =0x0810D1A5
	adds r1, r5, #0x0
	bl sub_807FF48
_0810A778:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A788: .4byte sub_810D1A4
