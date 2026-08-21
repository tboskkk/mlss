	.syntax unified
	.text

	thumb_func_start sub_8199E48
sub_8199E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	mov r8, r1
	mov r10, r2
	adds r4, r3, #0x0
	ldr r0, [sp, #0x034]
	mov r12, r0
	ldr r3, [sp, #0x038]
	ldr r7, [sp, #0x03C]
	ldr r0, [sp, #0x040]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x00C]
	mov r1, r12
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	mov r9, r0
	movs r1, #0x0F
	ands r1, r0
	lsls r5, r1, #0x02
	str r5, [sp, #0x010]
	lsrs r2, r2, #0x1C
	adds r0, r3, #0x0
	muls r0, r2
	muls r0, r1
	lsls r0, r0, #0x02
	adds r0, #0x84
	add r12, r0
	subs r4, r4, r5
	movs r0, #0x01
	ldr r1, [sp, #0x00C]
	ands r0, r1
	cmp r0, #0x00
	beq _08199E9E
	subs r4, r4, r5
_08199E9E:
	movs r1, #0x08
	negs r1, r1
	mov r0, r10
	ands r0, r1
	lsls r0, r0, #0x02
	adds r6, r6, r0
	movs r2, #0x07
	adds r0, r4, #0x0
	ands r0, r2
	lsls r0, r0, #0x02
	adds r6, r6, r0
	ands r4, r1
	mov r0, r8
	muls r0, r4
	lsls r0, r0, #0x02
	adds r6, r6, r0
	mov r0, r8
	subs r0, #0x01
	lsls r0, r0, #0x05
	mov r8, r0
	adds r3, r2, #0x0
	mov r4, r10
	ands r3, r4
	cmp r7, #0x0D
	bls _08199ED2
	movs r7, #0x0E
_08199ED2:
	lsls r0, r7, #0x04
	adds r0, r0, r7
	lsls r1, r0, #0x08
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r7, r0, r1
	ldr r2, _08199F1C @ =0x03001040
	movs r0, #0xF0
	mov r1, r9
	ands r0, r1
	subs r0, #0x20
	ldr r4, [sp, #0x00C]
	lsls r1, r4, #0x02
	orrs r1, r0
	adds r1, r1, r2
	lsls r3, r3, #0x02
	mov r0, r8
	str r0, [sp, #0x000]
	mov r4, r12
	str r4, [sp, #0x004]
	ldr r0, _08199F20 @ =0x11111111
	str r0, [sp, #0x008]
	ldr r4, [r1, #0x00]
	adds r0, r6, #0x0
	ldr r1, [sp, #0x010]
	adds r2, r7, #0x0
	bl _call_via_r4
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08199F1C: .4byte 0x03001040
_08199F20: .4byte 0x11111111
