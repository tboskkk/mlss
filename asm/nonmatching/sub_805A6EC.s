	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, _0805A768 @ =0x08A46198
	mov r9, r0
	ldr r2, _0805A76C @ =0x083AFC5C
	mov r3, r8
	ldrh r1, [r3, #0x1E]
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldrb r0, [r0, #0x03]
	mov r10, r0
	movs r2, #0x00
_0805A710:
	lsls r0, r2, #0x01
	mov r3, r10
	lsls r1, r3, #0x02
	adds r0, r0, r1
	ldr r1, _0805A770 @ =0x083AFF3C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r3, _0805A774 @ =0x0000FFFF
	cmp r0, r3
	beq _0805A778
	lsls r0, r0, #0x02
	ldr r1, _0805A768 @ =0x08A46198
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r3, r9
	adds r7, r3, r0
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r6, r2, #0x09
	mov r3, r8
	ldr r5, [r3, #0x3C]
_0805A73C:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r3, r0, #0x05
_0805A742:
	adds r1, r6, r2
	adds r1, r3, r1
	lsls r1, r1, #0x01
	adds r1, r1, r5
	adds r0, r3, r2
	adds r0, r7, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A742
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A73C
	b _0805A7A8
	.byte 0x00, 0x00
_0805A768: .4byte 0x08A46198
_0805A76C: .4byte 0x083AFC5C
_0805A770: .4byte 0x083AFF3C
_0805A774: .4byte 0x0000FFFF
_0805A778:
	movs r0, #0x00
	adds r1, r2, #0x1
	mov r12, r1
	lsls r5, r2, #0x09
	mov r1, r8
	ldr r3, [r1, #0x3C]
	movs r6, #0x00
_0805A786:
	movs r2, #0x00
	adds r4, r0, #0x1
	lsls r1, r0, #0x05
_0805A78C:
	adds r0, r5, r2
	adds r0, r1, r0
	lsls r0, r0, #0x01
	adds r0, r0, r3
	strh r6, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1F
	bls _0805A78C
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x0F
	bls _0805A786
_0805A7A8:
	mov r3, r12
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x01
	bls _0805A710
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
