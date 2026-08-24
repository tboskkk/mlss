	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	str r0, [sp, #0x004]
	ldr r4, _080B0CAC @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	str r1, [sp, #0x008]
	mov r10, r1
	adds r0, r6, #0x0
	bl sub_8087CE4
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080B0BA8
	b _080B11CC
_080B0BA8:
	ldr r2, _080B0CB0 @ =0x03001038
	ldr r0, _080B0CB4 @ =0x0819832C
	ldr r1, _080B0CB8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x0E
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r1, [r1, #0x00]
	bl _call_via_r2
	mov r10, r0
	adds r0, r5, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x02
	mov r3, r10
	subs r4, r3, r0
	lsls r0, r1, #0x01
	subs r3, r3, r0
	str r3, [sp, #0x008]
	str r3, [sp, #0x00C]
	adds r0, r0, r1
	lsls r0, r0, #0x01
	add r10, r0
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r10
	bge _080B0BFE
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080B0BFE:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080B0C0E
	b _080B1150
_080B0C0E:
	adds r1, r4, #0x0
	cmp r1, #0x00
	bge _080B0C16
	movs r1, #0x00
_080B0C16:
	ldr r0, _080B0CBC @ =0x00007FFF
	cmp r1, r0
	ble _080B0C1E
	adds r1, r0, #0x0
_080B0C1E:
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B0C34
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B0C36
_080B0C34:
	movs r2, #0x00
_080B0C36:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r0, #0xAE
	adds r0, r0, r6
	mov r9, r0
	cmp r2, #0x00
	beq _080B0D24
	ldr r2, _080B0CAC @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B0CC0
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0C68
	movs r1, #0x4C
_080B0C5C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C5C
_080B0C68:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0C7C
	movs r1, #0x4C
_080B0C70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C70
_080B0C7C:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0C90
	movs r1, #0x4C
_080B0C84:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0C84
_080B0C90:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0D1C
	movs r1, #0x04
_080B0C9A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0CA4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0CA4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0C9A
	b _080B0D1C
_080B0CAC: .4byte 0x03000FD8
_080B0CB0: .4byte 0x03001038
_080B0CB4: .4byte 0x0819832C
_080B0CB8: .4byte 0x08198220
_080B0CBC: .4byte 0x00007FFF
_080B0CC0:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0CD6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CCA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CCA
_080B0CD6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0CEC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CE0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CE0
_080B0CEC:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0D02
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0CF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0CF6
_080B0D02:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0D1C
	movs r1, #0x10
_080B0D0C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0D16
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0D16:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0D0C
_080B0D1C:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080B0D24:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080B0D2E
	movs r1, #0x00
_080B0D2E:
	mov r3, r10
	cmp r3, #0x00
	bge _080B0D36
	movs r2, #0x00
_080B0D36:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B0D40
	adds r1, r0, #0x0
_080B0D40:
	ldr r0, _080B0E38 @ =0x00007FFF
	cmp r2, r0
	ble _080B0D48
	adds r2, r0, #0x0
_080B0D48:
	cmp r2, r1
	bge _080B0D4E
	adds r1, r2, #0x0
_080B0D4E:
	movs r4, #0x00
	ldsh r0, [r5, r4]
	cmp r0, r1
	blt _080B0D64
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B0D66
_080B0D64:
	movs r1, #0x00
_080B0D66:
	cmp r1, #0x00
	bne _080B0D6C
	b _080B0EBC
_080B0D6C:
	ldr r1, _080B0E3C @ =0xFF000001
	movs r4, #0x28
	negs r4, r4
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_807E680
	ldr r0, _080B0E40 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080B0D8E
	b _080B0EBC
_080B0D8E:
	movs r0, #0x07
	adds r1, r7, #0x0
	movs r2, #0x08
	adds r3, r4, #0x0
	bl sub_807EAE4
	adds r0, r7, #0x0
	bl sub_807EA24
	ldr r4, _080B0E44 @ =0x03000FD8
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
	bne _080B0EAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0E48
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B0DEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0DE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0DE2
_080B0DEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0E04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0DF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0DF8
_080B0E04:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0E1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E0E
_080B0E1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0EA6
	movs r1, #0x10
_080B0E24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0E2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0E2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0E24
	b _080B0EA6
	.byte 0x00, 0x00
_080B0E38: .4byte 0x00007FFF
_080B0E3C: .4byte 0xFF000001
_080B0E40: .4byte 0x0300034C
_080B0E44: .4byte 0x03000FD8
_080B0E48:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B0E60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E54
_080B0E60:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0E76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E6A
_080B0E76:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0E8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0E80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0E80
_080B0E8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0EA6
	movs r1, #0x10
_080B0E96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0EA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0EA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0E96
_080B0EA6:
	bl sub_807F448
_080B0EAA:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B0F8C @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B0EBC:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B0EC8
	b _080B1150
_080B0EC8:
	mov r1, r10
	cmp r1, #0x00
	bge _080B0ED0
	movs r1, #0x00
_080B0ED0:
	ldr r0, _080B0F90 @ =0x00007FFF
	cmp r1, r0
	ble _080B0ED8
	adds r1, r0, #0x0
_080B0ED8:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B0EEE
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B0EF0
_080B0EEE:
	movs r2, #0x00
_080B0EF0:
	cmp r2, #0x00
	bne _080B0EF6
	b _080B1000
_080B0EF6:
	ldr r3, _080B0F94 @ =0x03000FD8
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
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080B0F8C @ =0x00000FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0F98
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0F44
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F38:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F38
_080B0F44:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0F5A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F4E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F4E
_080B0F5A:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0F70
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0F64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0F64
_080B0F70:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0FF4
	movs r1, #0x10
_080B0F7A:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0F84
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0F84:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0F7A
	b _080B0FF4
_080B0F8C: .4byte 0x00000FFF
_080B0F90: .4byte 0x00007FFF
_080B0F94: .4byte 0x03000FD8
_080B0F98:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0FAE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FA2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FA2
_080B0FAE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0FC4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FB8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FB8
_080B0FC4:
	mov r2, r8
	cmp r2, #0x00
	beq _080B0FDA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0FCE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0FCE
_080B0FDA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0FF4
	movs r1, #0x10
_080B0FE4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0FEE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0FEE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0FE4
_080B0FF4:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	b _080B1150
_080B1000:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	cmp r0, r10
	ble _080B100A
	b _080B1150
_080B100A:
	ldr r0, _080B10C8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080B10CC @ =0xFF000001
	ands r0, r1
	cmp r0, #0x00
	bne _080B1020
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080B1020
	b _080B1150
_080B1020:
	ldr r2, _080B10D0 @ =0x03000FD8
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
	ldr r1, _080B10D4 @ =0x00FFFFFE
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080B104E
	b _080B1150
_080B104E:
	mov r2, r9
	ldrh r1, [r2, #0x00]
	ldr r0, _080B10D8 @ =0x00000FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #0x05
	adds r1, r5, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B10DC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B1080
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B1074:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B1074
_080B1080:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B1096
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B108A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B108A
_080B1096:
	mov r2, r8
	cmp r2, #0x00
	beq _080B10AC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10A0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10A0
_080B10AC:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B1138
	movs r1, #0x10
_080B10B6:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B10C0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B10C0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B10B6
	b _080B1138
_080B10C8: .4byte 0x0300034C
_080B10CC: .4byte 0xFF000001
_080B10D0: .4byte 0x03000FD8
_080B10D4: .4byte 0x00FFFFFE
_080B10D8: .4byte 0x00000FFF
_080B10DC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B10F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10E6
_080B10F2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B1108
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B10FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B10FC
_080B1108:
	mov r2, r8
	cmp r2, #0x00
	beq _080B111E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B1112:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B1112
_080B111E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B1138
	movs r1, #0x10
_080B1128:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B1132
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B1132:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B1128
_080B1138:
	bl sub_807F448
	adds r0, r7, #0x0
	bl sub_807EA24
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r7, #0x0
	movs r2, #0x08
	bl sub_807EAE4
_080B1150:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080B11CC
	ldr r1, [sp, #0x00C]
	mov r2, r10
	cmp r1, #0x00
	bge _080B1164
	movs r1, #0x00
_080B1164:
	mov r4, r10
	cmp r4, #0x00
	bge _080B116C
	movs r2, #0x00
_080B116C:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080B1176
	adds r1, r0, #0x0
_080B1176:
	ldr r0, _080B11C0 @ =0x00007FFF
	cmp r2, r0
	ble _080B117E
	adds r2, r0, #0x0
_080B117E:
	cmp r2, r1
	bge _080B1184
	adds r1, r2, #0x0
_080B1184:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	cmp r0, r1
	blt _080B119E
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080B11A0
_080B119E:
	movs r1, #0x00
_080B11A0:
	cmp r1, #0x00
	beq _080B11CC
	cmp r3, #0x01
	ble _080B11CC
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080B11C4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080B11C8 @ =0x080B30D9
	ldr r3, [sp, #0x004]
	str r1, [r3, #0x4C]
	ldr r0, [sp, #0x004]
	bl _call_via_r1
	b _080B14F4
_080B11C0: .4byte 0x00007FFF
_080B11C4: .4byte 0x00000FFF
_080B11C8: .4byte sub_80B30D8
_080B11CC:
	ldr r2, [sp, #0x008]
	cmp r2, #0x00
	bge _080B11D4
	movs r2, #0x00
_080B11D4:
	ldr r0, _080B13AC @ =0x00007FFF
	cmp r2, r0
	ble _080B11DC
	adds r2, r0, #0x0
_080B11DC:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	adds r4, r0, #0x0
	cmp r1, r2
	bgt _080B11F8
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r5, #0x00
	ldsh r0, [r0, r5]
	movs r1, #0x01
	cmp r0, r2
	bge _080B11FA
_080B11F8:
	movs r1, #0x00
_080B11FA:
	cmp r1, #0x00
	beq _080B1252
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1210
	cmp r1, #0x04
	bne _080B1228
_080B1210:
	ldr r2, _080B13B0 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1228:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B123A
	cmp r1, #0x04
	bne _080B1252
_080B123A:
	ldr r2, _080B13B4 @ =0x00002032
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1252:
	mov r1, r10
	cmp r1, #0x00
	bge _080B125A
	movs r1, #0x00
_080B125A:
	ldr r0, _080B13AC @ =0x00007FFF
	cmp r1, r0
	ble _080B1262
	adds r1, r0, #0x0
_080B1262:
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, r1
	bgt _080B1278
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r0, [r0, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080B127A
_080B1278:
	movs r2, #0x00
_080B127A:
	cmp r2, #0x00
	beq _080B12E4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1290
	cmp r1, #0x04
	bne _080B12AC
_080B1290:
	ldr r2, _080B13B0 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x01
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
_080B12AC:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B12BE
	cmp r1, #0x04
	bne _080B12E4
_080B12BE:
	movs r2, #0x01
	negs r2, r2
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B12E4:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B12F4
	b _080B14F4
_080B12F4:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	mov r5, r8
	ldr r0, [r5, #0x28]
	ldr r1, _080B13B8 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080B1324
	mov r0, r8
	bl sub_8086700
_080B1324:
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080B1340
	cmp r2, #0x04
	bne _080B137E
_080B1340:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B134E
	adds r0, #0xFF
_080B134E:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B135C
	adds r0, #0xFF
_080B135C:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B136A
	adds r0, #0xFF
_080B136A:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080B137E:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B138C
	cmp r1, #0x04
	bne _080B13FC
_080B138C:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B13C0
	ldr r2, _080B13BC @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B13CC
	.byte 0x00, 0x00
_080B13AC: .4byte 0x00007FFF
_080B13B0: .4byte 0x00002061
_080B13B4: .4byte 0x00002032
_080B13B8: .4byte 0x00000111
_080B13BC: .4byte 0x00002002
_080B13C0:
	ldr r2, _080B1498 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B13CC:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080B13E2
	movs r2, #0x01
_080B13E2:
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
_080B13FC:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B140A
	cmp r2, #0x04
	bne _080B1414
_080B140A:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080B1414:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B1428
	cmp r2, #0x04
	bne _080B146A
_080B1428:
	ldr r3, [r7, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1436
	adds r0, #0xFF
_080B1436:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1444
	adds r0, #0xFF
_080B1444:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080B1452
	adds r0, #0xFF
_080B1452:
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
_080B146A:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1478
	cmp r1, #0x04
	bne _080B14DC
_080B1478:
	ldr r0, [r7, #0x28]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B14A0
	ldr r2, _080B149C @ =0x00002002
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080B14AC
	.byte 0x00, 0x00
_080B1498: .4byte 0x0000204F
_080B149C: .4byte 0x00002002
_080B14A0:
	ldr r2, _080B1504 @ =0x0000204F
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080B14AC:
	ldr r3, [r7, #0x08]
	movs r2, #0x00
	adds r0, r7, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080B14C2
	movs r2, #0x01
_080B14C2:
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
_080B14DC:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B14EA
	cmp r2, #0x04
	bne _080B14F4
_080B14EA:
	movs r0, #0x00
	str r0, [r7, #0x4C]
	adds r0, r7, #0x0
	bl sub_808863C
_080B14F4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B1504: .4byte 0x0000204F
