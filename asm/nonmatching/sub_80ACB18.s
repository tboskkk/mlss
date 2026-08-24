	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r10, r0
	ldr r0, _080ACC30 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r9, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	subs r0, r1, r0
	add r0, r9
	mov r12, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r3, r9
	subs r3, r3, r0
	str r3, [sp, #0x004]
	lsls r1, r1, #0x02
	add r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080ACB82
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080ACB82:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	cmp r0, #0x00
	beq _080ACB92
	b _080ACFAC
_080ACB92:
	mov r1, r12
	cmp r1, #0x00
	bge _080ACB9A
	movs r1, #0x00
_080ACB9A:
	ldr r0, _080ACC34 @ =0x00007FFF
	cmp r1, r0
	ble _080ACBA2
	adds r1, r0, #0x0
_080ACBA2:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080ACBB8
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080ACBBA
_080ACBB8:
	movs r2, #0x00
_080ACBBA:
	adds r4, r5, #0x0
	adds r4, #0x7E
	adds r7, r5, #0x0
	adds r7, #0xAE
	cmp r2, #0x00
	beq _080ACC9C
	ldr r2, _080ACC30 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080ACC38
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACBEA
	movs r1, #0x66
_080ACBDE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACBDE
_080ACBEA:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACBFE
	movs r1, #0x66
_080ACBF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACBF2
_080ACBFE:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACC12
	movs r1, #0x66
_080ACC06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC06
_080ACC12:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACC94
	movs r1, #0x06
_080ACC1C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACC26
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACC26:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACC1C
	b _080ACC94
	.byte 0x00, 0x00
_080ACC30: .4byte 0x03000FD8
_080ACC34: .4byte 0x00007FFF
_080ACC38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACC4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACC42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC42
_080ACC4E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACC64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACC58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC58
_080ACC64:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACC7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACC6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACC6E
_080ACC7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACC94
	movs r1, #0x10
_080ACC84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACC8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACC8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACC84
_080ACC94:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080ACC9C:
	ldr r1, [sp, #0x004]
	mov r2, r9
	cmp r1, #0x00
	bge _080ACCA6
	movs r1, #0x00
_080ACCA6:
	mov r0, r9
	cmp r0, #0x00
	bge _080ACCAE
	movs r2, #0x00
_080ACCAE:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080ACCB8
	adds r1, r0, #0x0
_080ACCB8:
	ldr r0, _080ACDEC @ =0x00007FFF
	cmp r2, r0
	ble _080ACCC0
	adds r2, r0, #0x0
_080ACCC0:
	cmp r2, r1
	bge _080ACCC6
	adds r1, r2, #0x0
_080ACCC6:
	movs r3, #0x00
	ldsh r0, [r4, r3]
	cmp r0, r1
	blt _080ACCDC
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080ACCDE
_080ACCDC:
	movs r1, #0x00
_080ACCDE:
	cmp r1, #0x00
	beq _080ACD1E
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	ldr r0, _080ACDF0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080ACD1E
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x03
	adds r1, r6, #0x0
	movs r2, #0x18
	bl sub_807EAE4
	ldrh r1, [r7, #0x00]
	ldr r0, _080ACDF4 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
_080ACD1E:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080ACD28
	b _080ACFAC
_080ACD28:
	mov r1, r9
	cmp r1, #0x00
	bge _080ACD30
	movs r1, #0x00
_080ACD30:
	ldr r0, _080ACDEC @ =0x00007FFF
	cmp r1, r0
	ble _080ACD38
	adds r1, r0, #0x0
_080ACD38:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r1
	bgt _080ACD4E
	movs r2, #0x00
	ldsh r0, [r4, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080ACD50
_080ACD4E:
	movs r2, #0x00
_080ACD50:
	cmp r2, #0x00
	bne _080ACD56
	b _080ACE64
_080ACD56:
	ldr r3, _080ACDF8 @ =0x03000FD8
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
	ldrh r1, [r7, #0x00]
	ldr r0, _080ACDF4 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ACDFC
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACDA2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACD96:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACD96
_080ACDA2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACDB8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACDAC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACDAC
_080ACDB8:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACDCE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACDC2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACDC2
_080ACDCE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACE58
	movs r1, #0x10
_080ACDD8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACDE2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACDE2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACDD8
	b _080ACE58
	.byte 0x00, 0x00
_080ACDEC: .4byte 0x00007FFF
_080ACDF0: .4byte 0x0300034C
_080ACDF4: .4byte 0x00000FFF
_080ACDF8: .4byte 0x03000FD8
_080ACDFC:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACE12
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACE06:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACE06
_080ACE12:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACE28
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACE1C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACE1C
_080ACE28:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACE3E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACE32:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACE32
_080ACE3E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACE58
	movs r1, #0x10
_080ACE48:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACE52
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACE52:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACE48
_080ACE58:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080ACFAC
_080ACE64:
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r0, r9
	ble _080ACE6E
	b _080ACFAC
_080ACE6E:
	ldr r0, _080ACF2C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080ACE84
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080ACE84
	b _080ACFAC
_080ACE84:
	ldr r2, _080ACF30 @ =0x03000FD8
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
	bne _080ACFAC
	ldrh r1, [r7, #0x00]
	ldr r0, _080ACF34 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080ACF38
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACEE2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACED6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACED6
_080ACEE2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACEF8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACEEC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACEEC
_080ACEF8:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACF0E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF02:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF02
_080ACF0E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACF94
	movs r1, #0x10
_080ACF18:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACF22
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACF22:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACF18
	b _080ACF94
	.byte 0x00, 0x00
_080ACF2C: .4byte 0x0300034C
_080ACF30: .4byte 0x03000FD8
_080ACF34: .4byte 0x00000FFF
_080ACF38:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080ACF4E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF42:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF42
_080ACF4E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080ACF64
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF58:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF58
_080ACF64:
	mov r2, r8
	cmp r2, #0x00
	beq _080ACF7A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080ACF6E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080ACF6E
_080ACF7A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080ACF94
	movs r1, #0x10
_080ACF84:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080ACF8E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080ACF8E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080ACF84
_080ACF94:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r3, #0x18
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x18
	bl sub_807EAE4
_080ACFAC:
	ldrh r0, [r7, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080AD020
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r1, r9
	cmp r1, #0x00
	bge _080ACFC0
	movs r1, #0x00
_080ACFC0:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080ACFCA
	adds r2, r0, #0x0
_080ACFCA:
	ldr r0, _080AD014 @ =0x00007FFF
	cmp r1, r0
	ble _080ACFD2
	adds r1, r0, #0x0
_080ACFD2:
	cmp r1, r2
	bge _080ACFD8
	adds r2, r1, #0x0
_080ACFD8:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080ACFF2
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	ble _080ACFF4
_080ACFF2:
	movs r2, #0x00
_080ACFF4:
	cmp r2, #0x00
	beq _080AD020
	cmp r3, #0x01
	ble _080AD020
	ldrh r0, [r7, #0x00]
	ldr r1, _080AD018 @ =0x00000FFF
	ands r1, r0
	strh r1, [r7, #0x00]
	ldr r1, _080AD01C @ =0x080AD71D
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080AD08C
	.byte 0x00, 0x00
_080AD014: .4byte 0x00007FFF
_080AD018: .4byte 0x00000FFF
_080AD01C: .4byte sub_80AD71C
_080AD020:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080AD08C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD040
	cmp r1, #0x04
	bne _080AD05C
_080AD040:
	ldr r2, _080AD09C @ =0x00002032
	adds r0, r6, #0x0
	movs r1, #0x06
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
_080AD05C:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AD06E
	cmp r1, #0x04
	bne _080AD086
_080AD06E:
	ldr r2, _080AD0A0 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AD086:
	ldr r0, _080AD0A4 @ =0x080AD0A9
	mov r4, r10
	str r0, [r4, #0x4C]
_080AD08C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD09C: .4byte 0x00002032
_080AD0A0: .4byte 0x00002061
_080AD0A4: .4byte sub_80AD0A8
