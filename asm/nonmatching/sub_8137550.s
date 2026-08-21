	.syntax unified
	.text

	thumb_func_start sub_8137550
sub_8137550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	adds r0, #0x58
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x01
	add r2, r9
	str r2, [sp, #0x014]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _08137574
	adds r0, #0xFF
_08137574:
	asrs r6, r0, #0x08
	mov r4, r9
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137580
	adds r0, #0xFF
_08137580:
	asrs r7, r0, #0x08
	ldr r2, [r1, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0813758C
	adds r0, #0xFF
_0813758C:
	asrs r3, r0, #0x08
	ldr r4, [sp, #0x014]
	ldrh r0, [r4, #0x38]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x3A]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, [r1, #0x0C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _081375B0
	adds r0, #0xFF
_081375B0:
	asrs r2, r0, #0x08
	ldr r3, [sp, #0x014]
	ldrh r0, [r3, #0x3C]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	ldr r4, [sp, #0x014]
	ldrh r0, [r4, #0x3E]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r1, #0x98
	lsls r1, r1, #0x01
	add r1, r9
	adds r1, r1, r0
	movs r0, #0x9B
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r2, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r2
	movs r2, #0x00
	ldsh r4, [r1, r2]
	muls r0, r4
	movs r5, #0x00
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r0, r7, r2
	mov r12, r0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x020]
	cmp r12, r0
	ble _08137610
	movs r0, #0x00
	movs r5, #0x01
	str r0, [sp, #0x000]
_08137610:
	adds r0, r7, r2
	mov r8, r0
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x024]
	cmp r8, r0
	bge _0813762E
	adds r0, r5, #0x0
	adds r1, r0, #0x1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x02
	add r0, sp
	str r3, [r0, #0x00]
_0813762E:
	subs r1, r6, r2
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	cmp r1, r10
	ble _0813764C
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x02
	str r0, [r1, #0x00]
_0813764C:
	adds r1, r6, r2
	ldr r2, [sp, #0x01C]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	cmp r1, r8
	bge _0813766A
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x03
	str r0, [r1, #0x00]
_0813766A:
	cmp r5, #0x00
	beq _08137734
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	add r0, sp
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r0, #0x11
	muls r6, r0
	cmp r0, #0x00
	beq _0813768E
	movs r7, #0x00
_0813768E:
	cmp r5, #0x01
	beq _081376B4
	cmp r5, #0x01
	bgt _0813769C
	cmp r5, #0x00
	beq _081376A6
	b _081376DC
_0813769C:
	cmp r5, #0x02
	beq _081376C2
	cmp r5, #0x03
	beq _081376D0
	b _081376DC
_081376A6:
	subs r0, r7, r4
	ldr r3, [sp, #0x020]
	subs r7, r3, r7
	cmp r0, r3
	blt _081376DC
	negs r7, r4
	b _081376DC
_081376B4:
	adds r0, r7, r4
	ldr r1, [sp, #0x024]
	subs r7, r1, r7
	cmp r0, r1
	bgt _081376DC
	adds r7, r4, #0x0
	b _081376DC
_081376C2:
	subs r0, r6, r4
	mov r2, r10
	subs r6, r2, r6
	cmp r0, r10
	blt _081376DC
	negs r6, r4
	b _081376DC
_081376D0:
	adds r0, r6, r4
	mov r3, r8
	subs r6, r3, r6
	cmp r0, r8
	bgt _081376DC
	adds r6, r4, #0x0
_081376DC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r9
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x01
	ldr r0, [sp, #0x014]
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r0, _08137744 @ =0x00000239
	add r0, r9
	movs r4, #0x00
	strb r3, [r0, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	ldr r0, [sp, #0x014]
	adds r1, r0, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _08137748 @ =0x0000023E
	add r0, r9
	strh r1, [r0, #0x00]
	ldr r1, [sp, #0x010]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r5, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x01
	adds r0, r1, r3
	strh r6, [r0, #0x00]
	subs r2, #0x16
	adds r0, r1, r2
	strh r7, [r0, #0x00]
	adds r3, #0x04
	adds r0, r1, r3
	strh r4, [r0, #0x00]
_08137734:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08137744: .4byte 0x00000239
_08137748: .4byte 0x0000023E
