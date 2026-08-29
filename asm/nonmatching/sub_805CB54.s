	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x0A]
	cmp r0, #0x00
	bne _0805CB6A
_0805CB66:
	movs r0, #0x00
	b _0805CC6E
_0805CB6A:
	ldr r1, _0805CBC0 @ =0x083A7894
	ldrb r0, [r4, #0x0B]
	lsls r0, r0, #0x04
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0x00
	ldr r6, [r4, #0x04]
_0805CB7C:
	ldrh r0, [r4, #0x08]
	adds r2, r1, #0x1
	mov r8, r2
	cmp r1, r0
	bhi _0805CC02
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x0F
	bls _0805CB92
	movs r7, #0x0F
_0805CB92:
	movs r3, #0x00
	movs r0, #0x03
	mov r12, r0
	lsls r5, r1, #0x05
_0805CB9A:
	lsrs r0, r3, #0x02
	lsls r0, r0, #0x04
	adds r0, r0, r7
	add r0, r9
	ldrb r2, [r0, #0x00]
	mov r0, r12
	bics r0, r3
	lsls r0, r0, #0x01
	asrs r2, r0
	mov r1, r12
	ands r2, r1
	cmp r2, #0x01
	beq _0805CBD8
	cmp r2, #0x01
	bgt _0805CBC4
	cmp r2, #0x00
	beq _0805CBCE
	b _0805CBF6
	.byte 0x00, 0x00
_0805CBC0: .4byte 0x083A7894
_0805CBC4:
	cmp r2, #0x02
	beq _0805CBE2
	cmp r2, #0x03
	beq _0805CBEC
	b _0805CBF6
_0805CBCE:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	strb r2, [r0, #0x00]
	b _0805CBF6
_0805CBD8:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x90
	b _0805CBF4
_0805CBE2:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x09
	b _0805CBF4
_0805CBEC:
	ldr r0, [r4, #0x04]
	adds r1, r5, r3
	adds r0, r0, r1
	movs r1, #0x99
_0805CBF4:
	strb r1, [r0, #0x00]
_0805CBF6:
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r6, [r4, #0x04]
	cmp r3, #0x1F
	bls _0805CB9A
_0805CC02:
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x0F
	bls _0805CB7C
	ldr r1, _0805CC5C @ =0x06003E00
	movs r2, #0x80
	lsls r2, r2, #0x02
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldrh r0, [r4, #0x08]
	adds r0, #0x01
	strh r0, [r4, #0x08]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0805CC6C
	movs r0, #0x00
	strb r0, [r4, #0x0A]
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0805CC3A
	bl free_heap_8018D9C
_0805CC3A:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0805CC44
	bl free_heap_8018D9C
_0805CC44:
	ldr r0, _0805CC60 @ =0x083A7894
	ldrb r1, [r4, #0x0B]
	lsls r1, r1, #0x04
	adds r1, r1, r0
	ldrb r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _0805CB66
	ldr r1, _0805CC64 @ =0x02000008
	ldr r2, _0805CC68 @ =0x00001508
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	b _0805CB66
_0805CC5C: .4byte 0x06003E00
_0805CC60: .4byte 0x083A7894
_0805CC64: .4byte 0x02000008
_0805CC68: .4byte 0x00001508
_0805CC6C:
	movs r0, #0x01
_0805CC6E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
