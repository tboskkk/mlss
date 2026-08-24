	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	adds r4, r1, #0x0
	mov r10, r2
	adds r6, r3, #0x0
	ldr r0, [sp, #0x030]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r0, [r6, #0x04]
	mov r2, r8
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x28]
	adds r7, r5, #0x0
	adds r7, #0x58
	movs r0, #0x01
	str r0, [sp, #0x008]
	cmp r4, #0x00
	beq _080EC9B2
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	adds r0, #0x04
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
_080EC9B2:
	ldr r0, [r6, #0x00]
	ldr r1, [sp, #0x008]
	ands r0, r1
	mov r2, r10
	adds r2, #0xA0
	str r2, [sp, #0x00C]
	cmp r0, #0x00
	beq _080EC9CE
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x09
	str r0, [sp, #0x008]
_080EC9CE:
	ldr r0, [r6, #0x00]
	cmp r0, #0x07
	bls _080EC9D6
	b _080ECB04
_080EC9D6:
	lsls r0, r0, #0x02
	ldr r1, _080EC9E0 @ =lbl_080EC9E4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EC9E0: .4byte lbl_080EC9E4
lbl_080EC9E4:
	.4byte _080ECA04
	.4byte _080ECA04
	.4byte _080ECA10
	.4byte _080ECA10
	.4byte _080ECA1C
	.4byte _080ECA1C
	.4byte _080ECA96
	.4byte _080ECA96
_080ECA04:
	adds r4, r7, #0
	adds r4, #160 @ 0xa0
	ldrh r1, [r4, #0]
	movs r0, #2
	ands r0, r1
	b.n _080ECA32
_080ECA10:
	adds r4, r7, #0
	adds r4, #160 @ 0xa0
	ldrh r1, [r4, #0]
	movs r0, #2
	ands r0, r1
	b.n _080ECAAC
_080ECA1C:
	adds r4, r7, #0
	adds r4, #160 @ 0xa0
	ldrh r2, [r4, #0]
	movs r1, #1
	adds r0, r1, #0
	eors r0, r2
	ands r0, r1
	cmp r0, #0
	beq.n _080ECA76
	movs r0, #2
	ands r0, r2
_080ECA32:
	cmp r0, #0
	beq.n _080ECA3C
	adds r0, r5, #0
	bl sub_8046980
_080ECA3C:
	ldrh r1, [r4, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080ECA4C
	adds r0, r5, #0
	bl sub_8046A10
_080ECA4C:
	ldrh r1, [r4, #0]
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq.n _080ECA5C
	adds r0, r5, #0
	bl sub_80473DC
_080ECA5C:
	mov r0, r8
	adds r0, #28
	mov r1, sl
	ldr r2, [r1, #0]
	ldr r3, [r6, #8]
	ldr r1, [sp, #8]
	str r1, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	adds r1, r7, #0
	bl sub_80EA5C8
	b.n _080ECA8E
_080ECA76:
	mov r0, r8
	adds r0, #28
	mov r1, sl
	ldr r2, [r1, #0]
	ldr r3, [r6, #8]
	ldr r1, [sp, #8]
	str r1, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	adds r1, r7, #0
	bl sub_80EA584
_080ECA8E:
	ldr r0, [r6, #8]
	mov r2, sl
	str r0, [r2, #0]
	b.n _080ECB04
_080ECA96:
	adds r4, r7, #0
	adds r4, #160 @ 0xa0
	ldrh r2, [r4, #0]
	movs r1, #1
	adds r0, r1, #0
	eors r0, r2
	ands r0, r1
	cmp r0, #0
	beq.n _080ECAEE
	movs r0, #2
	ands r0, r2
_080ECAAC:
	cmp r0, #0
	beq.n _080ECAB6
	adds r0, r5, #0
	bl sub_8046980
_080ECAB6:
	ldrh r1, [r4, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080ECAC6
	adds r0, r5, #0
	bl sub_8046A10
_080ECAC6:
	ldrh r1, [r4, #0]
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq.n _080ECAD6
	adds r0, r5, #0
	bl sub_80473DC
_080ECAD6:
	mov r0, r8
	adds r0, #28
	ldr r2, [r6, #8]
	ldr r1, [sp, #8]
	str r1, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r3, #0
	bl sub_80EA5C8
	b.n _080ECB04
_080ECAEE:
	mov r0, r8
	adds r0, #28
	ldr r2, [r6, #8]
	ldr r1, [sp, #8]
	str r1, [sp, #0]
	mov r1, r9
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r3, #0
	bl sub_80EA584
_080ECB04:
	ldr r2, [sp, #0x00C]
	ldrh r1, [r2, #0x00]
	lsrs r1, r1, #0x02
	movs r0, #0x01
	bics r0, r1
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
