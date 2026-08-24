	.syntax unified
	.text

	thumb_func_start sub_80AFDA0
sub_80AFDA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	str r0, [sp, #0x004]
	ldr r0, _080AFEB4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [sp, #0x004]
	ldr r6, [r0, #0x2C]
	movs r1, #0x80
	lsls r1, r1, #0x07
	mov r10, r1
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x82
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r0, r1, #0x03
	mov r3, r10
	subs r3, r3, r0
	mov r12, r3
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x01
	mov r1, r10
	subs r1, r1, r0
	str r1, [sp, #0x008]
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r0, [r3, r2]
	cmp r0, r10
	bge _080AFE04
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080AFE04:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r8, r1
	cmp r0, #0x00
	beq _080AFE14
	b _080B032E
_080AFE14:
	mov r1, r12
	cmp r1, #0x00
	bge _080AFE1C
	movs r1, #0x00
_080AFE1C:
	ldr r0, _080AFEB8 @ =0x00007FFF
	cmp r1, r0
	ble _080AFE24
	adds r1, r0, #0x0
_080AFE24:
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080AFE3A
	movs r2, #0x00
	ldsh r0, [r3, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080AFE3C
_080AFE3A:
	movs r2, #0x00
_080AFE3C:
	movs r3, #0x7E
	adds r3, r3, r5
	mov r9, r3
	movs r4, #0xAE
	adds r4, r4, r5
	mov r8, r4
	cmp r2, #0x00
	beq _080AFF20
	ldr r2, _080AFEB4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080AFEBC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AFE70
	movs r1, #0x66
_080AFE64:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFE64
_080AFE70:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AFE84
	movs r1, #0x66
_080AFE78:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFE78
_080AFE84:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AFE98
	movs r1, #0x66
_080AFE8C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFE8C
_080AFE98:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AFF18
	movs r1, #0x06
_080AFEA2:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AFEAC
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AFEAC:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AFEA2
	b _080AFF18
_080AFEB4: .4byte 0x03000FD8
_080AFEB8: .4byte 0x00007FFF
_080AFEBC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080AFED2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFEC6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFEC6
_080AFED2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AFEE8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFEDC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFEDC
_080AFEE8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080AFEFE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFEF2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFEF2
_080AFEFE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080AFF18
	movs r1, #0x10
_080AFF08:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080AFF12
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080AFF12:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080AFF08
_080AFF18:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080AFF20:
	ldr r1, [sp, #0x008]
	mov r2, r10
	cmp r1, #0x00
	bge _080AFF2A
	movs r1, #0x00
_080AFF2A:
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080AFF34
	adds r1, r0, #0x0
_080AFF34:
	ldr r0, _080B0028 @ =0x00007FFF
	cmp r2, r0
	ble _080AFF3C
	adds r2, r0, #0x0
_080AFF3C:
	cmp r2, r1
	bge _080AFF42
	adds r1, r2, #0x0
_080AFF42:
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080AFF5A
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080AFF5C
_080AFF5A:
	movs r1, #0x00
_080AFF5C:
	cmp r1, #0x00
	bne _080AFF62
	b _080B00A8
_080AFF62:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	ldr r0, _080B002C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080AFF80
	b _080B00A8
_080AFF80:
	movs r0, #0x02
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080B0030 @ =0x03000FD8
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
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080B0096
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080B0034
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080AFFE0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFFD4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFFD4
_080AFFE0:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080AFFF6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080AFFEA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080AFFEA
_080AFFF6:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B000C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0000:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0000
_080B000C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0092
	movs r1, #0x10
_080B0016:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0020
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0020:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0016
	b _080B0092
_080B0028: .4byte 0x00007FFF
_080B002C: .4byte 0x0300034C
_080B0030: .4byte 0x03000FD8
_080B0034:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080B004C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0040:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0040
_080B004C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B0062
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0056:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0056
_080B0062:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0078
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B006C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B006C
_080B0078:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0092
	movs r1, #0x10
_080B0082:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B008C
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B008C:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0082
_080B0092:
	bl sub_807F448
_080B0096:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	ldr r1, _080B0178 @ =0x00000FFF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #0x06
	adds r0, r3, #0x0
	orrs r1, r0
	strh r1, [r2, #0x00]
_080B00A8:
	mov r4, r8
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080B00B4
	b _080B032E
_080B00B4:
	mov r1, r10
	ldr r0, _080B017C @ =0x00007FFF
	cmp r1, r0
	ble _080B00BE
	adds r1, r0, #0x0
_080B00BE:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080B00D6
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x01
	cmp r0, r1
	bge _080B00D8
_080B00D6:
	movs r2, #0x00
_080B00D8:
	cmp r2, #0x00
	bne _080B00DE
	b _080B01EC
_080B00DE:
	ldr r3, _080B0180 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B0178 @ =0x00000FFF
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
	beq _080B0184
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B012E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0122:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0122
_080B012E:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B0144
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0138:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0138
_080B0144:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B015A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B014E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B014E
_080B015A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B01E0
	movs r1, #0x10
_080B0164:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B016E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B016E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0164
	b _080B01E0
	.byte 0x00, 0x00
_080B0178: .4byte 0x00000FFF
_080B017C: .4byte 0x00007FFF
_080B0180: .4byte 0x03000FD8
_080B0184:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B019A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B018E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B018E
_080B019A:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B01B0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B01A4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B01A4
_080B01B0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B01C6
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B01BA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B01BA
_080B01C6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B01E0
	movs r1, #0x10
_080B01D0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B01DA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B01DA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B01D0
_080B01E0:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080B032E
_080B01EC:
	mov r1, r9
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, r10
	ble _080B01F8
	b _080B032E
_080B01F8:
	ldr r0, _080B02B0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080B0206
	b _080B032E
_080B0206:
	ldr r2, _080B02B4 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x02
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
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080B032E
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _080B02B8 @ =0x00000FFF
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
	beq _080B02BC
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B0268
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B025C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B025C
_080B0268:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B027E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0272:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0272
_080B027E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B0294
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B0288:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B0288
_080B0294:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0318
	movs r1, #0x10
_080B029E:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B02A8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B02A8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B029E
	b _080B0318
_080B02B0: .4byte 0x0300034C
_080B02B4: .4byte 0x03000FD8
_080B02B8: .4byte 0x00000FFF
_080B02BC:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080B02D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B02C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B02C6
_080B02D2:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080B02E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B02DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B02DC
_080B02E8:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080B02FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080B02F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080B02F2
_080B02FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080B0318
	movs r1, #0x10
_080B0308:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080B0312
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080B0312:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080B0308
_080B0318:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x2E
	movs r3, #0x00
	bl sub_807EAE4
_080B032E:
	mov r2, r8
	ldrh r0, [r2, #0x00]
	lsrs r1, r0, #0x0C
	cmp r1, #0x00
	bne _080B033A
	b _080B0488
_080B033A:
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r3, r10
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	ble _080B034A
	adds r2, r0, #0x0
_080B034A:
	ldr r0, _080B0470 @ =0x00007FFF
	cmp r3, r0
	ble _080B0352
	adds r3, r0, #0x0
_080B0352:
	cmp r3, r2
	bge _080B0358
	adds r2, r3, #0x0
_080B0358:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	blt _080B0372
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r3
	ble _080B0374
_080B0372:
	movs r2, #0x00
_080B0374:
	cmp r2, #0x00
	bne _080B037A
	b _080B0488
_080B037A:
	cmp r1, #0x02
	beq _080B0380
	b _080B0488
_080B0380:
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0398
	cmp r1, #0x04
	bne _080B03B4
_080B0398:
	ldr r2, _080B0474 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x0D
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
_080B03B4:
	ldr r0, [r6, #0x28]
	ldr r3, _080B0478 @ =0x00000111
	adds r2, r0, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
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
	ldr r0, _080B047C @ =0x040317A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080B040C
	ldr r2, _080B0478 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B0458
_080B040C:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B0414
	adds r1, #0xFF
_080B0414:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B042A
	adds r0, #0xFF
_080B042A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B0440
	adds r3, #0xFF
_080B0440:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B0480 @ =0x00002E47
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B0458:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B046C
	cmp r1, #0x04
	beq _080B046C
	b _080B0598
_080B046C:
	ldr r0, _080B0484 @ =0x080B3135
	b _080B0594
_080B0470: .4byte 0x00007FFF
_080B0474: .4byte 0x00002061
_080B0478: .4byte 0x00000111
_080B047C: .4byte 0x040317A8
_080B0480: .4byte 0x00002E47
_080B0484: .4byte dword_80B3135 @ =0x080B3135
_080B0488:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B0498
	b _080B0598
_080B0498:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x63
	bl play_sfx_80195B4
	ldr r0, [r7, #0x30]
	bl sub_807C298
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B04BA
	cmp r1, #0x04
	bne _080B04D6
_080B04BA:
	ldr r2, _080B0510 @ =0x00002061
	adds r0, r5, #0x0
	movs r1, #0x06
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
_080B04D6:
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
	ldr r0, _080B0514 @ =0x040216A8
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r5, #0x24]
	adds r1, #0x01
	strh r1, [r5, #0x24]
	cmp r0, #0x01
	bne _080B0518
	adds r0, r5, #0x0
	bl sub_8086764
	b _080B0598
_080B0510: .4byte 0x00002061
_080B0514: .4byte 0x040216A8
_080B0518:
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bgt _080B0534
	ldr r2, _080B05A8 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080B0580
_080B0534:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080B053C
	adds r1, #0xFF
_080B053C:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080B0552
	adds r0, #0xFF
_080B0552:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080B0568
	adds r3, #0xFF
_080B0568:
	asrs r3, r3, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080B05AC @ =0x0000070B
	str r6, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080B0580:
	ldr r0, [sp, #0x004]
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B0592
	cmp r1, #0x04
	bne _080B0598
_080B0592:
	ldr r0, _080B05B0 @ =0x080B3141
_080B0594:
	ldr r3, [sp, #0x004]
	str r0, [r3, #0x4C]
_080B0598:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B05A8: .4byte 0x00000111
_080B05AC: .4byte 0x0000070B
_080B05B0: .4byte dword_80B3141 @ =0x080B3141
