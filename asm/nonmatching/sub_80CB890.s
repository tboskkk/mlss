	.syntax unified
	.text

	thumb_func_start sub_80CB890
sub_80CB890:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r2, [r0, #0x2C]
	cmp r2, #0x00
	beq _080CB8B2
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	beq _080CB94C
_080CB8B2:
	movs r5, #0x00
	movs r6, #0x00
_080CB8B6:
	ldr r0, _080CB948 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CB8FA
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CB8FA
	adds r5, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080CB8FA
	mov r2, r10
	str r4, [r2, #0x2C]
_080CB8FA:
	adds r1, r6, #0x1
	ldr r0, _080CB948 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CB940
	ldr r0, [r4, #0x28]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CB940
	adds r5, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	cmp r0, #0x00
	bne _080CB940
	mov r2, r10
	str r4, [r2, #0x2C]
_080CB940:
	adds r6, #0x02
	cmp r6, #0x05
	ble _080CB8B6
	b _080CBAC8
_080CB948: .4byte 0x03000FD8
_080CB94C:
	ldr r0, _080CB9B0 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0xF0
	ands r0, r1
	cmp r0, #0x00
	bne _080CB95A
	b _080CBAC8
_080CB95A:
	ldr r0, [r2, #0x38]
	cmp r0, #0x00
	bge _080CB962
	adds r0, #0xFF
_080CB962:
	asrs r0, r0, #0x08
	ldr r1, [r2, #0x28]
	adds r1, #0xE4
	ldr r3, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r3, r1]
	adds r0, r0, r1
	mov r8, r0
	ldr r1, [r2, #0x3C]
	cmp r1, #0x00
	bge _080CB97A
	adds r1, #0xFF
_080CB97A:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r3, r0]
	adds r7, r1, r0
	ldr r0, _080CB9B4 @ =0x7FFFFFFF
	str r0, [sp, #0x000]
	movs r1, #0x00
	mov r9, r1
_080CB98A:
	ldr r0, _080CB9B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	mov r2, r9
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, _080CB9B0 @ =0x0300034C
	ldrh r0, [r0, #0x3C]
	movs r1, #0xF0
	ands r1, r0
	cmp r1, #0x20
	beq _080CBA22
	cmp r1, #0x20
	bgt _080CB9BC
	cmp r1, #0x10
	beq _080CBA3E
	b _080CBA6A
	.byte 0x00, 0x00
_080CB9B0: .4byte 0x0300034C
_080CB9B4: .4byte 0x7FFFFFFF
_080CB9B8: .4byte 0x03000FD8
_080CB9BC:
	cmp r1, #0x40
	beq _080CB9C6
	cmp r1, #0x80
	beq _080CB9F4
	b _080CBA6A
_080CB9C6:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CB9CE
	adds r0, #0xFF
_080CB9CE:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	subs r5, r7, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CB9E6
	adds r0, #0xFF
_080CB9E6:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r6, r0, r1
	b _080CBA6A
_080CB9F4:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CB9FC
	adds r0, #0xFF
_080CB9FC:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	subs r5, r0, r7
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBA14
	adds r0, #0xFF
_080CBA14:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	subs r6, r0, r2
	b _080CBA6A
_080CBA22:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBA2A
	adds r0, #0xFF
_080CBA2A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r5, r1, r0
	b _080CBA58
_080CBA3E:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBA46
	adds r0, #0xFF
_080CBA46:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r5, r0, r1
_080CBA58:
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBA60
	adds r0, #0xFF
_080CBA60:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	subs r6, r0, r7
_080CBA6A:
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBABC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBABC
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r6, #0x0
	muls r0, r6
	adds r3, r1, r0
	cmp r5, #0x00
	ble _080CBABC
	ldr r2, _080CBAD8 @ =0x03001038
	ldr r1, _080CBADC @ =0x0819832C
	ldr r0, _080CBAE0 @ =0x08198220
	subs r1, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r1
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	bl _call_via_r2
	adds r3, r0, #0x0
	ldr r0, [sp, #0x000]
	cmp r0, r3
	ble _080CBABC
	str r3, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0x08
	mov r1, r10
	str r0, [r1, #0x2C]
_080CBABC:
	movs r2, #0x01
	add r9, r2
	mov r0, r9
	cmp r0, #0x05
	bgt _080CBAC8
	b _080CB98A
_080CBAC8:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CBAD8: .4byte 0x03001038
_080CBADC: .4byte 0x0819832C
_080CBAE0: .4byte 0x08198220
