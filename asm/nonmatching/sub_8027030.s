	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	ldr r0, [sp, #0x024]
	ldr r1, [sp, #0x028]
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	subs r0, r6, #0x1
	cmp r0, #0x04
	bhi _08027132
	lsls r0, r0, #0x02
	ldr r1, _08027064 @ =lbl_08027068
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_08027064: .4byte lbl_08027068
lbl_08027068:
	.4byte _0802707C
	.4byte _08027082
	.4byte _08027102
	.4byte _080270AA
	.4byte _08027102
_0802707C:
	adds r0, r5, #0
	bl sub_8026E94
_08027082:
	movs r1, #148 @ 0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r4, [r0, #0]
	movs r0, #1
	eors r0, r6
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #31
	movs r0, #4
	ands r1, r0
	mov r3, r8
	str r3, [sp, #0]
	str r7, [sp, #4]
	adds r0, r5, #0
	mov r2, r9
	adds r3, r4, #0
	bl sub_80291EC
	b.n _08027132
_080270AA:
	adds r0, r5, #0
	adds r0, #240 @ 0xf0
	ldr r2, [r0, #0]
	cmp r2, #0
	beq.n _080270D4
	ldr r0, [pc, #20] @ (0x80270cc)
	lsrs r1, r2, #16
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	ldr r1, [pc, #16] @ (0x80270d0)
	adds r0, r0, r1
	str r2, [r0, #0]
	adds r0, r5, #0
	bl sub_80290E0
	b.n _080270E6
	movs r0, r0
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsrs r4, r0, #2
	movs r0, r0
_080270D4:
	ldr r1, [pc, #128] @ (0x8027158)
	ldr r0, [pc, #132] @ (0x802715c)
	strh r0, [r1, #0]
	movs r0, #1
	negs r0, r0
	strh r0, [r1, #2]
	ldr r3, [pc, #124] @ (0x8027160)
	adds r1, r1, r3
	str r0, [r1, #0]
_080270E6:
	adds r0, r5, #0
	bl sub_8026E94
	ldr r0, [pc, #116] @ (0x8027164)
	ldrh r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #254 @ 0xfe
	strh r0, [r1, #0]
	adds r2, r5, #0
	adds r2, #253 @ 0xfd
	ldrb r0, [r2, #0]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #0]
_08027102:
	ldr r1, [pc, #96] @ (0x8027164)
	movs r0, #0
	strh r0, [r1, #0]
	ldr r2, [pc, #76] @ (0x8027158)
	ldrh r0, [r2, #2]
	movs r3, #128 @ 0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	movs r4, #0
	strh r0, [r2, #2]
	movs r1, #254 @ 0xfe
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0, #0]
	subs r1, r6, #3
	lsls r1, r1, #24
	lsrs r1, r1, #24
	bl sub_805C9DC
	movs r3, #148 @ 0x94
	lsls r3, r3, #1
	adds r0, r5, r3
	strh r4, [r0, #0]
_08027132:
	adds r3, r5, #0x0
	adds r3, #0xFC
	movs r0, #0x0F
	ands r6, r0
	lsls r2, r6, #0x03
	ldrb r1, [r3, #0x00]
	movs r0, #0x79
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x4C, 0x03, 0x00, 0x03, 0xFF, 0xFF, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x72, 0x02
	.byte 0x00, 0x02
