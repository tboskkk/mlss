	.syntax unified
	.text

	thumb_func_start sub_81DC81C
sub_81DC81C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _081DC890 @ =0x08CDB634
	ldr r0, [r0, #0x08]
	mov r8, r0
	ldr r7, [r0, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _081DC894 @ =0x08CDBA40
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	adds r6, r1, #0x0
	adds r6, #0x10
	ldr r3, _081DC898 @ =0x08CDBA44
	mov r10, r3
	ldr r0, [r3, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	cmp r0, r9
	beq _081DC85E
	ldr r3, _081DC89C @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _081DC8A0 @ =0xFFFFF000
	ands r6, r0
_081DC85E:
	ldr r0, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_81DCDF4
	adds r5, r0, #0x0
	cmp r5, r9
	beq _081DC960
	cmp r5, r4
	bcs _081DC876
	ldr r0, _081DC890 @ =0x08CDB634
	cmp r8, r0
	bne _081DC960
_081DC876:
	ldr r1, _081DC8A4 @ =0x08CDBA50
	ldr r0, [r1, #0x00]
	adds r2, r0, r6
	str r2, [r1, #0x00]
	cmp r5, r4
	bne _081DC8A8
	adds r2, r6, r7
	ldr r3, _081DC890 @ =0x08CDB634
	ldr r1, [r3, #0x08]
	movs r0, #0x01
	orrs r2, r0
	str r2, [r1, #0x04]
	b _081DC948
_081DC890: .4byte 0x08CDB634
_081DC894: .4byte 0x08CDBA40
_081DC898: .4byte 0x08CDBA44
_081DC89C: .4byte 0x0000100F
_081DC8A0: .4byte 0xFFFFF000
_081DC8A4: .4byte 0x08CDBA50
_081DC8A8:
	mov r3, r10
	ldr r0, [r3, #0x00]
	cmp r0, r9
	bne _081DC8B4
	str r5, [r3, #0x00]
	b _081DC8BA
_081DC8B4:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1, #0x00]
_081DC8BA:
	adds r1, r5, #0x0
	adds r1, #0x08
	movs r0, #0x07
	ands r1, r0
	cmp r1, #0x00
	beq _081DC8CE
	movs r0, #0x08
	subs r4, r0, r1
	adds r5, r5, r4
	b _081DC8D0
_081DC8CE:
	movs r4, #0x00
_081DC8D0:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #0x05
	subs r1, #0x01
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x05
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_81DCDF4
	adds r2, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _081DC960
	ldr r1, _081DC918 @ =0x08CDBA50
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	ldr r1, _081DC91C @ =0x08CDB634
	str r5, [r1, #0x08]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #0x01
	orrs r2, r3
	str r2, [r5, #0x04]
	cmp r8, r1
	beq _081DC948
	cmp r7, #0x0F
	bhi _081DC920
	str r3, [r5, #0x04]
	b _081DC960
	.byte 0x00, 0x00
_081DC918: .4byte 0x08CDBA50
_081DC91C: .4byte 0x08CDB634
_081DC920:
	subs r7, #0x0C
	movs r0, #0x08
	negs r0, r0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #0x04]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #0x04]
	adds r1, r2, r7
	movs r0, #0x05
	str r0, [r1, #0x04]
	str r0, [r1, #0x08]
	cmp r7, #0x0F
	bls _081DC948
	mov r1, r8
	adds r1, #0x08
	ldr r0, [sp, #0x000]
	bl sub_81DD2EC
_081DC948:
	ldr r0, _081DC96C @ =0x08CDBA50
	ldr r2, _081DC970 @ =0x08CDBA48
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bls _081DC956
	str r1, [r2, #0x00]
_081DC956:
	ldr r2, _081DC974 @ =0x08CDBA4C
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bls _081DC960
	str r1, [r2, #0x00]
_081DC960:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7, pc}
_081DC96C: .4byte 0x08CDBA50
_081DC970: .4byte 0x08CDBA48
_081DC974: .4byte 0x08CDBA4C
