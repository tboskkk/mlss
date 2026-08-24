	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, [r0, #0x08]
	ldr r1, [r0, #0x0C]
	ldr r3, [r0, #0x10]
	ldr r0, [r1, #0x00]
	ldr r5, [r2, #0x00]
	subs r0, r0, r5
	cmp r0, #0x00
	bge _080E4C00
	adds r0, #0x7F
_080E4C00:
	asrs r0, r0, #0x07
	mov r8, r0
	ldr r0, [r1, #0x04]
	ldr r4, [r2, #0x04]
	subs r0, r0, r4
	cmp r0, #0x00
	bge _080E4C10
	adds r0, #0x7F
_080E4C10:
	asrs r7, r0, #0x07
	ldr r0, [r1, #0x08]
	ldr r2, [r2, #0x08]
	subs r0, r0, r2
	cmp r0, #0x00
	bge _080E4C1E
	adds r0, #0x7F
_080E4C1E:
	asrs r6, r0, #0x07
	ldr r0, [r3, #0x00]
	subs r0, r0, r5
	cmp r0, #0x00
	bge _080E4C2A
	adds r0, #0x7F
_080E4C2A:
	asrs r5, r0, #0x07
	ldr r0, [r3, #0x04]
	subs r0, r0, r4
	cmp r0, #0x00
	bge _080E4C36
	adds r0, #0x7F
_080E4C36:
	asrs r4, r0, #0x07
	ldr r0, [r3, #0x08]
	subs r0, r0, r2
	cmp r0, #0x00
	bge _080E4C42
	adds r0, #0x7F
_080E4C42:
	asrs r2, r0, #0x07
	adds r0, r7, #0x0
	muls r0, r2
	adds r1, r4, #0x0
	muls r1, r6
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r10, r0
	adds r0, r6, #0x0
	muls r0, r5
	mov r1, r8
	muls r1, r2
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r9, r0
	mov r0, r8
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r7
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r8, r0
	ldr r0, _080E4D40 @ =0x03000F90
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x04]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	subs r0, r0, r1
	cmp r0, #0x00
	bge _080E4C8C
	adds r0, #0x7F
_080E4C8C:
	asrs r7, r0, #0x07
	ldr r1, [r2, #0x08]
	movs r0, #0xA0
	lsls r0, r0, #0x07
	subs r0, r0, r1
	cmp r0, #0x00
	bge _080E4C9C
	adds r0, #0x7F
_080E4C9C:
	asrs r6, r0, #0x07
	ldr r0, [r2, #0x0C]
	negs r0, r0
	cmp r0, #0x00
	bge _080E4CA8
	adds r0, #0x7F
_080E4CA8:
	asrs r5, r0, #0x07
	mov r1, r10
	mov r0, r10
	muls r0, r1
	mov r2, r9
	mov r1, r9
	muls r1, r2
	adds r0, r0, r1
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080E4CC6
	adds r0, #0xFF
_080E4CC6:
	asrs r3, r0, #0x08
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080E4CDE
	adds r0, #0xFF
_080E4CDE:
	asrs r0, r0, #0x08
	muls r3, r0
	ldr r4, _080E4D44 @ =0x03001038
	ldr r1, [r4, #0x00]
	adds r0, r3, #0x0
	bl _call_via_r1
	adds r3, r0, #0x0
	mov r0, r10
	muls r0, r7
	mov r1, r9
	muls r1, r6
	adds r0, r0, r1
	mov r1, r8
	muls r1, r5
	adds r0, r0, r1
	ldr r1, _080E4D48 @ =0x0819832C
	ldr r2, _080E4D4C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r4, #0x00]
	adds r2, r2, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	ldr r2, _080E4D40 @ =0x03000F90
	ldr r1, [r2, #0x00]
	movs r2, #0x02
	ldsb r2, [r1, r2]
	ldrb r1, [r1, #0x03]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	subs r1, r1, r2
	muls r0, r1
	cmp r0, #0x00
	bge _080E4D2E
	ldr r1, _080E4D50 @ =0x000001FF
	adds r0, r0, r1
_080E4D2E:
	asrs r0, r0, #0x09
	adds r0, r0, r2
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080E4D40: .4byte 0x03000F90
_080E4D44: .4byte 0x03001038
_080E4D48: .4byte 0x0819832C
_080E4D4C: .4byte 0x08198220
_080E4D50: .4byte 0x000001FF
