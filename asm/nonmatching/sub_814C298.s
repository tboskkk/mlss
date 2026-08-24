	.syntax unified
	.text

	thumb_func_start sub_814C298
sub_814C298:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	mov r8, r1
	str r2, [sp, #0x008]
	movs r0, #0x58
	add r0, r8
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	add r1, r8
	mov r10, r1
	add r5, sp, #0x004
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814C2D6
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	b _0814C2DA
_0814C2D6:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
_0814C2DA:
	strb r0, [r5, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r5, [r0, #0x28]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _0814C32C
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _0814C318 @ =0x00002710
	bl sub_81DD77C
	movs r1, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _0814C31C
	mov r3, r8
	ldr r7, [r3, #0x0C]
	ldr r6, [r5, #0x10]
	adds r1, r7, #0x0
	ldr r0, [r3, #0x10]
	b _0814C326
	.byte 0x00, 0x00
_0814C318: .4byte 0x00002710
_0814C31C:
	ldr r7, [r5, #0x0C]
	mov r0, r8
	ldr r6, [r0, #0x10]
	ldr r1, [r0, #0x0C]
	adds r0, r6, #0x0
_0814C326:
	subs r7, r7, r1
	subs r6, r6, r0
	b _0814C380
_0814C32C:
	ldr r6, [r5, #0x0C]
	mov r1, r8
	ldr r0, [r1, #0x0C]
	subs r4, r6, r0
	adds r1, r0, #0x0
	cmp r4, #0x00
	bge _0814C33C
	negs r4, r4
_0814C33C:
	ldr r2, [r5, #0x10]
	mov r3, r8
	ldr r0, [r3, #0x10]
	subs r3, r2, r0
	cmp r3, #0x00
	bge _0814C34A
	negs r3, r3
_0814C34A:
	cmp r4, r3
	blt _0814C354
	adds r7, r6, #0x0
	adds r6, r0, #0x0
	b _0814C358
_0814C354:
	adds r7, r1, #0x0
	adds r6, r2, #0x0
_0814C358:
	ldr r5, _0814C444 @ =0x03001038
	ldr r4, _0814C448 @ =0x0819832C
	ldr r0, _0814C44C @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	subs r0, r7, r1
	movs r1, #0x02
	bl _call_via_r2
	adds r7, r0, #0x0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	mov r1, r8
	ldr r0, [r1, #0x10]
	subs r0, r6, r0
	movs r1, #0x02
	bl _call_via_r2
	adds r6, r0, #0x0
_0814C380:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0xAC
	lsls r1, r1, #0x01
	add r1, r9
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x22]
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r6, #0x0
	bl sub_813A284
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0814C450 @ =0x083A05EC
	ldr r0, _0814C454 @ =0x00000216
	add r0, r8
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	mov r0, r8
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	mov r0, r8
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r3, _0814C458 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814C45C
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814C45E
_0814C444: .4byte 0x03001038
_0814C448: .4byte 0x0819832C
_0814C44C: .4byte 0x08198220
_0814C450: .4byte dword_83A05EC @ =0x083A05EC
_0814C454: .4byte 0x00000216
_0814C458: .4byte 0x00000242
_0814C45C:
	movs r0, #0xFF
_0814C45E:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r0, _0814C478 @ =0x0814C47D
	ldr r2, [sp, #0x008]
	str r0, [r2, #0x00]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814C478: .4byte sub_814C47C
