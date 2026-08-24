	.syntax unified
	.text

	thumb_func_start sub_819B864
sub_819B864:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	movs r0, #0x00
	mov r9, r0
	movs r2, #0x00
_0819B876:
	ldr r3, _0819B8D8 @ =0x03007FF0
	ldr r0, [r3, #0x00]
	ldr r1, _0819B8DC @ =0x00000494
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	adds r1, r2, #0x1
	str r1, [sp, #0x000]
	cmp r0, #0x00
	beq _0819B93A
	movs r6, #0x00
	lsls r0, r2, #0x01
	mov r8, r3
	lsls r7, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x07
	mov r10, r0
_0819B89C:
	mov r1, r8
	ldr r0, [r1, #0x00]
	add r0, r10
	lsls r1, r6, #0x05
	adds r4, r0, r1
	ldrh r2, [r4, #0x00]
	movs r1, #0x01
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, #0x00
	beq _0819B934
	lsls r1, r6
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0819B8E8
	movs r0, #0x02
	orrs r0, r2
	strh r0, [r4, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _0819B8E0 @ =0x000004A4
	adds r0, r0, r1
	adds r0, r0, r7
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	ldr r1, _0819B8E4 @ =0x0821CB54
	bl sub_819B450
	b _0819B934
_0819B8D8: .4byte 0x03007FF0
_0819B8DC: .4byte 0x00000494
_0819B8E0: .4byte 0x000004A4
_0819B8E4: .4byte dword_821CB54 @ =0x0821CB54
_0819B8E8:
	mov r0, r9
	orrs r0, r1
	mov r9, r0
	ldr r0, _0819B950 @ =0x08A80688
	lsls r1, r6, #0x02
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _0819B920
	ldr r1, _0819B954 @ =0x0000FFFD
	adds r0, r1, #0x0
	ands r0, r2
	strh r0, [r4, #0x00]
	ldr r1, [r5, #0x18]
	adds r0, r4, #0x0
	bl _call_via_r1
	ldrh r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0819B920
	ldr r1, [r5, #0x00]
	adds r0, r4, #0x0
	bl _call_via_r1
_0819B920:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, _0819B958 @ =0x000004A4
	adds r0, r0, r1
	adds r0, r0, r7
	ldr r2, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_819B450
_0819B934:
	adds r6, #0x01
	cmp r6, #0x0B
	ble _0819B89C
_0819B93A:
	ldr r2, [sp, #0x000]
	cmp r2, #0x02
	ble _0819B876
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0819B950: .4byte dword_8A80688 @ =0x08A80688
_0819B954: .4byte 0x0000FFFD
_0819B958: .4byte 0x000004A4
