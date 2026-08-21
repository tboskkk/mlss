	.include "asm/macros.inc"

	.syntax unified
	.text

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
