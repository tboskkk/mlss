	.syntax unified
	.text

	thumb_func_start sub_80C9D2C
sub_80C9D2C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080C9E40 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r10, r0
	mov r0, r9
	bl sub_8087CE4
	mov r1, r9
	ldr r3, [r1, #0x18]
	ldr r0, [r1, #0x40]
	cmp r3, r0
	bge _080C9D86
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080C9D68
	adds r0, #0xFF
_080C9D68:
	asrs r0, r0, #0x08
	cmp r0, #0x0F
	bgt _080C9D86
	ldr r2, _080C9E44 @ =0x03001038
	ldr r0, _080C9E48 @ =0x0819832C
	ldr r1, _080C9E4C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	movs r1, #0x10
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080C9D86:
	mov r0, r9
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r7, r0, #0x0
	mov r3, r9
	adds r3, #0x79
	str r3, [sp, #0x008]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r1, r4
	bge _080C9DA8
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
_080C9DA8:
	mov r1, r9
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r5, r1, #0x0
	cmp r0, #0x00
	beq _080C9DB8
	b _080CA192
_080C9DB8:
	movs r2, #0x00
	mov r0, r9
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	mov r8, r0
	cmp r1, r2
	bgt _080C9DD2
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C9DD4
_080C9DD2:
	movs r1, #0x00
_080C9DD4:
	cmp r1, #0x00
	beq _080C9EB4
	ldr r2, _080C9E40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C9E50
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C9DFC
	movs r1, #0x66
_080C9DF0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9DF0
_080C9DFC:
	mov r2, r9
	cmp r2, #0x00
	beq _080C9E10
	movs r1, #0x66
_080C9E04:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E04
_080C9E10:
	mov r2, r10
	cmp r2, #0x00
	beq _080C9E24
	movs r1, #0x66
_080C9E18:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E18
_080C9E24:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9EAC
	movs r1, #0x06
_080C9E2E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9E38
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9E38:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9E2E
	b _080C9EAC
_080C9E40: .4byte 0x03000FD8
_080C9E44: .4byte 0x03001038
_080C9E48: .4byte 0x0819832C
_080C9E4C: .4byte 0x08198220
_080C9E50:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C9E66
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9E5A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E5A
_080C9E66:
	mov r2, r9
	cmp r2, #0x00
	beq _080C9E7C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9E70:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E70
_080C9E7C:
	mov r2, r10
	cmp r2, #0x00
	beq _080C9E92
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9E86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9E86
_080C9E92:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C9EAC
	movs r1, #0x10
_080C9E9C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9EA6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9EA6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9E9C
_080C9EAC:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C9EB4:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C9EC4
	adds r1, r0, #0x0
_080C9EC4:
	ldr r0, _080C9FDC @ =0x00007FFF
	cmp r2, r0
	ble _080C9ECC
	adds r2, r0, #0x0
_080C9ECC:
	cmp r2, r1
	bge _080C9ED2
	adds r1, r2, #0x0
_080C9ED2:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080C9EE6
	mov r4, r8
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C9EE8
_080C9EE6:
	movs r1, #0x00
_080C9EE8:
	cmp r1, #0x00
	beq _080C9F16
	movs r4, #0x01
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080C9FE0 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r4, r0
	cmp r4, #0x00
	beq _080C9F16
	ldrh r0, [r5, #0x00]
	ldr r1, _080C9FE4 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r5, #0x00]
_080C9F16:
	ldrh r0, [r5, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C9F20
	b _080CA192
_080C9F20:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C9FDC @ =0x00007FFF
	cmp r1, r0
	ble _080C9F2C
	adds r1, r0, #0x0
_080C9F2C:
	mov r3, r8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	bgt _080C9F40
	movs r2, #0x00
	ldsh r0, [r7, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080C9F42
_080C9F40:
	movs r2, #0x00
_080C9F42:
	cmp r2, #0x00
	bne _080C9F48
	b _080CA054
_080C9F48:
	ldr r3, _080C9FE8 @ =0x03000FD8
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
	ldrh r1, [r5, #0x00]
	ldr r0, _080C9FE4 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C9FEC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C9F94
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9F88:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9F88
_080C9F94:
	mov r2, r9
	cmp r2, #0x00
	beq _080C9FAA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9F9E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9F9E
_080C9FAA:
	mov r2, r10
	cmp r2, #0x00
	beq _080C9FC0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9FB4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9FB4
_080C9FC0:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA048
	movs r1, #0x10
_080C9FCA:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C9FD4
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C9FD4:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C9FCA
	b _080CA048
_080C9FDC: .4byte 0x00007FFF
_080C9FE0: .4byte 0x0300034C
_080C9FE4: .4byte 0x00000FFF
_080C9FE8: .4byte 0x03000FD8
_080C9FEC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA002
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C9FF6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C9FF6
_080CA002:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA018
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA00C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA00C
_080CA018:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA02E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA022:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA022
_080CA02E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA048
	movs r1, #0x10
_080CA038:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA042
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA042:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA038
_080CA048:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CA192
_080CA054:
	movs r1, #0x00
	ldsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	ble _080CA062
	b _080CA192
_080CA062:
	ldr r0, _080CA120 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080CA078
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080CA078
	b _080CA192
_080CA078:
	ldr r2, _080CA124 @ =0x03000FD8
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
	bne _080CA192
	ldrh r1, [r5, #0x00]
	ldr r0, _080CA128 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CA12C
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA0D6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA0CA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA0CA
_080CA0D6:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA0EC
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA0E0:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA0E0
_080CA0EC:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA102
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA0F6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA0F6
_080CA102:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA188
	movs r1, #0x10
_080CA10C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA116
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA116:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA10C
	b _080CA188
	.byte 0x00, 0x00
_080CA120: .4byte 0x0300034C
_080CA124: .4byte 0x03000FD8
_080CA128: .4byte 0x00000FFF
_080CA12C:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA142
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA136:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA136
_080CA142:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA158
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA14C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA14C
_080CA158:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA16E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA162:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA162
_080CA16E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA188
	movs r1, #0x10
_080CA178:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA182
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA182:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA178
_080CA188:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
_080CA192:
	ldrh r0, [r5, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	bne _080CA19C
	b _080CA3BE
_080CA19C:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CA1AC
	adds r1, r0, #0x0
_080CA1AC:
	ldr r0, _080CA240 @ =0x00007FFF
	cmp r2, r0
	ble _080CA1B4
	adds r2, r0, #0x0
_080CA1B4:
	cmp r2, r1
	bge _080CA1BA
	adds r1, r2, #0x0
_080CA1BA:
	movs r4, #0x00
	ldsh r0, [r7, r4]
	cmp r0, r1
	blt _080CA1D0
	mov r0, r9
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CA1D2
_080CA1D0:
	movs r1, #0x00
_080CA1D2:
	cmp r1, #0x00
	bne _080CA1D8
	b _080CA3BE
_080CA1D8:
	cmp r3, #0x02
	beq _080CA1DE
	b _080CA3BE
_080CA1DE:
	adds r3, r6, #0x0
	adds r3, #0x9C
	ldr r0, [r3, #0x00]
	adds r0, #0x01
	str r0, [r3, #0x00]
	ldrh r1, [r5, #0x00]
	ldr r0, _080CA244 @ =0x00000FFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r0, _080CA248 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, _080CA24C @ =0x000002BF
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x00
	bne _080CA25C
	ldr r4, _080CA250 @ =0x03001038
	mov r8, r4
	ldr r1, _080CA254 @ =0x0819832C
	ldr r0, _080CA258 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r4, #0x00]
	adds r2, r2, r5
	ldr r1, [r3, #0x00]
	adds r1, #0x14
	movs r0, #0x3C
	bl _call_via_r2
	movs r1, #0x03
	subs r4, r1, r0
	cmp r4, #0x03
	ble _080CA224
	movs r4, #0x03
_080CA224:
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	movs r0, #0x03
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	movs r0, #0x08
	b _080CA2E6
	.byte 0x00, 0x00
_080CA240: .4byte 0x00007FFF
_080CA244: .4byte 0x00000FFF
_080CA248: .4byte 0x03000FD8
_080CA24C: .4byte 0x000002BF
_080CA250: .4byte 0x03001038
_080CA254: .4byte 0x0819832C
_080CA258: .4byte 0x08198220
_080CA25C:
	cmp r1, #0x40
	bne _080CA2A8
	ldr r2, _080CA29C @ =0x03001038
	mov r8, r2
	ldr r1, _080CA2A0 @ =0x0819832C
	ldr r0, _080CA2A4 @ =0x08198220
	subs r5, r1, r0
	ldr r2, [r2, #0x00]
	adds r2, r2, r5
	ldr r1, [r3, #0x00]
	adds r1, #0x14
	movs r0, #0xC8
	bl _call_via_r2
	movs r1, #0x0A
	subs r4, r1, r0
	cmp r4, #0x06
	ble _080CA282
	movs r4, #0x06
_080CA282:
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r5
	movs r0, #0x06
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	movs r0, #0x0E
	b _080CA2E6
_080CA29C: .4byte 0x03001038
_080CA2A0: .4byte 0x0819832C
_080CA2A4: .4byte 0x08198220
_080CA2A8:
	ldr r1, _080CA43C @ =0x03001038
	mov r8, r1
	ldr r1, _080CA440 @ =0x0819832C
	ldr r0, _080CA444 @ =0x08198220
	subs r5, r1, r0
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r5
	movs r0, #0x82
	lsls r0, r0, #0x01
	ldr r1, [r3, #0x00]
	adds r1, #0x14
	bl _call_via_r2
	movs r1, #0x0D
	subs r4, r1, r0
	cmp r4, #0x09
	ble _080CA2CE
	movs r4, #0x09
_080CA2CE:
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r5
	movs r0, #0x09
	movs r1, #0x03
	bl _call_via_r2
	adds r7, r0, #0x0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r5
	movs r0, #0x14
_080CA2E6:
	movs r1, #0x03
	bl _call_via_r2
	adds r5, r0, #0x0
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r1, r4, #0x1
	ldr r2, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r2, r1
	bge _080CA3BE
	adds r0, r2, #0x1
	str r0, [r4, #0x00]
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x01
	adds r1, r6, #0x0
	movs r2, #0x16
	bl sub_807EAE4
	adds r1, r7, #0x1
	ldr r0, [r4, #0x00]
	cmp r0, r1
	bne _080CA366
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CA31E
	adds r1, #0xFF
_080CA31E:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CA328
	adds r2, #0xFF
_080CA328:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CA332
	adds r3, #0xFF
_080CA332:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080CA448 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA34E
	cmp r1, #0x04
	bne _080CA366
_080CA34E:
	ldr r2, _080CA44C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CA366:
	adds r1, r5, #0x1
	ldr r0, [r4, #0x00]
	cmp r0, r1
	bne _080CA3BE
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080CA376
	adds r1, #0xFF
_080CA376:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080CA380
	adds r2, #0xFF
_080CA380:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080CA38A
	adds r3, #0xFF
_080CA38A:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080CA448 @ =0x00002FF9
	bl sub_80DF024
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA3A6
	cmp r1, #0x04
	bne _080CA3BE
_080CA3A6:
	ldr r2, _080CA44C @ =0x00002035
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CA3BE:
	ldr r2, [sp, #0x008]
	ldrb r1, [r2, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CA3CC
	b _080CA4F6
_080CA3CC:
	ldr r2, _080CA450 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CA454
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA3F2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA3E6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA3E6
_080CA3F2:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA408
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA3FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA3FC
_080CA408:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA41E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA412:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA412
_080CA41E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA4B0
	movs r1, #0x10
_080CA428:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA432
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA432:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA428
	b _080CA4B0
	.byte 0x00, 0x00
_080CA43C: .4byte 0x03001038
_080CA440: .4byte 0x0819832C
_080CA444: .4byte 0x08198220
_080CA448: .4byte 0x00002FF9
_080CA44C: .4byte 0x00002035
_080CA450: .4byte 0x03000FD8
_080CA454:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CA46A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA45E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA45E
_080CA46A:
	mov r2, r9
	cmp r2, #0x00
	beq _080CA480
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA474:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA474
_080CA480:
	mov r2, r10
	cmp r2, #0x00
	beq _080CA496
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CA48A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CA48A
_080CA496:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CA4B0
	movs r1, #0x10
_080CA4A0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CA4AA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CA4AA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CA4A0
_080CA4B0:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r3, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r3, r4]
	movs r1, #0x80
	lsls r1, r1, #0x01
	subs r1, r1, r0
	lsls r1, r1, #0x04
	ldr r0, [r6, #0x18]
	subs r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x18]
	adds r0, r3, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldr r2, _080CA508 @ =0x00002064
	adds r3, #0x23
	ldrb r3, [r3, #0x00]
	mov r0, r9
	bl sub_8082E1C
	mov r3, r9
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080CA50C @ =0x080CA511
	ldr r4, [sp, #0x004]
	str r0, [r4, #0x4C]
_080CA4F6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CA508: .4byte 0x00002064
_080CA50C: .4byte sub_80CA510
