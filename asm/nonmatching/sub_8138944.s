	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138992
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_08138978:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138978
_08138992:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _081389D4
	movs r1, #0x00
_081389A2:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r6, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389BC
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x04
	b _081389C2
_081389BC:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
_081389C2:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389A2
_081389D4:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138A16
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_081389E6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389FE
	movs r0, #0x0F
	ands r0, r2
	b _08138A04
_081389FE:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
_08138A04:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389E6
_08138A16:
	mov r0, r12
	asrs r2, r0, #0x10
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _08138A36
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r3, #0x01
_08138A36:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _08138A4C
	ldrb r1, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r3, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138A4C:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	beq _08138A6A
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138A74 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138A6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08138A74: .4byte 0x0000033D
