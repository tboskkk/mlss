	.syntax unified
	.text

	thumb_func_start load_init_812538C
load_init_812538C:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	adds r5, r0, #0x0
	adds r4, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl process_add
	ldr r0, _08125450 @ =0x08CDC3B8
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	adds r0, #0xE4
	movs r1, #0x00
	mov r10, r1
	strh r4, [r0, #0x00]
	ldr r6, _08125454 @ =0x03000388
	str r6, [r5, #0x50]
	ldrb r0, [r6, #0x08]
	adds r1, r5, #0x0
	adds r1, #0xF7
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x50]
	ldrb r1, [r0, #0x09]
	adds r0, r5, #0x0
	adds r0, #0xF8
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x50]
	movs r0, #0x0A
	strb r0, [r1, #0x08]
	ldr r1, [r5, #0x50]
	movs r0, #0x08
	strb r0, [r1, #0x09]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r2, r2, r5
	mov r9, r2
	ldr r4, _08125458 @ =0x08210F18
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	bl tld_init_8127A94
	mov r1, r9
	str r0, [r1, #0x00]
	movs r2, #0xAE
	lsls r2, r2, #0x01
	adds r2, r2, r5
	mov r8, r2
	ldr r4, _0812545C @ =0x08210F1C
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	mov r1, r8
	str r0, [r1, #0x00]
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r5, [r1, #0x14]
	str r5, [r0, #0x14]
	bl sub_8017E34
	ldr r0, _08125460 @ =0x0000084C
	adds r6, r6, r0
	ldrb r0, [r6, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x12
	mov r1, r10
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08125450: .4byte dword_8CDC3B8 @ =0x08CDC3B8
_08125454: .4byte 0x03000388
_08125458: .4byte dword_8210F18 @ =0x08210F18
_0812545C: .4byte dword_8210F1C @ =0x08210F1C
_08125460: .4byte 0x0000084C
