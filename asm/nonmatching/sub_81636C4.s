	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	movs r1, #0x00
	mov r7, r8
	adds r7, #0x04
_081636D6:
	lsls r0, r1, #0x01
	adds r6, r1, #0x1
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r4, r0, r7
	adds r5, r4, #0x0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _081636F8
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_081636F8:
	ldr r2, [r4, #0x04]
	cmp r2, #0x00
	beq _0816370E
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_0816370E:
	ldr r2, [r5, #0x08]
	cmp r2, #0x00
	beq _08163724
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08163724:
	adds r1, r6, #0x0
	cmp r1, #0x01
	ble _081636D6
	movs r0, #0x01
	mov r1, r9
	ands r0, r1
	cmp r0, #0x00
	beq _0816373A
	mov r0, r8
	bl free_heap_8018DA8
_0816373A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
