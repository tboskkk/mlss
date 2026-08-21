	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80CB6AC
sub_80CB6AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CB774 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CB76A
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB6EE
	cmp r1, #0x04
	bne _080CB73C
_080CB6EE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080CB6F6
	adds r0, #0xFF
_080CB6F6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CB710
	adds r2, #0xFF
_080CB710:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	subs r2, #0x0A
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x24
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080CB73C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB74E
	cmp r1, #0x04
	bne _080CB766
_080CB74E:
	ldr r2, _080CB778 @ =0x00002035
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CB766:
	ldr r0, _080CB77C @ =0x080CCD81
	str r0, [r7, #0x4C]
_080CB76A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CB774: .4byte 0x03000FD8
_080CB778: .4byte 0x00002035
_080CB77C: .4byte sub_80CCD80
	thumb_func_start sub_80CB780
sub_80CB780:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	ldr r0, _080CB828 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CB884
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x53
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB7B8
	cmp r1, #0x04
	bne _080CB7F6
_080CB7B8:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB7C6
	adds r0, #0xFF
_080CB7C6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB7D4
	adds r0, #0xFF
_080CB7D4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CB7E2
	adds r0, #0xFF
_080CB7E2:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080CB7F6:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CB80A
	cmp r2, #0x04
	bne _080CB86C
_080CB80A:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CB830
	ldr r2, _080CB82C @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB83C
_080CB828: .4byte 0x03000FD8
_080CB82C: .4byte 0x00002002
_080CB830:
	ldr r2, _080CB88C @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CB83C:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080CB852
	movs r2, #0x01
_080CB852:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CB86C:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB87A
	cmp r2, #0x04
	bne _080CB884
_080CB87A:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080CB884:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CB88C: .4byte 0x0000204F
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
	thumb_func_start sub_80CBAE4
sub_80CBAE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	ldr r5, [r1, #0x2C]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080CBB02
	adds r0, #0xFF
_080CBB02:
	asrs r0, r0, #0x08
	ldr r1, [r5, #0x28]
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r9, r0
	ldr r1, [r5, #0x3C]
	cmp r1, #0x00
	bge _080CBB1A
	adds r1, #0xFF
_080CBB1A:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r1, r1, r0
	mov r8, r1
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBB30:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBB44
	adds r0, #0xFF
_080CBB44:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r3, r1, r0
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBB5E
	adds r0, #0xFF
_080CBB5E:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBBB0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBBB0
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBBB0
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBBB0
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBBB0:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBB30
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	cmp r5, r1
	beq _080CBBC6
	movs r0, #0x40
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_080CBBC6:
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	adds r5, r1, #0x0
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBBD4:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBBE8
	adds r0, #0xFF
_080CBBE8:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r3, r0, r1
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBC02
	adds r0, #0xFF
_080CBC02:
	asrs r0, r0, #0x08
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBC54
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBC54
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBC54
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBC54
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBC54:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBBD4
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	cmp r5, r1
	beq _080CBC6A
	movs r0, #0x80
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_080CBC6A:
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	adds r5, r1, #0x0
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBC78:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBC8C
	adds r0, #0xFF
_080CBC8C:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r3, r1, r0
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBCA6
	adds r0, #0xFF
_080CBCA6:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBCF8
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBCF8
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBCF8
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBCF8
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBCF8:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBC78
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x2C]
	cmp r5, r1
	beq _080CBD0E
	movs r0, #0x20
	ldr r2, [sp, #0x004]
	orrs r2, r0
	str r2, [sp, #0x004]
_080CBD0E:
	ldr r7, _080CBDC4 @ =0x7FFFFFFF
	adds r5, r1, #0x0
	movs r6, #0x00
	ldr r1, _080CBDC8 @ =0x0819832C
	ldr r0, _080CBDCC @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
_080CBD1C:
	ldr r0, _080CBDD0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r6, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080CBD30
	adds r0, #0xFF
_080CBD30:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r9
	subs r3, r0, r1
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _080CBD4A
	adds r0, #0xFF
_080CBD4A:
	asrs r0, r0, #0x08
	movs r1, #0x05
	ldsb r1, [r2, r1]
	adds r0, r0, r1
	mov r1, r8
	subs r2, r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CBD9C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080CBD9C
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r2, #0x0
	muls r0, r2
	adds r1, r1, r0
	cmp r3, #0x00
	ble _080CBD9C
	ldr r0, _080CBDD4 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r10
	adds r0, r1, #0x0
	adds r1, r3, #0x0
	bl _call_via_r2
	adds r1, r0, #0x0
	cmp r7, r1
	ble _080CBD9C
	adds r7, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x08
_080CBD9C:
	adds r6, #0x01
	cmp r6, #0x05
	ble _080CBD1C
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x2C]
	cmp r5, r0
	beq _080CBDB2
	movs r0, #0x10
	ldr r1, [sp, #0x004]
	orrs r1, r0
	str r1, [sp, #0x004]
_080CBDB2:
	ldr r0, [sp, #0x004]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080CBDC4: .4byte 0x7FFFFFFF
_080CBDC8: .4byte 0x0819832C
_080CBDCC: .4byte 0x08198220
_080CBDD0: .4byte 0x03000FD8
_080CBDD4: .4byte 0x03001038
	thumb_func_start sub_80CBDD8
sub_80CBDD8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r3, _080CBE60 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x08
	adds r1, r2, #0x0
	adds r1, #0x7D
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBE14
	cmp r1, #0x04
	bne _080CBE2C
_080CBE14:
	ldr r2, _080CBE64 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBE2C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBE3E
	cmp r1, #0x04
	bne _080CBE56
_080CBE3E:
	ldr r2, _080CBE68 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBE56:
	ldr r0, _080CBE6C @ =0x080CBE71
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CBE60: .4byte 0x03000FD8
_080CBE64: .4byte 0x00002035
_080CBE68: .4byte 0x00002064
_080CBE6C: .4byte sub_80CBE70
	thumb_func_start sub_80CBE70
sub_80CBE70:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r0, _080CBF44 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CBF3E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x88
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CBEAC
	cmp r1, #0x04
	bne _080CBEC4
_080CBEAC:
	ldr r2, _080CBF48 @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBEC4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CBED8
	cmp r2, #0x04
	bne _080CBEF0
_080CBED8:
	ldr r2, _080CBF4C @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CBEF0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CBEFE
	cmp r2, #0x04
	bne _080CBF2E
_080CBEFE:
	ldr r2, _080CBF50 @ =0x03001038
	ldr r0, _080CBF54 @ =0x0819832C
	ldr r1, _080CBF58 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CBF2E:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CBF5C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CBF60 @ =0x080CBF65
	str r0, [r7, #0x4C]
_080CBF3E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CBF44: .4byte 0x03000FD8
_080CBF48: .4byte 0x00002035
_080CBF4C: .4byte 0x00002064
_080CBF50: .4byte 0x03001038
_080CBF54: .4byte 0x0819832C
_080CBF58: .4byte 0x08198220
_080CBF5C: .4byte 0x00000FFF
_080CBF60: .4byte sub_80CBF64
	thumb_func_start sub_80CBF64
sub_80CBF64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080CC04C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r7, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080CBFAA
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CBFAA:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080CBFBA
	b _080CC4DE
_080CBFBA:
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CBFD2
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CBFD4
_080CBFD2:
	movs r1, #0x00
_080CBFD4:
	movs r2, #0x7E
	adds r2, r2, r5
	mov r9, r2
	movs r3, #0xAE
	adds r3, r3, r5
	mov r8, r3
	cmp r1, #0x00
	beq _080CC0B4
	ldr r2, _080CC04C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CC050
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC008
	movs r1, #0x33
_080CBFFC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CBFFC
_080CC008:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC01C
	movs r1, #0x33
_080CC010:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC010
_080CC01C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC030
	movs r1, #0x33
_080CC024:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC024
_080CC030:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC0AC
	movs r1, #0x03
_080CC03A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC044
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC044:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC03A
	b _080CC0AC
_080CC04C: .4byte 0x03000FD8
_080CC050:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC066
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC05A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC05A
_080CC066:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC07C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC070:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC070
_080CC07C:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC092
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC086:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC086
_080CC092:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC0AC
	movs r1, #0x10
_080CC09C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC0A6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC0A6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC09C
_080CC0AC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CC0B4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CC0C4
	adds r1, r0, #0x0
_080CC0C4:
	ldr r0, _080CC1C0 @ =0x00007FFF
	cmp r2, r0
	ble _080CC0CC
	adds r2, r0, #0x0
_080CC0CC:
	cmp r2, r1
	bge _080CC0D2
	adds r1, r2, #0x0
_080CC0D2:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080CC0EA
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CC0EC
_080CC0EA:
	movs r1, #0x00
_080CC0EC:
	cmp r1, #0x00
	bne _080CC0F2
	b _080CC242
_080CC0F2:
	movs r2, #0x1C
	negs r2, r2
	movs r3, #0x0C
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_807E680
	ldr r0, _080CC1C4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CC114
	b _080CC242
_080CC114:
	movs r2, #0x28
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x02
	adds r1, r6, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CC1C8 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080CC22E
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CC1CC
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CC178
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC16C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC16C
_080CC178:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC18E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC182:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC182
_080CC18E:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC1A4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC198:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC198
_080CC1A4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC22A
	movs r1, #0x10
_080CC1AE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC1B8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC1B8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC1AE
	b _080CC22A
_080CC1C0: .4byte 0x00007FFF
_080CC1C4: .4byte 0x0300034C
_080CC1C8: .4byte 0x03000FD8
_080CC1CC:
	adds r2, r6, #0x0
	adds r3, r4, #0x0
	cmp r6, #0x00
	beq _080CC1E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC1D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC1D8
_080CC1E4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC1FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC1EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC1EE
_080CC1FA:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CC210
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC204
_080CC210:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC22A
	movs r1, #0x10
_080CC21A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC224
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC224:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC21A
_080CC22A:
	bl sub_807F448
_080CC22E:
	mov r1, r8
	ldrh r0, [r1, #0x00]
	ldr r1, _080CC314 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r8
	strh r1, [r3, #0x00]
_080CC242:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CC24E
	b _080CC4DE
_080CC24E:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080CC318 @ =0x00007FFF
	cmp r1, r0
	ble _080CC25A
	adds r1, r0, #0x0
_080CC25A:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080CC272
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080CC274
_080CC272:
	movs r2, #0x00
_080CC274:
	cmp r2, #0x00
	bne _080CC27A
	b _080CC388
_080CC27A:
	ldr r3, _080CC31C @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080CC314 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r8
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CC320
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC2CA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2BE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2BE
_080CC2CA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC2E0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2D4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2D4
_080CC2E0:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC2F6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC2EA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC2EA
_080CC2F6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC37C
	movs r1, #0x10
_080CC300:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC30A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC30A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC300
	b _080CC37C
	.byte 0x00, 0x00
_080CC314: .4byte 0x00000FFF
_080CC318: .4byte 0x00007FFF
_080CC31C: .4byte 0x03000FD8
_080CC320:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC336
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC32A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC32A
_080CC336:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC34C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC340:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC340
_080CC34C:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC362
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC356:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC356
_080CC362:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC37C
	movs r1, #0x10
_080CC36C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC376
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC376:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC36C
_080CC37C:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CC4DE
_080CC388:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0x80
	lsls r3, r3, #0x07
	cmp r0, r3
	ble _080CC398
	b _080CC4DE
_080CC398:
	ldr r0, _080CC45C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CC3AE
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CC3AE
	b _080CC4DE
_080CC3AE:
	ldr r2, _080CC460 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CC3DE
	b _080CC4DE
_080CC3DE:
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080CC464 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CC468
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC412
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC406:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC406
_080CC412:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC428
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC41C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC41C
_080CC428:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC43E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC432
_080CC43E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC4C4
	movs r1, #0x10
_080CC448:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC452
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC452:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC448
	b _080CC4C4
	.byte 0x00, 0x00
_080CC45C: .4byte 0x0300034C
_080CC460: .4byte 0x03000FD8
_080CC464: .4byte 0x00000FFF
_080CC468:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CC47E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC472:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC472
_080CC47E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080CC494
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC488:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC488
_080CC494:
	adds r2, r7, #0x0
	cmp r2, #0x00
	beq _080CC4AA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CC49E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CC49E
_080CC4AA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CC4C4
	movs r1, #0x10
_080CC4B4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CC4BE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CC4BE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CC4B4
_080CC4C4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r2, #0x28
	negs r2, r2
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	bl sub_807EAE4
_080CC4DE:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080CC550
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CC4F8
	adds r1, r0, #0x0
_080CC4F8:
	ldr r0, _080CC544 @ =0x00007FFF
	cmp r2, r0
	ble _080CC500
	adds r2, r0, #0x0
_080CC500:
	cmp r2, r1
	bge _080CC506
	adds r1, r2, #0x0
_080CC506:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CC520
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CC522
_080CC520:
	movs r1, #0x00
_080CC522:
	cmp r1, #0x00
	beq _080CC550
	cmp r3, #0x01
	ble _080CC550
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080CC548 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080CC54C @ =0x080CC965
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080CC60A
	.byte 0x00, 0x00
_080CC544: .4byte 0x00007FFF
_080CC548: .4byte 0x00000FFF
_080CC54C: .4byte sub_80CC964
_080CC550:
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080CC60A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x32
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC57C
	cmp r1, #0x04
	bne _080CC598
_080CC57C:
	ldr r2, _080CC61C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CC598:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC5AC
	cmp r2, #0x04
	bne _080CC5C8
_080CC5AC:
	ldr r2, _080CC620 @ =0x00002064
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CC5C8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC5D6
	cmp r2, #0x04
	bne _080CC604
_080CC5D6:
	ldr r2, _080CC624 @ =0x03001038
	ldr r0, _080CC628 @ =0x0819832C
	ldr r1, _080CC62C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x10
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	ldrb r1, [r7, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
_080CC604:
	ldr r0, _080CC630 @ =0x080CC635
	mov r4, r10
	str r0, [r4, #0x4C]
_080CC60A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CC61C: .4byte 0x00002035
_080CC620: .4byte 0x00002064
_080CC624: .4byte 0x03001038
_080CC628: .4byte 0x0819832C
_080CC62C: .4byte 0x08198220
_080CC630: .4byte sub_80CC634
	thumb_func_start sub_80CC634
sub_80CC634:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CC744 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CC73A
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080CC748 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CC74C @ =0x040322AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080CC6BE
	ldr r2, _080CC748 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CC6F4
_080CC6BE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CC6C6
	adds r1, #0xFF
_080CC6C6:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CC6DC
	adds r2, #0xFF
_080CC6DC:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080CC750 @ =0x0000071F
	str r4, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080CC6F4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC706
	cmp r1, #0x04
	bne _080CC736
_080CC706:
	ldr r2, _080CC754 @ =0x03001038
	ldr r0, _080CC758 @ =0x0819832C
	ldr r1, _080CC75C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CC736:
	ldr r0, _080CC760 @ =0x080CC765
	str r0, [r7, #0x4C]
_080CC73A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CC744: .4byte 0x03000FD8
_080CC748: .4byte 0x00000111
_080CC74C: .4byte 0x040322AB
_080CC750: .4byte 0x0000071F
_080CC754: .4byte 0x03001038
_080CC758: .4byte 0x0819832C
_080CC75C: .4byte 0x08198220
_080CC760: .4byte sub_80CC764
	thumb_func_start sub_80CC764
sub_80CC764:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CC81C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CC78E
	b _080CC958
_080CC78E:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC7AC
	cmp r1, #0x04
	bne _080CC7EA
_080CC7AC:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7BA
	adds r0, #0xFF
_080CC7BA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7C8
	adds r0, #0xFF
_080CC7C8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC7D6
	adds r0, #0xFF
_080CC7D6:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080CC7EA:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC7FE
	cmp r2, #0x04
	bne _080CC860
_080CC7FE:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CC824
	ldr r2, _080CC820 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CC830
_080CC81C: .4byte 0x03000FD8
_080CC820: .4byte 0x00002002
_080CC824:
	ldr r2, _080CC8FC @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CC830:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CC846
	movs r2, #0x01
_080CC846:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CC860:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC86E
	cmp r2, #0x04
	bne _080CC878
_080CC86E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CC878:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CC88C
	cmp r2, #0x04
	bne _080CC8CE
_080CC88C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC89A
	adds r0, #0xFF
_080CC89A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC8A8
	adds r0, #0xFF
_080CC8A8:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CC8B6
	adds r0, #0xFF
_080CC8B6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080CC8CE:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC8DC
	cmp r1, #0x04
	bne _080CC940
_080CC8DC:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CC904
	ldr r2, _080CC900 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CC910
	.byte 0x00, 0x00
_080CC8FC: .4byte 0x0000204F
_080CC900: .4byte 0x00002002
_080CC904:
	ldr r2, _080CC960 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CC910:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CC926
	movs r2, #0x01
_080CC926:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CC940:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC94E
	cmp r2, #0x04
	bne _080CC958
_080CC94E:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CC958:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CC960: .4byte 0x0000204F
	thumb_func_start sub_80CC964
sub_80CC964:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCA1C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r1, [r1, #0x74]
	adds r4, r1, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CC988
	cmp r1, #0x04
	bne _080CC9A4
_080CC988:
	ldr r2, _080CCA20 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CC9A4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CC9B8
	cmp r2, #0x04
	bne _080CC9D4
_080CC9B8:
	ldr r2, _080CCA24 @ =0x00002064
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CC9D4:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CC9E2
	cmp r2, #0x04
	bne _080CCA12
_080CC9E2:
	ldr r2, _080CCA28 @ =0x03001038
	ldr r0, _080CCA2C @ =0x0819832C
	ldr r1, _080CCA30 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x08
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CCA12:
	ldr r0, _080CCA34 @ =0x080CCA39
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCA1C: .4byte 0x03000FD8
_080CCA20: .4byte 0x00002035
_080CCA24: .4byte 0x00002064
_080CCA28: .4byte 0x03001038
_080CCA2C: .4byte 0x0819832C
_080CCA30: .4byte 0x08198220
_080CCA34: .4byte sub_80CCA38
	thumb_func_start sub_80CCA38
sub_80CCA38:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CCB60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCB56
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	ldr r1, _080CCB64 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x50
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080CCB68 @ =0x050323AB
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r6, #0x24]
	adds r0, #0x01
	strh r0, [r6, #0x24]
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bgt _080CCAC6
	ldr r1, _080CCB64 @ =0x00000111
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080CCB10
_080CCAC6:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CCACE
	adds r1, #0xFF
_080CCACE:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080CCAE4
	adds r1, #0xFF
_080CCAE4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r1, r0
	adds r0, r3, #0x0
	adds r0, #0xF0
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x1C]
	lsrs r0, r0, #0x04
	ldr r1, _080CCB6C @ =0x00002F6F
	cmp r0, #0x00
	bne _080CCB04
	subs r1, #0xDC
_080CCB04:
	str r4, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80DF024
_080CCB10:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCB22
	cmp r1, #0x04
	bne _080CCB52
_080CCB22:
	ldr r2, _080CCB70 @ =0x03001038
	ldr r0, _080CCB74 @ =0x0819832C
	ldr r1, _080CCB78 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x14
	bl _call_via_r2
	adds r2, r6, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CCB52:
	ldr r0, _080CCB7C @ =0x080CCB81
	str r0, [r7, #0x4C]
_080CCB56:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCB60: .4byte 0x03000FD8
_080CCB64: .4byte 0x00000111
_080CCB68: .4byte 0x050323AB
_080CCB6C: .4byte 0x00002F6F
_080CCB70: .4byte 0x03001038
_080CCB74: .4byte 0x0819832C
_080CCB78: .4byte 0x08198220
_080CCB7C: .4byte sub_80CCB80
	thumb_func_start sub_80CCB80
sub_80CCB80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080CCC38 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_80884AC
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CCBAA
	b _080CCD74
_080CCBAA:
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x53
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCBC8
	cmp r1, #0x04
	bne _080CCC06
_080CCBC8:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBD6
	adds r0, #0xFF
_080CCBD6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBE4
	adds r0, #0xFF
_080CCBE4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCBF2
	adds r0, #0xFF
_080CCBF2:
	asrs r3, r0, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCC06:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCC1A
	cmp r2, #0x04
	bne _080CCC7C
_080CCC1A:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CCC40
	ldr r2, _080CCC3C @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CCC4C
_080CCC38: .4byte 0x03000FD8
_080CCC3C: .4byte 0x00002002
_080CCC40:
	ldr r2, _080CCD18 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CCC4C:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CCC62
	movs r2, #0x01
_080CCC62:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CCC7C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CCC8A
	cmp r2, #0x04
	bne _080CCC94
_080CCC8A:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CCC94:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCCA8
	cmp r2, #0x04
	bne _080CCCEA
_080CCCA8:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCB6
	adds r0, #0xFF
_080CCCB6:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCC4
	adds r0, #0xFF
_080CCCC4:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080CCCD2
	adds r0, #0xFF
_080CCCD2:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080CCCEA:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCCF8
	cmp r1, #0x04
	bne _080CCD5C
_080CCCF8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CCD20
	ldr r2, _080CCD1C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CCD2C
	.byte 0x00, 0x00
_080CCD18: .4byte 0x0000204F
_080CCD1C: .4byte 0x00002002
_080CCD20:
	ldr r2, _080CCD7C @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CCD2C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CCD42
	movs r2, #0x01
_080CCD42:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CCD5C:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CCD6A
	cmp r2, #0x04
	bne _080CCD74
_080CCD6A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080CCD74:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080CCD7C: .4byte 0x0000204F
	thumb_func_start sub_80CCD80
sub_80CCD80:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CCDE0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCDDA
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCDBE
	cmp r1, #0x04
	bne _080CCDD6
_080CCDBE:
	ldr r2, _080CCDE4 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CCDD6:
	ldr r0, _080CCDE8 @ =0x080CB781
	str r0, [r6, #0x4C]
_080CCDDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CCDE0: .4byte 0x03000FD8
_080CCDE4: .4byte 0x00002035
_080CCDE8: .4byte sub_80CB780
	thumb_func_start sub_80CCDEC
sub_80CCDEC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE40 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE38
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCE18
	cmp r1, #0x04
	bne _080CCE34
_080CCE18:
	ldr r2, _080CCE44 @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CCE34:
	ldr r0, _080CCE48 @ =0x080C9855
	str r0, [r5, #0x4C]
_080CCE38:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CCE40: .4byte 0x03000FD8
_080CCE44: .4byte 0x00002034
_080CCE48: .4byte sub_80C9854
	thumb_func_start sub_80CCE4C
sub_80CCE4C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080CCE74 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r4, #0x81
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CCE6E
	ldr r0, _080CCE78 @ =0x080C8A7D
	str r0, [r5, #0x4C]
_080CCE6E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080CCE74: .4byte 0x03000FD8
_080CCE78: .4byte sub_80C8A7C
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x81, 0x46, 0x1F, 0x4A, 0x83, 0x6A, 0x18, 0x1C
	.byte 0xEC, 0x30, 0x00, 0x24, 0x01, 0x5F, 0x08, 0x01, 0x40, 0x1A, 0x80, 0x00, 0x3C, 0x30, 0x11, 0x68
	.byte 0x09, 0x1A, 0x8A, 0x20, 0x40, 0x00, 0x1A, 0x18, 0x48, 0x8D, 0x10, 0x60, 0x17, 0x48, 0x00, 0x68
	.byte 0x05, 0x6F, 0x08, 0x21, 0x49, 0x19, 0x88, 0x46, 0x44, 0x6F, 0x26, 0x1C, 0x08, 0x36, 0x4A, 0x46
	.byte 0xD0, 0x6A, 0xF0, 0x62, 0xC8, 0x62, 0xD1, 0x6E, 0xF1, 0x66, 0x42, 0x46, 0xD1, 0x66, 0x00, 0x23
	.byte 0x03, 0x65, 0x33, 0x65, 0x13, 0x65, 0x02, 0x1C, 0x7C, 0x32, 0x80, 0x21, 0x49, 0x00, 0x11, 0x80
	.byte 0x84, 0x34, 0x21, 0x80, 0x84, 0x35, 0x29, 0x80, 0x09, 0x49, 0x4C, 0x46, 0xE1, 0x64, 0xB3, 0x84
	.byte 0x41, 0x46, 0x8B, 0x84, 0xBA, 0xF7, 0xE0, 0xF8, 0x01, 0x20, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x03, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x11, 0xCF, 0x0C, 0x08
	thumb_func_start sub_80CCF10
sub_80CCF10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080CD018 @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r0, #0x03
	strb r0, [r1, #0x0E]
	ldr r4, [r7, #0x00]
	ldr r0, _080CD01C @ =0x03000FF4
	ldr r3, [r0, #0x00]
	ldrb r0, [r3, #0x0B]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1A
	movs r2, #0x01
	adds r1, r2, #0x0
	ands r1, r0
	ldrb r0, [r3, #0x0D]
	lsrs r0, r0, #0x02
	ands r0, r2
	lsls r0, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x0A]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r1, [r7, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r9, r0
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CCF7E
	cmp r1, #0x04
	bne _080CCFC2
_080CCF7E:
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x0C
	ldr r0, [r7, #0x00]
	movs r7, #0x93
	lsls r7, r7, #0x02
	adds r0, r0, r7
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080CCFC2:
	adds r2, r5, #0x0
	adds r2, #0x88
	mov r1, r9
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080CCFD0
	adds r0, #0xFF
_080CCFD0:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080CCFDC
	adds r0, #0xFF
_080CCFDC:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CCFF8
	cmp r2, #0x04
	bne _080CD060
_080CCFF8:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD024
	ldr r2, _080CD020 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD030
	.byte 0x00, 0x00
_080CD018: .4byte 0x03000FD8
_080CD01C: .4byte 0x03000FF4
_080CD020: .4byte 0x00002002
_080CD024:
	ldr r2, _080CD124 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD030:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD046
	movs r2, #0x01
_080CD046:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CD060:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD06E
	cmp r2, #0x04
	bne _080CD078
_080CD06E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080CD078:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r7, r1, #0x0
	cmp r2, #0x02
	beq _080CD08C
	cmp r2, #0x04
	bne _080CD0D4
_080CD08C:
	ldr r5, _080CD128 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0x50
	ldr r0, [r5, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x64
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_080CD0D4:
	adds r2, r6, #0x0
	adds r2, #0x88
	mov r4, r9
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080CD0E2
	adds r0, #0xFF
_080CD0E2:
	asrs r0, r0, #0x08
	lsls r1, r0, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080CD0EE
	adds r0, #0xFF
_080CD0EE:
	lsls r0, r0, #0x08
	lsrs r0, r0, #0x10
	orrs r1, r0
	str r1, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CD104
	cmp r2, #0x04
	bne _080CD16C
_080CD104:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CD130
	ldr r2, _080CD12C @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080CD13C
	.byte 0x00, 0x00
_080CD124: .4byte 0x0000204F
_080CD128: .4byte 0x03000FD8
_080CD12C: .4byte 0x00002002
_080CD130:
	ldr r2, _080CD184 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080CD13C:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080CD152
	movs r2, #0x01
_080CD152:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CD16C:
	ldr r0, _080CD188 @ =0x080D2EF1
	mov r1, r10
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CD184: .4byte 0x0000204F
_080CD188: .4byte sub_80D2EF0
