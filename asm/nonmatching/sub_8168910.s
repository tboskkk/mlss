	.syntax unified
	.text

	thumb_func_start sub_8168910
sub_8168910:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	mov r9, r1
	adds r4, r2, #0x0
	adds r0, #0x18
	adds r1, r7, #0x0
	adds r1, #0x70
	bl sub_8163F6C
	ldr r0, [r7, #0x6C]
	cmp r0, #0x07
	bls _08168934
	b _08168C9A
_08168934:
	lsls r0, r0, #0x02
	ldr r1, _08168944 @ =lbl_08168948
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	adds r1, r1, r7
	mov r8, r1
	mov pc, r0
_08168944: .4byte lbl_08168948
lbl_08168948:
	.4byte _08168968
	.4byte _08168988
	.4byte _08168B4E
	.4byte _08168BB4
	.4byte _08168C28
	.4byte _08168C36
	.4byte _08168C4C
	.4byte _08168C5E
_08168968:
	mov r2, r9
	ldr r1, [r2, #0]
	adds r0, r7, #0
	bl sub_816B230
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _08168982
	mov r0, r9
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl sub_816B230
_08168982:
	adds r1, r7, #0
	adds r1, #128 @ 0x80
	b.n _08168C14
_08168988:
	mov r1, r9
	ldr r1, [r1, #68] @ 0x44
	str r1, [sp, #4]
	mov r2, r9
	ldr r3, [r2, #56] @ 0x38
	subs r0, r1, r3
	asrs r6, r0, #8
	ldr r0, [r2, #76] @ 0x4c
	str r0, [sp, #8]
	ldr r2, [r2, #64] @ 0x40
	subs r0, r0, r2
	asrs r4, r0, #8
	adds r1, r6, #0
	muls r1, r6
	adds r0, r4, #0
	muls r0, r4
	adds r5, r1, r0
	ldr r1, [r7, #24]
	mov sl, r1
	subs r3, r1, r3
	asrs r3, r3, #8
	mov ip, r3
	ldr r0, [r7, #32]
	mov r8, r0
	subs r2, r0, r2
	asrs r3, r2, #8
	mov r1, ip
	muls r1, r6
	adds r0, r3, #0
	muls r0, r4
	adds r1, r1, r0
	cmp r5, r1
	bge.n _081689E6
	ldr r1, [sp, #4]
	mov r2, sl
	subs r0, r1, r2
	asrs r0, r0, #8
	mov ip, r0
	ldr r1, [sp, #8]
	mov r2, r8
	subs r0, r1, r2
	asrs r3, r0, #8
	mov r1, ip
	muls r1, r6
	adds r0, r3, #0
	muls r0, r4
	adds r1, r1, r0
_081689E6:
	cmp r1, #0
	bge.n _08168A08
	ldr r2, [pc, #24] @ (0x8168a04)
	mov r1, ip
	mov r0, ip
	muls r0, r1
	adds r1, r3, #0
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0]
	bl _call_via_r1
	movs r2, #0
	mov sl, r2
	b.n _08168A38
	asrs r0, r7, #32
	lsls r0, r0, #12
_08168A08:
	ldr r2, [pc, #216] @ (0x8168ae4)
	ldr r0, [pc, #220] @ (0x8168ae8)
	ldr r1, [pc, #220] @ (0x8168aec)
	subs r0, r0, r1
	ldr r2, [r2, #0]
	adds r0, r0, r2
	mov r8, r0
	mov r1, ip
	muls r1, r4
	adds r0, r3, #0
	muls r0, r6
	subs r4, r1, r0
	cmp r4, #0
	bge.n _08168A26
	negs r4, r4
_08168A26:
	adds r0, r5, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r4, #0
	bl _call_via_r8
	movs r1, #1
	mov sl, r1
_08168A38:
	cmp r0, #3
	bgt.n _08168B14
	movs r1, #1
	negs r1, r1
	movs r0, #54 @ 0x36
	bl play_sfx_80195B4
	adds r5, r7, #0
	adds r5, #128 @ 0x80
	movs r0, #120 @ 0x78
	str r0, [r5, #0]
	ldr r0, [r7, #16]
	movs r4, #0
	str r4, [sp, #0]
	movs r1, #8
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	mov r2, r9
	ldr r0, [r2, #8]
	ldr r0, [r0, #16]
	str r4, [sp, #0]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_801E150
	mov r1, r9
	ldr r0, [r1, #8]
	ldr r2, [r0, #16]
	ldrb r1, [r2, #18]
	movs r0, #7
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #18]
	mov r2, r9
	ldr r1, [r2, #68] @ 0x44
	ldr r0, [r2, #56] @ 0x38
	subs r6, r1, r0
	ldr r1, [r2, #76] @ 0x4c
	ldr r0, [r2, #64] @ 0x40
	subs r4, r1, r0
	ldr r2, [pc, #80] @ (0x8168ae4)
	ldr r0, [pc, #80] @ (0x8168ae8)
	ldr r1, [pc, #84] @ (0x8168aec)
	subs r0, r0, r1
	ldr r3, [r2, #0]
	adds r3, r3, r0
	ldr r0, [r7, #112] @ 0x70
	muls r0, r6
	ldr r1, [r7, #120] @ 0x78
	muls r1, r4
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r6, #0
	muls r1, r6
	adds r2, r4, #0
	muls r2, r4
	adds r1, r1, r2
	asrs r1, r1, #8
	bl _call_via_r3
	adds r1, r0, #0
	adds r0, r6, #0
	muls r0, r1
	asrs r0, r0, #12
	ldr r2, [r7, #112] @ 0x70
	subs r0, r0, r2
	lsls r6, r0, #1
	adds r0, r4, #0
	muls r0, r1
	asrs r0, r0, #12
	ldr r1, [r7, #120] @ 0x78
	subs r0, r0, r1
	lsls r4, r0, #1
	mov r8, r5
	mov r0, sl
	cmp r0, #0
	beq.n _08168AF0
	adds r0, r2, r6
	str r0, [r7, #112] @ 0x70
	adds r0, r1, r4
	b.n _08168AF6
	asrs r0, r7, #32
	lsls r0, r0, #12
	strh r4, [r5, #24]
	lsrs r1, r3, #32
	strh r0, [r4, #16]
	lsrs r1, r3, #32
_08168AF0:
	negs r0, r2
	str r0, [r7, #112] @ 0x70
	negs r0, r1
_08168AF6:
	str r0, [r7, #120] @ 0x78
	mov r2, r9
	ldr r1, [r2, #32]
	asrs r1, r1, #1
	ldr r0, [r7, #112] @ 0x70
	adds r0, r0, r1
	str r0, [r7, #112] @ 0x70
	ldr r1, [r2, #40] @ 0x28
	asrs r1, r1, #1
	ldr r0, [r7, #120] @ 0x78
	adds r0, r0, r1
	str r0, [r7, #120] @ 0x78
	movs r0, #2
	str r0, [r7, #108] @ 0x6c
	b.n _08168C12
_08168B14:
	movs r1, #128 @ 0x80
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #6
	bgt.n _08168C12
	mov r2, r9
	ldr r1, [r2, #0]
	adds r0, r7, #0
	bl sub_8168CAC
	lsls r0, r0, #24
	cmp r0, #0
	bne.n _08168C12
	mov r0, r9
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl sub_8168CAC
	b.n _08168C12
_08168B3A:
	movs r0, #4
	str r0, [r2, #0]
	adds r1, r2, #0
	adds r1, #140 @ 0x8c
	movs r0, #2
	strh r0, [r1, #0]
	movs r0, #120 @ 0x78
	mov r2, r8
	str r0, [r2, #0]
	b.n _08168C00
_08168B4E:
	ldr r2, [r4, #0]
	movs r0, #128 @ 0x80
	adds r0, r0, r7
	mov r8, r0
	cmp r2, #0
	beq.n _08168C12
	mov r3, r8
_08168B5C:
	ldr r0, [r2, #0]
	cmp r0, #3
	bne.n _08168B92
	ldr r0, [r7, #24]
	ldr r1, [r2, #24]
	subs r0, r0, r1
	asrs r6, r0, #8
	ldr r0, [r7, #32]
	ldr r1, [r2, #32]
	subs r0, r0, r1
	asrs r4, r0, #8
	adds r1, r6, #0
	muls r1, r6
	adds r0, r4, #0
	muls r0, r4
	adds r5, r1, r0
	adds r0, r2, #0
	adds r0, #152 @ 0x98
	ldrh r0, [r0, #0]
	cmp r0, #1
	bls.n _08168B8C
	cmp r5, #99 @ 0x63
	bgt.n _08168B92
	b.n _08168BF0
_08168B8C:
	ldr r0, [pc, #12] @ (0x8168b9c)
	cmp r5, r0
	ble.n _08168B3A
_08168B92:
	ldr r2, [r2, #8]
	cmp r2, #0
	bne.n _08168B5C
	b.n _08168C12
	movs r0, r0
	lsls r3, r0, #5
	movs r0, r0
_08168BA0:
	movs r0, #4
	str r0, [r2, #0]
	adds r1, r2, #0
	adds r1, #140 @ 0x8c
	movs r0, #2
	strh r0, [r1, #0]
	movs r0, #120 @ 0x78
	mov r2, r8
	str r0, [r2, #0]
	b.n _08168C00
_08168BB4:
	ldr r2, [r4, #0]
	movs r0, #128 @ 0x80
	adds r0, r0, r7
	mov r8, r0
	cmp r2, #0
	beq.n _08168C12
	mov r3, r8
_08168BC2:
	ldr r0, [r2, #0]
	cmp r0, #3
	bne.n _08168C0C
	ldr r0, [r7, #24]
	ldr r1, [r2, #24]
	subs r0, r0, r1
	asrs r6, r0, #8
	ldr r0, [r7, #32]
	ldr r1, [r2, #32]
	subs r0, r0, r1
	asrs r4, r0, #8
	adds r1, r6, #0
	muls r1, r6
	adds r0, r4, #0
	muls r0, r4
	adds r5, r1, r0
	adds r0, r2, #0
	adds r0, #152 @ 0x98
	ldrh r0, [r0, #0]
	cmp r0, #1
	bls.n _08168C06
	cmp r5, #143 @ 0x8f
	bgt.n _08168C0C
_08168BF0:
	movs r0, #4
	str r0, [r2, #0]
	adds r1, r2, #0
	adds r1, #140 @ 0x8c
	movs r0, #2
	strh r0, [r1, #0]
	movs r0, #120 @ 0x78
	str r0, [r3, #0]
_08168C00:
	movs r0, #6
	str r0, [r7, #108] @ 0x6c
	b.n _08168C12
_08168C06:
	ldr r0, [pc, #28] @ (0x8168c24)
	cmp r5, r0
	ble.n _08168BA0
_08168C0C:
	ldr r2, [r2, #8]
	cmp r2, #0
	bne.n _08168BC2
_08168C12:
	mov r1, r8
_08168C14:
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	cmp r0, #0
	bgt.n _08168C9A
	movs r0, #4
	str r0, [r7, #108] @ 0x6c
	b.n _08168C9A
	lsls r7, r7, #8
	movs r0, r0
_08168C28:
	adds r0, r7, #0
	adds r0, #128 @ 0x80
	movs r1, #0
	str r1, [r0, #0]
	movs r1, #5
	str r1, [r7, #108] @ 0x6c
	mov r8, r0
_08168C36:
	mov r2, r8
	ldr r0, [r2, #0]
	adds r3, r0, #1
	str r3, [r2, #0]
	cmp r3, #9
	bgt.n _08168C6A
	movs r0, #128 @ 0x80
	lsls r0, r0, #1
	movs r1, #16
	movs r2, #10
	b.n _08168C90
_08168C4C:
	movs r0, #0
	str r0, [r7, #120] @ 0x78
	str r0, [r7, #112] @ 0x70
	adds r1, r7, #0
	adds r1, #128 @ 0x80
	str r0, [r1, #0]
	movs r0, #7
	str r0, [r7, #108] @ 0x6c
	mov r8, r1
_08168C5E:
	mov r1, r8
	ldr r0, [r1, #0]
	adds r3, r0, #1
	str r3, [r1, #0]
	cmp r3, #19
	ble.n _08168C88
_08168C6A:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_8163C94
	cmp r7, #0
	beq.n _08168C9A
	ldr r1, [r7, #12]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	ldr r2, [r1, #12]
	movs r1, #3
	bl _call_via_r2
	b.n _08168C9A
_08168C88:
	movs r0, #128 @ 0x80
	lsls r0, r0, #2
	movs r1, #16
	movs r2, #20
_08168C90:
	bl sub_8163E50
	ldr r1, [r7, #16]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
_08168C9A:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
