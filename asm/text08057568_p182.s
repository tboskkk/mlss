	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A1B64
sub_80A1B64:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080A1C68 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x74]
	adds r4, r6, #0x0
	adds r4, #0x08
	ldr r0, [r5, #0x28]
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A1B98
	adds r1, r5, #0x0
	adds r1, #0x7C
	ldr r0, _080A1C6C @ =0x00000199
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x19
	strb r1, [r0, #0x00]
_080A1B98:
	ldr r0, [r5, #0x28]
	adds r0, r0, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080A1BB8
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r0, #0x66
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	adds r0, #0x20
	movs r1, #0x06
	strb r1, [r0, #0x00]
_080A1BB8:
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080A1BC0
	adds r1, #0xFF
_080A1BC0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080A1BCA
	adds r2, #0xFF
_080A1BCA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080A1BD4
	adds r3, #0xFF
_080A1BD4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x01
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1BF0
	cmp r1, #0x04
	bne _080A1C36
_080A1BF0:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1BFE
	adds r0, #0xFF
_080A1BFE:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x23
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1C10
	adds r0, #0xFF
_080A1C10:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A1C1E
	adds r0, #0xFF
_080A1C1E:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080A1C36:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1C48
	cmp r1, #0x04
	bne _080A1CB0
_080A1C48:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A1C74
	ldr r2, _080A1C70 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1C80
	.byte 0x00, 0x00
_080A1C68: .4byte 0x03000FD8
_080A1C6C: .4byte 0x00000199
_080A1C70: .4byte 0x00002002
_080A1C74:
	ldr r2, _080A1CBC @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A1C80:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r6, #0x02
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080A1C96
	movs r2, #0x01
_080A1C96:
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
_080A1CB0:
	ldr r0, _080A1CC0 @ =0x080A1CC5
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A1CBC: .4byte 0x0000204F
_080A1CC0: .4byte sub_80A1CC4
	thumb_func_start sub_80A1CC4
sub_80A1CC4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A1D30 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8087CE4
	adds r5, r4, #0x0
	adds r5, #0x81
	ldrb r1, [r5, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A1D28
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1CF6
	cmp r1, #0x04
	bne _080A1D24
_080A1CF6:
	ldr r2, _080A1D34 @ =0x03001038
	ldr r0, _080A1D38 @ =0x0819832C
	ldr r1, _080A1D3C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080A1D24:
	ldr r0, _080A1D40 @ =0x080A1D45
	str r0, [r6, #0x4C]
_080A1D28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A1D30: .4byte 0x03000FD8
_080A1D34: .4byte 0x03001038
_080A1D38: .4byte 0x0819832C
_080A1D3C: .4byte 0x08198220
_080A1D40: .4byte sub_80A1D44
	thumb_func_start sub_80A1D44
sub_80A1D44:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A1D98 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
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
	beq _080A1DBC
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1D78
	cmp r1, #0x04
	bne _080A1DB8
_080A1D78:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A1D9C
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1DA8
_080A1D98: .4byte 0x03000FD8
_080A1D9C:
	ldr r2, _080A1DC4 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080A1DA8:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A1DB8:
	ldr r0, _080A1DC8 @ =0x080A1DCD
	str r0, [r6, #0x4C]
_080A1DBC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A1DC4: .4byte 0x0000204D
_080A1DC8: .4byte sub_80A1DCC
	thumb_func_start sub_80A1DCC
sub_80A1DCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r0, _080A1E70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r5, [r0, #0x2C]
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A1DF4
	b _080A1F32
_080A1DF4:
	movs r1, #0x01
	negs r1, r1
	mov r8, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1E12
	cmp r1, #0x04
	bne _080A1EC2
_080A1E12:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080A1E1A
	adds r1, #0xFF
_080A1E1A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080A1E30
	adds r0, #0xFF
_080A1E30:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080A1E46
	adds r3, #0xFF
_080A1E46:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080A1E74
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080A1E84
	.byte 0x00, 0x00
_080A1E70: .4byte 0x03000FD8
_080A1E74:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080A1E84:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080A1E8C
	adds r0, #0xFF
_080A1E8C:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080A1EF4 @ =0x03001038
	ldr r0, _080A1EF8 @ =0x0819832C
	ldr r1, _080A1EFC @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080A1EA6
	adds r1, #0x3F
_080A1EA6:
	asrs r1, r1, #0x06
	adds r1, #0x2A
	ldr r0, _080A1F00 @ =0x000006E4
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080A1EC2:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A1ED4
	cmp r1, #0x04
	bne _080A1F20
_080A1ED4:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A1F04
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080A1F10
_080A1EF4: .4byte 0x03001038
_080A1EF8: .4byte 0x0819832C
_080A1EFC: .4byte 0x08198220
_080A1F00: .4byte 0x000006E4
_080A1F04:
	ldr r2, _080A1F40 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080A1F10:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A1F20:
	adds r2, r6, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A1F44 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A1F48 @ =0x080A1F4D
	mov r1, r9
	str r0, [r1, #0x4C]
_080A1F32:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A1F40: .4byte 0x0000204D
_080A1F44: .4byte 0x00000FFF
_080A1F48: .4byte sub_80A1F4C
	thumb_func_start sub_80A1F4C
sub_80A1F4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	ldr r0, _080A207C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r9
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x004]
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r1, r0, #0x03
	ldr r3, [sp, #0x004]
	subs r3, r3, r1
	str r3, [sp, #0x004]
	lsls r0, r0, #0x02
	mov r6, r10
	adds r7, r0, r6
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r7
	bge _080A1FA8
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A1FA8:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080A1FB8
	b _080A20E0
_080A1FB8:
	ldr r1, [sp, #0x004]
	adds r2, r7, #0x0
	cmp r1, #0x00
	bge _080A1FC2
	movs r1, #0x00
_080A1FC2:
	cmp r7, #0x00
	bge _080A1FC8
	movs r2, #0x00
_080A1FC8:
	cmp r1, r10
	ble _080A1FCE
	mov r1, r10
_080A1FCE:
	ldr r0, _080A2080 @ =0x00007FFF
	cmp r2, r0
	ble _080A1FD6
	adds r2, r0, #0x0
_080A1FD6:
	cmp r2, r1
	bge _080A1FDC
	adds r1, r2, #0x0
_080A1FDC:
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r0, r1
	blt _080A1FF2
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A1FF4
_080A1FF2:
	movs r1, #0x00
_080A1FF4:
	adds r6, r5, #0x0
	adds r6, #0xAE
	cmp r1, #0x00
	beq _080A2018
	ldr r0, _080A2084 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080A2018
	ldrh r0, [r6, #0x00]
	ldr r1, _080A2088 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A2018:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A20E0
	adds r1, r7, #0x0
	cmp r7, #0x00
	bge _080A2028
	movs r1, #0x00
_080A2028:
	ldr r0, _080A2080 @ =0x00007FFF
	cmp r1, r0
	ble _080A2030
	adds r1, r0, #0x0
_080A2030:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080A204A
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080A204C
_080A204A:
	movs r2, #0x00
_080A204C:
	cmp r2, #0x00
	beq _080A208C
	ldr r0, _080A207C @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldrh r1, [r6, #0x00]
	ldr r0, _080A2088 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _080A20E0
_080A207C: .4byte 0x03000FD8
_080A2080: .4byte 0x00007FFF
_080A2084: .4byte 0x0300034C
_080A2088: .4byte 0x00000FFF
_080A208C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r7
	bgt _080A20E0
	ldr r0, _080A2144 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A20E0
	ldr r4, _080A2148 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A20E0
	ldrh r0, [r6, #0x00]
	ldr r1, _080A214C @ =0x00000FFF
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r4, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A20E0:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A2158
	mov r2, r10
	adds r1, r7, #0x0
	cmp r1, #0x00
	bge _080A20F2
	movs r1, #0x00
_080A20F2:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080A20FC
	adds r2, r0, #0x0
_080A20FC:
	ldr r0, _080A2150 @ =0x00007FFF
	cmp r1, r0
	ble _080A2104
	adds r1, r0, #0x0
_080A2104:
	cmp r1, r2
	bge _080A210A
	adds r2, r1, #0x0
_080A210A:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080A2124
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080A2126
_080A2124:
	movs r2, #0x00
_080A2126:
	cmp r2, #0x00
	beq _080A2158
	cmp r3, #0x01
	ble _080A2158
	ldrh r0, [r6, #0x00]
	ldr r1, _080A214C @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080A2154 @ =0x080A2755
	mov r3, r9
	str r1, [r3, #0x4C]
	mov r0, r9
	bl _call_via_r1
	b _080A2306
_080A2144: .4byte 0x0300034C
_080A2148: .4byte 0x03000FD8
_080A214C: .4byte 0x00000FFF
_080A2150: .4byte 0x00007FFF
_080A2154: .4byte sub_80A2754
_080A2158:
	adds r0, r5, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A21CC @ =0x03001038
	ldr r2, _080A21D0 @ =0x0819832C
	ldr r3, _080A21D4 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080A2192
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r1, #0x01
	cmp r0, r2
	bge _080A2194
_080A2192:
	movs r1, #0x00
_080A2194:
	cmp r1, #0x00
	beq _080A21F4
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A21AA
	cmp r1, #0x04
	bne _080A21F4
_080A21AA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A21D8
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080A21E4
	.byte 0x00, 0x00
_080A21CC: .4byte 0x03001038
_080A21D0: .4byte 0x0819832C
_080A21D4: .4byte 0x08198220
_080A21D8:
	ldr r2, _080A22F0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080A21E4:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A21F4:
	ldr r1, [sp, #0x004]
	cmp r1, #0x00
	bge _080A21FC
	movs r1, #0x00
_080A21FC:
	ldr r0, _080A22F4 @ =0x00007FFF
	cmp r1, r0
	ble _080A2204
	adds r1, r0, #0x0
_080A2204:
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	bgt _080A221A
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r2, #0x01
	cmp r0, r1
	bge _080A221C
_080A221A:
	movs r2, #0x00
_080A221C:
	cmp r2, #0x00
	beq _080A2228
	movs r0, #0x80
	lsls r0, r0, #0x17
	bl sub_80F75D8
_080A2228:
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, r2
	bgt _080A2242
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r1, #0x01
	cmp r0, r2
	bge _080A2244
_080A2242:
	movs r1, #0x00
_080A2244:
	cmp r1, #0x00
	beq _080A229E
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A225A
	cmp r1, #0x04
	bne _080A2276
_080A225A:
	ldr r2, _080A22F0 @ =0x0000204D
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
_080A2276:
	mov r4, r8
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _080A229E
	mov r6, r9
	str r6, [r4, #0x2C]
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2298
	cmp r1, #0x04
	bne _080A229E
_080A2298:
	ldr r0, _080A22F8 @ =0x080A2C81
	mov r1, r8
	str r0, [r1, #0x4C]
_080A229E:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2306
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2A
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080A22FC @ =0x040A1001
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r8
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080A2300
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A2306
_080A22F0: .4byte 0x0000204D
_080A22F4: .4byte 0x00007FFF
_080A22F8: .4byte sub_80A2C80
_080A22FC: .4byte 0x040A1001
_080A2300:
	ldr r0, _080A2318 @ =0x080A231D
	mov r2, r9
	str r0, [r2, #0x4C]
_080A2306:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2318: .4byte sub_80A231C
	thumb_func_start sub_80A231C
sub_80A231C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080A236C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x74]
	ldr r0, [r3, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A2366
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2344
	cmp r1, #0x04
	bne _080A2362
_080A2344:
	adds r2, r3, #0x0
	adds r2, #0x82
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x07
	strh r0, [r2, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A2362:
	ldr r0, _080A2370 @ =0x080A2375
	str r0, [r4, #0x4C]
_080A2366:
	pop {r4}
	pop {r0}
	bx r0
_080A236C: .4byte 0x03000FD8
_080A2370: .4byte sub_80A2374
	thumb_func_start sub_80A2374
sub_80A2374:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A241C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
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
	beq _080A2414
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A23AA
	cmp r1, #0x04
	bne _080A2404
_080A23AA:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080A23B2
	adds r0, #0xFF
_080A23B2:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x38
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080A23CC
	adds r2, #0xFF
_080A23CC:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A23F0
	adds r0, #0xFF
_080A23F0:
	asrs r0, r0, #0x08
	adds r0, #0x10
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080A2404:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A2420 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A2424 @ =0x080A2429
	str r0, [r6, #0x4C]
_080A2414:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A241C: .4byte 0x03000FD8
_080A2420: .4byte 0x00000FFF
_080A2424: .4byte sub_80A2428
	thumb_func_start sub_80A2428
sub_80A2428:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080A24B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A24B4 @ =0x03001038
	ldr r2, _080A24B8 @ =0x0819832C
	ldr r3, _080A24BC @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080A2476
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080A2478
_080A2476:
	movs r1, #0x00
_080A2478:
	cmp r1, #0x00
	beq _080A24DC
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A248E
	cmp r1, #0x04
	bne _080A24DC
_080A248E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A24C0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080A24CC
	.byte 0x00, 0x00
_080A24B0: .4byte 0x03000FD8
_080A24B4: .4byte 0x03001038
_080A24B8: .4byte 0x0819832C
_080A24BC: .4byte 0x08198220
_080A24C0:
	ldr r2, _080A2554 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080A24CC:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A24DC:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A254C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2506
	cmp r1, #0x04
	bne _080A2522
_080A2506:
	ldr r2, _080A2558 @ =0x00002005
	adds r0, r6, #0x0
	movs r1, #0x00
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
_080A2522:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080A252A
	adds r1, #0xFF
_080A252A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080A2534
	adds r2, #0xFF
_080A2534:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080A253E
	adds r3, #0xFF
_080A253E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x33
	bl sub_80DF024
	ldr r0, _080A255C @ =0x080A2561
	str r0, [r7, #0x4C]
_080A254C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2554: .4byte 0x0000204D
_080A2558: .4byte 0x00002005
_080A255C: .4byte sub_80A2560
	thumb_func_start sub_80A2560
sub_80A2560:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r0, _080A2608 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080A2582
	b _080A2748
_080A2582:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2594
	cmp r1, #0x04
	bne _080A25D4
_080A2594:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A25A2
	adds r0, #0xFF
_080A25A2:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A25B0
	adds r0, #0xFF
_080A25B0:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A25BE
	adds r0, #0xFF
_080A25BE:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r1, _080A260C @ =0x00000399
	adds r0, r4, #0x0
	bl sub_80880C4
_080A25D4:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080A25E8
	cmp r2, #0x04
	bne _080A2650
_080A25E8:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2614
	ldr r2, _080A2610 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2620
	.byte 0x00, 0x00
_080A2608: .4byte 0x03000FD8
_080A260C: .4byte 0x00000399
_080A2610: .4byte 0x00002002
_080A2614:
	ldr r2, _080A26E8 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2620:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A2636
	movs r2, #0x01
_080A2636:
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
_080A2650:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A265E
	cmp r2, #0x04
	bne _080A2668
_080A265E:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080A2668:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A267C
	cmp r2, #0x04
	bne _080A26BC
_080A267C:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A268A
	adds r0, #0xFF
_080A268A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2698
	adds r0, #0xFF
_080A2698:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A26A6
	adds r0, #0xFF
_080A26A6:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r1, _080A26EC @ =0x00000399
	adds r0, r5, #0x0
	bl sub_80880C4
_080A26BC:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A26CA
	cmp r1, #0x04
	bne _080A2730
_080A26CA:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A26F4
	ldr r2, _080A26F0 @ =0x00002002
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2700
_080A26E8: .4byte 0x0000204F
_080A26EC: .4byte 0x00000399
_080A26F0: .4byte 0x00002002
_080A26F4:
	ldr r2, _080A2750 @ =0x0000204F
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2700:
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0x84
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080A2716
	movs r2, #0x01
_080A2716:
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
_080A2730:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A273E
	cmp r2, #0x04
	bne _080A2748
_080A273E:
	movs r0, #0x00
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_808863C
_080A2748:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2750: .4byte 0x0000204F
	thumb_func_start sub_80A2754
sub_80A2754:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A27D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	bne _080A278E
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	lsls r0, r0, #0x04
	cmp r1, r0
	ble _080A278E
	str r6, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A278A
	cmp r1, #0x04
	bne _080A278E
_080A278A:
	ldr r0, _080A27D8 @ =0x080A2C81
	str r0, [r4, #0x4C]
_080A278E:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080A27DC @ =0x040A1101
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080A27E0
	adds r0, r5, #0x0
	bl sub_8086764
	b _080A27E4
	.byte 0x00, 0x00
_080A27D4: .4byte 0x03000FD8
_080A27D8: .4byte sub_80A2C80
_080A27DC: .4byte 0x040A1101
_080A27E0:
	ldr r0, _080A27EC @ =0x080A27F1
	str r0, [r6, #0x4C]
_080A27E4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A27EC: .4byte sub_80A27F0
	thumb_func_start sub_80A27F0
sub_80A27F0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A2854 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A284C
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2818
	cmp r1, #0x04
	bne _080A2848
_080A2818:
	ldr r2, _080A2858 @ =0x03001038
	ldr r0, _080A285C @ =0x0819832C
	ldr r1, _080A2860 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x06
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x82
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x86
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A2848:
	ldr r0, _080A2864 @ =0x080A2869
	str r0, [r5, #0x4C]
_080A284C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2854: .4byte 0x03000FD8
_080A2858: .4byte 0x03001038
_080A285C: .4byte 0x0819832C
_080A2860: .4byte 0x08198220
_080A2864: .4byte sub_80A2868
	thumb_func_start sub_80A2868
sub_80A2868:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080A290C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x74]
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
	beq _080A2902
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A289E
	cmp r1, #0x04
	bne _080A28F2
_080A289E:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28AC
	adds r0, #0xFF
_080A28AC:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28BA
	adds r0, #0xFF
_080A28BA:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A28C8
	adds r0, #0xFF
_080A28C8:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080A28DE
	adds r0, #0xFF
_080A28DE:
	asrs r0, r0, #0x08
	adds r0, #0x1A
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	bl sub_8088164
_080A28F2:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A2910 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A2914 @ =0x080A2919
	str r0, [r6, #0x4C]
_080A2902:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A290C: .4byte 0x03000FD8
_080A2910: .4byte 0x00000FFF
_080A2914: .4byte sub_80A2918
	thumb_func_start sub_80A2918
sub_80A2918:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080A29AC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080A29B0 @ =0x03001038
	ldr r2, _080A29B4 @ =0x0819832C
	ldr r3, _080A29B8 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080A2970
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r1, #0x01
	cmp r0, r2
	bge _080A2972
_080A2970:
	movs r1, #0x00
_080A2972:
	cmp r1, #0x00
	bne _080A2978
	b _080A2AB8
_080A2978:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A298A
	cmp r1, #0x04
	bne _080A29D8
_080A298A:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A29BC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080A29C8
	.byte 0x00, 0x00
_080A29AC: .4byte 0x03000FD8
_080A29B0: .4byte 0x03001038
_080A29B4: .4byte 0x0819832C
_080A29B8: .4byte 0x08198220
_080A29BC:
	ldr r2, _080A2A5C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080A29C8:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A29D8:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080A29EC
	cmp r2, #0x04
	bne _080A2A2E
_080A29EC:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A29FA
	adds r0, #0xFF
_080A29FA:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2A08
	adds r0, #0xFF
_080A2A08:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2A16
	adds r0, #0xFF
_080A2A16:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r7, #0x0
	bl sub_80880C4
_080A2A2E:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2A3C
	cmp r1, #0x04
	bne _080A2AA0
_080A2A3C:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2A64
	ldr r2, _080A2A60 @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2A70
	.byte 0x00, 0x00
_080A2A5C: .4byte 0x0000204D
_080A2A60: .4byte 0x00002002
_080A2A64:
	ldr r2, _080A2AF8 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080A2A70:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080A2A86
	movs r2, #0x01
_080A2A86:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A2AA0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080A2AAE
	cmp r2, #0x04
	bne _080A2AB8
_080A2AAE:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080A2AB8:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2B44
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2AD8
	cmp r1, #0x04
	bne _080A2B18
_080A2AD8:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080A2AFC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	b _080A2B08
_080A2AF8: .4byte 0x0000204F
_080A2AFC:
	ldr r2, _080A2B50 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_080A2B08:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080A2B18:
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080A2B20
	adds r1, #0xFF
_080A2B20:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080A2B2A
	adds r2, #0xFF
_080A2B2A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080A2B34
	adds r3, #0xFF
_080A2B34:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	ldr r0, _080A2B54 @ =0x080A2B59
	mov r5, r8
	str r0, [r5, #0x4C]
_080A2B44:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2B50: .4byte 0x0000204D
_080A2B54: .4byte sub_80A2B58
	thumb_func_start sub_80A2B58
sub_80A2B58:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080A2BBC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r4, r2, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080A2BB4
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2B84
	cmp r1, #0x04
	bne _080A2BAA
_080A2B84:
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080A2BAA:
	movs r1, #0x00
	str r1, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A2BB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A2BBC: .4byte 0x03000FD8
	thumb_func_start sub_80A2BC0
sub_80A2BC0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0xB2
	ldrh r0, [r2, #0x00]
	adds r0, #0x26
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _080A2BF4
	movs r1, #0x00
	ldsh r0, [r2, r1]
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldr r1, [r3, #0x40]
	ldr r0, [r3, #0x18]
	cmp r1, r0
	bne _080A2C4C
	movs r4, #0x00
	ldsh r0, [r2, r4]
	adds r0, r1, r0
	str r0, [r3, #0x18]
	b _080A2C4C
_080A2BF4:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A2C06
	cmp r1, #0x04
	bne _080A2C48
_080A2C06:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2C14
	adds r0, #0xFF
_080A2C14:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2C22
	adds r0, #0xFF
_080A2C22:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080A2C30
	adds r0, #0xFF
_080A2C30:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	bl sub_80880C4
_080A2C48:
	ldr r0, _080A2C54 @ =0x080A2C59
	str r0, [r4, #0x4C]
_080A2C4C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080A2C54: .4byte sub_80A2C58
	thumb_func_start sub_80A2C58
sub_80A2C58:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A2C78
	movs r1, #0x00
	str r1, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
_080A2C78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
