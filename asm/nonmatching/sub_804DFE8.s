	.syntax unified
	.text

	thumb_func_start sub_804DFE8
sub_804DFE8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldrb r2, [r7, #0x00]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	bne _0804E014
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	adds r1, r3, #0x0
	movs r2, #0x01
	bl sub_8020DD0
	str r0, [r7, #0x44]
	b _0804E0C0
_0804E014:
	ldr r1, _0804E0CC @ =0x083A0C5A
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1D
	subs r0, #0x02
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r5, [r0, #0x00]
	ldr r1, _0804E0D0 @ =0x00001004
	movs r0, #0x00
	mov r8, r0
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0C
	str r0, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8021574
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r7, #0x44]
	ldr r2, _0804E0D4 @ =0x083A05EC
	ldrb r1, [r7, #0x01]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	adds r1, #0x20
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	movs r5, #0x7F
	ands r5, r1
	lsrs r6, r1, #0x07
	mov r1, r8
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x44]
	bl sub_8021ED8
	adds r1, r7, #0x0
	adds r1, #0x3E
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _0804E0B0
	adds r2, r0, #0x0
	ldr r1, [r7, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r2, r0
	blt _0804E0A2
_0804E096:
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	subs r2, r2, r0
	cmp r2, r0
	bge _0804E096
_0804E0A2:
	ldr r0, [r7, #0x44]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
_0804E0B0:
	ldr r2, [r7, #0x44]
	lsls r3, r6, #0x06
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
_0804E0C0:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804E0CC: .4byte dword_83A0C5A @ =0x083A0C5A
_0804E0D0: .4byte 0x00001004
_0804E0D4: .4byte dword_83A05EC @ =0x083A05EC
