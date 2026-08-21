	.syntax unified
	.text

	thumb_func_start sub_8083860
sub_8083860:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	str r0, [sp, #0x010]
	ldr r5, [sp, #0x038]
	ldr r0, [sp, #0x03C]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x014]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r0, #0x03
	bl sub_81980C8
	mov r8, r0
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	add r0, r10
	lsls r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov r10, r0
	mov r0, r9
	ands r0, r1
	mov r9, r0
	b _0808391E
_080838B0:
	adds r1, r7, #0x0
	adds r1, #0x08
	ldr r2, [sp, #0x014]
	lsls r0, r2, #0x03
	cmp r1, r0
	bgt _08083924
_080838BC:
	ldrb r4, [r5, #0x00]
	adds r5, #0x01
	cmp r4, #0xFF
	beq _080838BC
	movs r0, #0xFF
	subs r1, r0, r4
	cmp r1, #0x01
	ble _080838D0
	movs r1, #0x00
	b _080838DE
_080838D0:
	lsls r0, r1, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808391E
	ldrb r4, [r5, #0x00]
	adds r5, #0x01
_080838DE:
	lsls r0, r1, #0x02
	mov r1, r8
	adds r6, r0, r1
	ldr r0, [r6, #0x00]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r2, r9
	str r2, [sp, #0x008]
	movs r0, #0x00
	str r0, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	adds r2, r7, #0x0
	mov r3, r10
	bl sub_8199E48
	adds r3, r7, #0x1
	adds r1, r4, #0x0
	asrs r1, r1, #0x03
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	movs r0, #0x07
	ands r4, r0
	lsls r2, r4, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	movs r1, #0x0F
	ands r0, r1
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_0808391E:
	ldrb r0, [r5, #0x00]
	cmp r0, #0x00
	bne _080838B0
_08083924:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
