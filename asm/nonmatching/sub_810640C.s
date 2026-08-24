	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	ldrh r0, [r6, #0x10]
	movs r2, #0x10
	ldsh r1, [r6, r2]
	mov r8, r1
	cmp r1, #0x00
	beq _0810642A
	subs r0, #0x01
	strh r0, [r6, #0x10]
	b _081064C8
_0810642A:
	ldr r0, _081064D8 @ =0x03000FD8
	ldr r5, [r0, #0x00]
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0810644E
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	lsrs r1, r0, #0x1F
_0810644E:
	lsls r0, r1, #0x02
	adds r1, r5, #0x0
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, _081064DC @ =0x03000FDC
	mov r9, r0
	ldr r3, [r0, #0x00]
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _0810646A
	adds r1, #0xFF
_0810646A:
	asrs r1, r1, #0x08
	ldr r7, _081064E0 @ =0x00008E10
	adds r0, r3, r7
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r2, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _0810647E
	adds r0, #0xFF
_0810647E:
	asrs r0, r0, #0x08
	subs r0, #0x08
	ldr r2, _081064E4 @ =0x00008E12
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, _081064E8 @ =0x00008E14
	adds r1, r3, r0
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	ldr r4, _081064EC @ =0x082010BC
	movs r0, #0x44
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0xB4
	lsls r1, r1, #0x01
	str r1, [sp, #0x000]
	mov r2, r9
	ldr r1, [r2, #0x00]
	adds r1, r1, r7
	str r1, [sp, #0x004]
	mov r1, r8
	str r1, [sp, #0x008]
	movs r1, #0x37
	str r1, [sp, #0x00C]
	ldr r1, _081064F0 @ =0x08106565
	str r1, [sp, #0x010]
	movs r1, #0x07
	adds r2, r4, #0x0
	movs r3, #0x0F
	bl sub_8079D1C
	str r0, [r5, #0x00]
	ldr r0, _081064F4 @ =0x08106689
	str r0, [r6, #0x04]
_081064C8:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081064D8: .4byte 0x03000FD8
_081064DC: .4byte 0x03000FDC
_081064E0: .4byte 0x00008E10
_081064E4: .4byte 0x00008E12
_081064E8: .4byte 0x00008E14
_081064EC: .4byte dword_82010BC @ =0x082010BC
_081064F0: .4byte sub_8106564
_081064F4: .4byte sub_8106688
