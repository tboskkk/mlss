	.syntax unified
	.text

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
