	push {r4, r5, r6, lr}
	mov r12, r1
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	ldr r2, [sp, #0x018]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r0, #0x38
	ands r0, r5
	cmp r0, #0x00
	beq _080E85BE
	movs r0, #0xE0
	lsls r0, r0, #0x03
	ands r0, r5
	lsrs r4, r0, #0x08
	cmp r4, #0x01
	bgt _080E85BE
	cmp r4, #0x00
	blt _080E85BE
	mov r0, r12
	str r1, [r0, #0x44]
	movs r1, #0x80
	ands r1, r5
	lsls r1, r1, #0x10
	mov r2, r12
	adds r2, #0x43
	lsrs r1, r1, #0x17
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	cmp r4, #0x00
	bne _080E8518
	mov r3, r12
	adds r3, #0x42
	ldrb r0, [r3, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080E851E
_080E8518:
	lsls r0, r6, #0x03
	mov r1, r12
	str r0, [r1, #0x48]
_080E851E:
	mov r1, r12
	ldr r0, [r1, #0x48]
	subs r0, #0x08
	str r0, [r1, #0x48]
	movs r0, #0x78
	ands r0, r5
	lsrs r0, r0, #0x03
	subs r0, #0x01
	cmp r0, #0x0A
	bhi _080E85BE
	lsls r0, r0, #0x02
	ldr r1, _080E853C @ =lbl_080E8540
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080E853C: .4byte lbl_080E8540
lbl_080E8540:
	.4byte _080E856C
	.4byte _080E858E
	.4byte _080E856C
	.4byte _080E85BE
	.4byte _080E85BE
	.4byte _080E85BE
	.4byte _080E85BE
	.4byte _080E85BE
	.4byte _080E8584
	.4byte _080E85A6
	.4byte _080E8584
_080E856C:
	ldrb r1, [r2, #0]
	movs r0, #7
	ands r0, r1
	movs r1, #40 @ 0x28
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0]
	mov r1, ip
	ldr r0, [r1, #68] @ 0x44
	subs r0, #4
	b.n _080E85BC
_080E8584:
	ldrb r1, [r2, #0]
	movs r0, #7
	ands r0, r1
	movs r1, #72 @ 0x48
	b.n _080E85AE
_080E858E:
	ldrb r1, [r2, #0]
	movs r0, #7
	ands r0, r1
	movs r1, #56 @ 0x38
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #0]
	mov r1, ip
	ldr r0, [r1, #68] @ 0x44
	subs r0, #4
	b.n _080E85BC
_080E85A6:
	ldrb r1, [r2, #0]
	movs r0, #7
	ands r0, r1
	movs r1, #104 @ 0x68
_080E85AE:
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0]
	mov r1, ip
	ldr r0, [r1, #68] @ 0x44
	subs r0, #8
_080E85BC:
	str r0, [r1, #68] @ 0x44
_080E85BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
