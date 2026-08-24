	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r0, _080D0FAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	ldr r6, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_8087CE4
	adds r0, r7, #0x0
	adds r0, #0xAC
	ldrh r0, [r0, #0x00]
	movs r1, #0xB4
	adds r1, r1, r4
	mov r9, r1
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	ldrh r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x82
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	ldrh r0, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x86
	strh r0, [r3, #0x00]
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r1, r0, #0x01
	mov r12, r1
	lsls r2, r0, #0x02
	str r2, [sp, #0x008]
	str r2, [sp, #0x004]
	lsls r1, r0, #0x03
	adds r1, r1, r0
	str r1, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	ldr r2, [sp, #0x00C]
	cmp r0, r2
	bge _080D0EFC
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080D0EFC:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r10, r1
	cmp r0, #0x00
	beq _080D0F0C
	b _080D1448
_080D0F0C:
	mov r1, r12
	cmp r1, #0x00
	bge _080D0F14
	movs r1, #0x00
_080D0F14:
	ldr r0, _080D0FB0 @ =0x00007FFF
	cmp r1, r0
	ble _080D0F1C
	adds r1, r0, #0x0
_080D0F1C:
	mov r4, r9
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080D0F30
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D0F32
_080D0F30:
	movs r2, #0x00
_080D0F32:
	movs r0, #0x7E
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xAE
	adds r1, r1, r5
	mov r10, r1
	cmp r2, #0x00
	beq _080D1018
	ldr r2, _080D0FAC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080D0FB4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0F66
	movs r1, #0x4C
_080D0F5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F5A
_080D0F66:
	mov r2, r8
	cmp r2, #0x00
	beq _080D0F7A
	movs r1, #0x4C
_080D0F6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F6E
_080D0F7A:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0F8E
	movs r1, #0x4C
_080D0F82:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0F82
_080D0F8E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1010
	movs r1, #0x04
_080D0F98:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D0FA2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D0FA2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D0F98
	b _080D1010
	.byte 0x00, 0x00
_080D0FAC: .4byte 0x03000FD8
_080D0FB0: .4byte 0x00007FFF
_080D0FB4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D0FCA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FBE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FBE
_080D0FCA:
	mov r2, r8
	cmp r2, #0x00
	beq _080D0FE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FD4
_080D0FE0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D0FF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D0FEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D0FEA
_080D0FF6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1010
	movs r1, #0x10
_080D1000:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D100A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D100A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1000
_080D1010:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080D1018:
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D1022
	movs r1, #0x00
_080D1022:
	ldr r3, [sp, #0x00C]
	cmp r3, #0x00
	bge _080D102A
	movs r2, #0x00
_080D102A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080D1034
	adds r1, r0, #0x0
_080D1034:
	ldr r0, _080D112C @ =0x00007FFF
	cmp r2, r0
	ble _080D103C
	adds r2, r0, #0x0
_080D103C:
	cmp r2, r1
	bge _080D1042
	adds r1, r2, #0x0
_080D1042:
	mov r4, r9
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080D105A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080D105C
_080D105A:
	movs r1, #0x00
_080D105C:
	cmp r1, #0x00
	bne _080D1062
	b _080D11AE
_080D1062:
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	bl sub_807E680
	ldr r0, _080D1130 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D1082
	b _080D11AE
_080D1082:
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x01
	adds r1, r5, #0x0
	movs r2, #0x20
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080D1134 @ =0x03000FD8
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
	bne _080D119A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1138
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D10E4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D10D8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D10D8
_080D10E4:
	mov r2, r8
	cmp r2, #0x00
	beq _080D10FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D10EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D10EE
_080D10FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1110
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1104:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1104
_080D1110:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1196
	movs r1, #0x10
_080D111A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1124
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1124:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D111A
	b _080D1196
_080D112C: .4byte 0x00007FFF
_080D1130: .4byte 0x0300034C
_080D1134: .4byte 0x03000FD8
_080D1138:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080D1150
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1144:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1144
_080D1150:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1166
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D115A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D115A
_080D1166:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D117C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1170:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1170
_080D117C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1196
	movs r1, #0x10
_080D1186:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D1190
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D1190:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1186
_080D1196:
	bl sub_807F448
_080D119A:
	mov r1, r10
	ldrh r0, [r1, #0x00]
	ldr r1, _080D1284 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r10
	strh r1, [r3, #0x00]
_080D11AE:
	mov r4, r10
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080D11BA
	b _080D1448
_080D11BA:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D11C2
	movs r1, #0x00
_080D11C2:
	ldr r0, _080D1288 @ =0x00007FFF
	cmp r1, r0
	ble _080D11CA
	adds r1, r0, #0x0
_080D11CA:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080D11E2
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D11E4
_080D11E2:
	movs r2, #0x00
_080D11E4:
	cmp r2, #0x00
	bne _080D11EA
	b _080D12F8
_080D11EA:
	ldr r3, _080D128C @ =0x03000FD8
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
	mov r0, r10
	ldrh r1, [r0, #0x00]
	ldr r0, _080D1284 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r4, r10
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D1290
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D123A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D122E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D122E
_080D123A:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1250
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1244:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1244
_080D1250:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1266
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D125A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D125A
_080D1266:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D12EC
	movs r1, #0x10
_080D1270:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D127A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D127A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1270
	b _080D12EC
	.byte 0x00, 0x00
_080D1284: .4byte 0x00000FFF
_080D1288: .4byte 0x00007FFF
_080D128C: .4byte 0x03000FD8
_080D1290:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D12A6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D129A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D129A
_080D12A6:
	mov r2, r8
	cmp r2, #0x00
	beq _080D12BC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D12B0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D12B0
_080D12BC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D12D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D12C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D12C6
_080D12D2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D12EC
	movs r1, #0x10
_080D12DC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D12E6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D12E6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D12DC
_080D12EC:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080D1448
_080D12F8:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	ldr r3, [sp, #0x00C]
	cmp r0, r3
	ble _080D1306
	b _080D1448
_080D1306:
	ldr r0, _080D13C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080D131C
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080D131C
	b _080D1448
_080D131C:
	ldr r2, _080D13CC @ =0x03000FD8
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
	beq _080D134C
	b _080D1448
_080D134C:
	mov r0, r10
	ldrh r1, [r0, #0x00]
	ldr r0, _080D13D0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r10
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D13D4
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D1380
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D1374:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D1374
_080D1380:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1396
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D138A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D138A
_080D1396:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D13AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13A0
_080D13AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1430
	movs r1, #0x10
_080D13B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D13C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D13C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D13B6
	b _080D1430
_080D13C8: .4byte 0x0300034C
_080D13CC: .4byte 0x03000FD8
_080D13D0: .4byte 0x00000FFF
_080D13D4:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080D13EA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13DE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13DE
_080D13EA:
	mov r2, r8
	cmp r2, #0x00
	beq _080D1400
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D13F4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D13F4
_080D1400:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080D1416
	movs r1, #0x80
	lsls r1, r1, #0x01
_080D140A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080D140A
_080D1416:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080D1430
	movs r1, #0x10
_080D1420:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080D142A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080D142A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080D1420
_080D1430:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r3, #0x20
	negs r3, r3
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x20
	bl sub_807EAE4
_080D1448:
	mov r2, r10
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	beq _080D14DC
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	cmp r2, #0x00
	bge _080D145C
	movs r2, #0x00
_080D145C:
	ldr r4, [sp, #0x00C]
	cmp r4, #0x00
	bge _080D1464
	movs r3, #0x00
_080D1464:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080D146E
	adds r2, r0, #0x0
_080D146E:
	ldr r0, _080D14D0 @ =0x00007FFF
	cmp r3, r0
	ble _080D1476
	adds r3, r0, #0x0
_080D1476:
	cmp r3, r2
	bge _080D147C
	adds r2, r3, #0x0
_080D147C:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080D1496
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080D1498
_080D1496:
	movs r2, #0x00
_080D1498:
	cmp r2, #0x00
	beq _080D14DC
	cmp r1, #0x02
	bne _080D14DC
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D14B2
	cmp r1, #0x04
	bne _080D14B6
_080D14B2:
	ldr r0, _080D14D4 @ =0x080D2DA5
	str r0, [r7, #0x4C]
_080D14B6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D14CA
	cmp r1, #0x04
	beq _080D14CA
	b _080D15D0
_080D14CA:
	ldr r0, _080D14D8 @ =0x080CFCCD
	str r0, [r5, #0x4C]
	b _080D15D0
_080D14D0: .4byte 0x00007FFF
_080D14D4: .4byte sub_80D2DA4
_080D14D8: .4byte sub_80CFCCC
_080D14DC:
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _080D14E4
	movs r1, #0x00
_080D14E4:
	ldr r0, _080D15E0 @ =0x00007FFF
	cmp r1, r0
	ble _080D14EC
	adds r1, r0, #0x0
_080D14EC:
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080D1506
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080D1508
_080D1506:
	movs r2, #0x00
_080D1508:
	cmp r2, #0x00
	beq _080D1530
	adds r1, r7, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080D1530
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D152C
	cmp r1, #0x04
	bne _080D1530
_080D152C:
	ldr r0, _080D15E4 @ =0x080CFE81
	str r0, [r5, #0x4C]
_080D1530:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D15D0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	adds r2, r7, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x28
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D15E8 @ =0x0413428C
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r7, #0x24]
	adds r0, #0x01
	strh r0, [r7, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D1596
	ldr r3, _080D15EC @ =0x00000111
	adds r0, r1, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D15CC
_080D1596:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080D159E
	adds r1, #0xFF
_080D159E:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080D15B4
	adds r2, #0xFF
_080D15B4:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r6, [sp, #0x000]
	movs r0, #0x6A
	movs r3, #0x00
	bl sub_80DF024
_080D15CC:
	ldr r0, _080D15F0 @ =0x080D2D29
	str r0, [r7, #0x4C]
_080D15D0:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D15E0: .4byte 0x00007FFF
_080D15E4: .4byte sub_80CFE80
_080D15E8: .4byte 0x0413428C
_080D15EC: .4byte 0x00000111
_080D15F0: .4byte sub_80D2D28
