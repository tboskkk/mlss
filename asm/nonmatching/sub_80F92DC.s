	.syntax unified
	.text

	thumb_func_start sub_80F92DC
sub_80F92DC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	mov r10, r3
	ldr r4, [sp, #0x040]
	ldr r3, [sp, #0x044]
	ldr r1, [sp, #0x048]
	ldr r0, [sp, #0x04C]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x014]
	ldr r5, [r7, #0x24]
	ldr r0, _080F93F4 @ =0x03000D44
	ldr r2, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	strh r3, [r2, #0x20]
	adds r2, #0x28
	movs r0, #0x0F
	ands r1, r0
	lsls r1, r1, #0x02
	ldrb r3, [r2, #0x00]
	subs r0, #0x4C
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _080F93F8 @ =0x082001E8
	movs r0, #0x08
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	mov r1, r10
	ldr r2, [sp, #0x038]
	movs r3, #0x0A
	bl sub_80E588C
	str r0, [r7, #0x28]
	movs r1, #0x02
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _080F93FC @ =0x00000998
	adds r5, r5, r1
	str r5, [sp, #0x008]
	mov r2, r9
	str r2, [sp, #0x00C]
	str r2, [sp, #0x010]
	adds r1, r6, #0x0
	mov r2, r8
	ldr r3, [sp, #0x03C]
	bl sub_80E5AA0
	ldr r0, [r7, #0x28]
	ldr r1, [r0, #0x04]
	movs r3, #0xDC
	lsls r3, r3, #0x01
	adds r1, r1, r3
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r2, _080F9400 @ =0x082001F0
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80E87E4
	str r0, [r7, #0x20]
	ldr r2, [r7, #0x24]
	movs r3, #0x00
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _080F9394
	movs r3, #0x01
_080F9394:
	ldr r1, _080F9404 @ =0x000009A3
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [sp, #0x014]
	cmp r2, #0x00
	bne _080F93DC
	movs r3, #0x0C
	ldr r0, [r7, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r6, #0x00
	movs r5, #0x80
	lsls r5, r5, #0x01
	movs r4, #0x01
	adds r1, r2, #0x0
	adds r1, #0x3A
_080F93C2:
	str r6, [r2, #0x00]
	strh r5, [r1, #0x00]
	ldrb r0, [r1, #0x02]
	orrs r0, r4
	strb r0, [r1, #0x02]
	lsls r0, r3, #0x10
	ldr r3, _080F9408 @ =0xFFFF0000
	adds r0, r0, r3
	adds r1, #0x40
	adds r2, #0x40
	lsrs r3, r0, #0x10
	cmp r0, #0x00
	bgt _080F93C2
_080F93DC:
	ldr r0, [r7, #0x28]
	bl sub_80E92A8
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F93F4: .4byte 0x03000D44
_080F93F8: .4byte dword_82001E8 @ =0x082001E8
_080F93FC: .4byte 0x00000998
_080F9400: .4byte dword_82001F0 @ =0x082001F0
_080F9404: .4byte 0x000009A3
_080F9408: .4byte 0xFFFF0000
