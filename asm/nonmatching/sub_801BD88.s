	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	mov r10, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	mov r1, r10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r10, r1
	movs r0, #0xA0
	lsls r0, r0, #0x08
	ldr r2, _0801BE60 @ =0x081E254C
	movs r1, #0x01
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r0, r0, r1
	str r0, [r5, #0x04]
	movs r0, #0xA0
	lsls r0, r0, #0x02
	ldr r2, _0801BE64 @ =0x081E2554
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_zero_8018DB4
	str r0, [r5, #0x08]
	ldr r4, _0801BE68 @ =0x08000AF0
	ldr r0, _0801BE6C @ =0x0800098C
	mov r8, r0
	subs r4, r4, r0
	ldr r2, _0801BE70 @ =0x081E255C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r5, #0x14]
	lsrs r4, r4, #0x02
	ldr r0, _0801BE74 @ =0x001FFFFF
	ands r4, r0
	movs r7, #0x80
	lsls r7, r7, #0x13
	orrs r4, r7
	mov r0, r8
	adds r2, r4, #0x0
	bl CpuSet
	ldr r4, _0801BE78 @ =0x0800098C
	ldr r1, _0801BE7C @ =0x08000914
	mov r8, r1
	subs r4, r4, r1
	ldr r2, _0801BE80 @ =0x081E2564
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	str r1, [r5, #0x18]
	lsrs r4, r4, #0x02
	ldr r0, _0801BE74 @ =0x001FFFFF
	ands r4, r0
	orrs r4, r7
	mov r0, r8
	adds r2, r4, #0x0
	bl CpuSet
	movs r2, #0x00
	strh r6, [r5, #0x0C]
	mov r1, r9
	strh r1, [r5, #0x0E]
	mov r0, r10
	strb r0, [r5, #0x10]
	ldr r0, [r5, #0x04]
	movs r1, #0xC0
	lsls r1, r1, #0x13
	adds r6, r6, r1
	str r2, [sp, #0x000]
	adds r1, r6, #0x0
	movs r2, #0xA0
	lsls r2, r2, #0x07
	movs r3, #0x20
	bl sub_8018218
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0801BE60: .4byte 0x081E254C
_0801BE64: .4byte 0x081E2554
_0801BE68: .4byte 0x08000AF0
_0801BE6C: .4byte 0x0800098C
_0801BE70: .4byte 0x081E255C
_0801BE74: .4byte 0x001FFFFF
_0801BE78: .4byte 0x0800098C
_0801BE7C: .4byte 0x08000914
_0801BE80: .4byte 0x081E2564
