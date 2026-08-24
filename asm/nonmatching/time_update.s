	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r0, #0x28
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801B9BA
	adds r0, r5, #0x0
	adds r0, #0x29
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r7, r0, #0x0
	cmp r1, #0x00
	ble _0801B954
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r1, #0x0
	cmp r0, #0x3C
	bne _0801B9BA
	strb r3, [r6, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x23
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r2, #0x0
	cmp r0, #0x3C
	bne _0801B9BA
	strb r3, [r4, #0x00]
	subs r2, #0x01
	ldrb r0, [r2, #0x00]
	adds r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x64
	bne _0801B9BA
	strb r3, [r2, #0x00]
	movs r0, #0x3B
	strb r0, [r6, #0x00]
	strb r0, [r4, #0x00]
	movs r0, #0x63
	strb r0, [r2, #0x00]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	strb r3, [r7, #0x00]
	b _0801B9BA
_0801B954:
	cmp r1, #0x00
	bge _0801B9BA
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0x23
	adds r2, r5, #0x0
	adds r2, #0x22
	cmp r0, #0x00
	bge _0801B99E
	movs r1, #0x3B
	strb r1, [r6, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x01
	strb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0801B99E
	strb r1, [r4, #0x00]
	ldrb r0, [r2, #0x00]
	subs r0, #0x01
	strb r0, [r2, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _0801B99E
	strb r3, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x25
	strb r3, [r0, #0x00]
	strb r3, [r2, #0x00]
	strb r3, [r4, #0x00]
	strb r3, [r6, #0x00]
_0801B99E:
	movs r0, #0x00
	ldsb r0, [r6, r0]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	adds r0, r0, r1
	movs r1, #0x00
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	cmp r0, #0x00
	bne _0801B9BA
	adds r1, r5, #0x0
	adds r1, #0x25
	strb r0, [r1, #0x00]
	strb r0, [r7, #0x00]
_0801B9BA:
	ldrh r1, [r5, #0x20]
	ldr r0, _0801BAE8 @ =0x0000FFFF
	cmp r1, r0
	bne _0801B9C4
	b _0801BBAE
_0801B9C4:
	adds r2, r5, #0x0
	adds r2, #0x28
	ldrb r1, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	mov r9, r2
	cmp r0, #0x00
	bne _0801B9D6
	b _0801BBAE
_0801B9D6:
	mov r2, sp
	mov r1, sp
	movs r0, #0x20
	strb r0, [r1, #0x05]
	strb r0, [r2, #0x02]
	movs r1, #0x00
	adds r0, r5, #0x0
	adds r0, #0x22
	ldrb r3, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x24
	adds r4, r5, #0x0
	adds r4, #0x23
	adds r7, r5, #0x0
	adds r7, #0x25
	ldr r0, _0801BAEC @ =0x0819832C
	mov r12, r0
	ldr r2, _0801BAF0 @ =0x08198220
	movs r0, #0x26
	adds r0, r0, r5
	mov r10, r0
	movs r0, #0x27
	adds r0, r0, r5
	mov r8, r0
	cmp r3, #0x09
	bls _0801BA1C
_0801BA0A:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r3, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x09
	bhi _0801BA0A
_0801BA1C:
	mov r0, sp
	strb r1, [r0, #0x00]
	movs r1, #0x00
	cmp r3, #0x00
	beq _0801BA36
_0801BA26:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	subs r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801BA26
_0801BA36:
	mov r0, sp
	strb r1, [r0, #0x01]
	movs r1, #0x00
	ldrb r3, [r4, #0x00]
	cmp r3, #0x09
	bls _0801BA54
_0801BA42:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r3, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x09
	bhi _0801BA42
_0801BA54:
	mov r0, sp
	strb r1, [r0, #0x03]
	movs r1, #0x00
	cmp r3, #0x00
	beq _0801BA6E
_0801BA5E:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	subs r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801BA5E
_0801BA6E:
	mov r0, sp
	strb r1, [r0, #0x04]
	mov r1, r12
	subs r0, r1, r2
	ldr r3, _0801BAF4 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	movs r1, #0x00
	ldsb r1, [r6, r1]
	movs r0, #0x64
	muls r0, r1
	movs r1, #0x3C
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	strb r3, [r7, #0x00]
	movs r1, #0x00
	cmp r3, #0x09
	bls _0801BAA8
_0801BA96:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r3, #0x0
	subs r0, #0x0A
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x09
	bhi _0801BA96
_0801BAA8:
	mov r0, sp
	strb r1, [r0, #0x06]
	movs r1, #0x00
	cmp r3, #0x00
	beq _0801BAC2
_0801BAB2:
	adds r0, r1, #0x2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	subs r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	bne _0801BAB2
_0801BAC2:
	mov r0, sp
	strb r1, [r0, #0x07]
	ldr r7, _0801BAF8 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r2, r10
	ldrb r4, [r2, #0x00]
	movs r6, #0x00
	ldr r3, _0801BAFC @ =0x000001FF
	mov r10, r3
_0801BADC:
	cmp r6, #0x02
	beq _0801BAE4
	cmp r6, #0x05
	bne _0801BB00
_0801BAE4:
	ldr r1, _0801BAE8 @ =0x0000FFFF
	b _0801BB02
_0801BAE8: .4byte 0x0000FFFF
_0801BAEC: .4byte 0x0819832C
_0801BAF0: .4byte 0x08198220
_0801BAF4: .4byte 0x03001038
_0801BAF8: .4byte 0x0300034C
_0801BAFC: .4byte 0x000001FF
_0801BB00:
	movs r1, #0x00
_0801BB02:
	mov r7, r8
	ldrb r0, [r7, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldr r2, _0801BB54 @ =0xFFFF8000
	adds r1, r2, #0x0
	orrs r0, r1
	mov r3, r12
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	mov r7, r10
	ands r0, r7
	strh r0, [r3, #0x02]
	mov r0, r9
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0C
	ldrh r0, [r5, #0x20]
	mov r3, sp
	adds r2, r3, r6
	lsrs r0, r0, #0x05
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	orrs r1, r0
	mov r7, r12
	strh r1, [r7, #0x04]
	mov r3, r12
	adds r3, #0x08
	adds r2, r6, #0x1
	adds r0, r4, #0x0
	adds r0, #0x08
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r2, #0x02
	beq _0801BB50
	cmp r2, #0x05
	bne _0801BB5C
_0801BB50:
	ldr r1, _0801BB58 @ =0x0000FFFF
	b _0801BB5E
_0801BB54: .4byte 0xFFFF8000
_0801BB58: .4byte 0x0000FFFF
_0801BB5C:
	movs r1, #0x00
_0801BB5E:
	mov r7, r8
	ldrb r0, [r7, #0x00]
	adds r0, r0, r1
	movs r1, #0xFF
	ands r0, r1
	ldr r7, _0801BBC0 @ =0xFFFF8000
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r0, r4, #0x0
	mov r1, r10
	ands r0, r1
	strh r0, [r3, #0x02]
	mov r7, r9
	ldrb r1, [r7, #0x00]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1C
	lsls r1, r1, #0x0C
	ldrh r0, [r5, #0x20]
	add r2, sp
	lsrs r0, r0, #0x05
	ldrb r2, [r2, #0x00]
	adds r0, r0, r2
	orrs r1, r0
	strh r1, [r3, #0x04]
	movs r0, #0x10
	add r12, r0
	adds r6, #0x02
	adds r0, r4, #0x0
	adds r0, #0x08
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0x07
	ble _0801BADC
	ldr r1, _0801BBC4 @ =0x0300034C
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r0, r1, r2
	mov r3, r12
	str r3, [r0, #0x00]
_0801BBAE:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801BBC0: .4byte 0xFFFF8000
_0801BBC4: .4byte 0x0300034C
	.byte 0x02, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0x26, 0x30, 0x01, 0x70, 0x01, 0x30, 0x01, 0x70, 0x28, 0x32
	.byte 0x10, 0x78, 0x01, 0x21, 0x08, 0x43, 0x10, 0x70, 0x70, 0x47, 0x00, 0x00
