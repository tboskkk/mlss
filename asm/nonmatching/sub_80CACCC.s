	.syntax unified
	.text

	thumb_func_start sub_80CACCC
sub_80CACCC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r4, _080CADC4 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_80884AC
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r0, #0xC0
	ands r0, r1
	cmp r0, #0x00
	bne _080CAD04
	b _080CB2CC
_080CAD04:
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080CAD22
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CAD22:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080CAD32
	b _080CB25A
_080CAD32:
	movs r2, #0x00
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r2
	bgt _080CAD4A
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080CAD4C
_080CAD4A:
	movs r1, #0x00
_080CAD4C:
	adds r5, r6, #0x0
	adds r5, #0x7E
	movs r2, #0xAE
	adds r2, r2, r6
	mov r9, r2
	cmp r1, #0x00
	beq _080CAE2C
	ldr r2, _080CADC4 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CADC8
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CAD7E
	movs r1, #0x33
_080CAD72:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAD72
_080CAD7E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CAD92
	movs r1, #0x33
_080CAD86:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAD86
_080CAD92:
	mov r2, r8
	cmp r2, #0x00
	beq _080CADA6
	movs r1, #0x33
_080CAD9A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAD9A
_080CADA6:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAE24
	movs r1, #0x03
_080CADB0:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CADBA
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CADBA:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CADB0
	b _080CAE24
	.byte 0x00, 0x00
_080CADC4: .4byte 0x03000FD8
_080CADC8:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CADDE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CADD2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CADD2
_080CADDE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CADF4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CADE8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CADE8
_080CADF4:
	mov r2, r8
	cmp r2, #0x00
	beq _080CAE0A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CADFE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CADFE
_080CAE0A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAE24
	movs r1, #0x10
_080CAE14:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CAE1E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CAE1E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CAE14
_080CAE24:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080CAE2C:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CAE3C
	adds r1, r0, #0x0
_080CAE3C:
	ldr r0, _080CAF38 @ =0x00007FFF
	cmp r2, r0
	ble _080CAE44
	adds r2, r0, #0x0
_080CAE44:
	cmp r2, r1
	bge _080CAE4A
	adds r1, r2, #0x0
_080CAE4A:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	cmp r0, r1
	blt _080CAE60
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080CAE62
_080CAE60:
	movs r1, #0x00
_080CAE62:
	cmp r1, #0x00
	bne _080CAE68
	b _080CAFBE
_080CAE68:
	ldr r1, _080CAF3C @ =0xFF000002
	movs r2, #0x18
	negs r2, r2
	movs r3, #0x30
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_807E680
	ldr r0, _080CAF40 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080CAE8A
	b _080CAFBE
_080CAE8A:
	movs r2, #0x2B
	negs r2, r2
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x07
	adds r1, r6, #0x0
	bl sub_807EAE4
	adds r0, r6, #0x0
	bl sub_807EA24
	ldr r4, _080CAF44 @ =0x03000FD8
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
	bne _080CAFAA
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CAF48
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080CAEEE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAEE2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAEE2
_080CAEEE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CAF04
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAEF8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAEF8
_080CAF04:
	mov r2, r8
	cmp r2, #0x00
	beq _080CAF1A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF0E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF0E
_080CAF1A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAFA6
	movs r1, #0x10
_080CAF24:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CAF2E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CAF2E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CAF24
	b _080CAFA6
	.byte 0x00, 0x00
_080CAF38: .4byte 0x00007FFF
_080CAF3C: .4byte 0xFF000002
_080CAF40: .4byte 0x0300034C
_080CAF44: .4byte 0x03000FD8
_080CAF48:
	adds r2, r7, #0x0
	adds r3, r4, #0x0
	cmp r7, #0x00
	beq _080CAF60
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF54:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF54
_080CAF60:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CAF76
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF6A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF6A
_080CAF76:
	mov r2, r8
	cmp r2, #0x00
	beq _080CAF8C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CAF80:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CAF80
_080CAF8C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CAFA6
	movs r1, #0x10
_080CAF96:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CAFA0
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CAFA0:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CAF96
_080CAFA6:
	bl sub_807F448
_080CAFAA:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080CB08C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080CAFBE:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080CAFCA
	b _080CB25A
_080CAFCA:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080CB090 @ =0x00007FFF
	cmp r1, r0
	ble _080CAFD6
	adds r1, r0, #0x0
_080CAFD6:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080CAFEC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080CAFEE
_080CAFEC:
	movs r2, #0x00
_080CAFEE:
	cmp r2, #0x00
	bne _080CAFF4
	b _080CB100
_080CAFF4:
	ldr r3, _080CB094 @ =0x03000FD8
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
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080CB08C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CB098
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB042
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB036:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB036
_080CB042:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB058
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB04C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB04C
_080CB058:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB06E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB062:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB062
_080CB06E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB0F4
	movs r1, #0x10
_080CB078:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB082
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB082:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB078
	b _080CB0F4
	.byte 0x00, 0x00
_080CB08C: .4byte 0x00000FFF
_080CB090: .4byte 0x00007FFF
_080CB094: .4byte 0x03000FD8
_080CB098:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB0AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB0A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB0A2
_080CB0AE:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB0C4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB0B8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB0B8
_080CB0C4:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB0DA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB0CE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB0CE
_080CB0DA:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB0F4
	movs r1, #0x10
_080CB0E4:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB0EE
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB0EE:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB0E4
_080CB0F4:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	b _080CB25A
_080CB100:
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r0, r4
	ble _080CB10E
	b _080CB25A
_080CB10E:
	ldr r0, _080CB1D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	ldr r0, _080CB1D4 @ =0xFF000002
	ands r0, r1
	cmp r0, #0x00
	bne _080CB124
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	bne _080CB124
	b _080CB25A
_080CB124:
	ldr r2, _080CB1D8 @ =0x03000FD8
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
	ldr r1, _080CB1DC @ =0x00FFFFFD
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080CB152
	b _080CB25A
_080CB152:
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080CB1E0 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080CB1E4
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB186
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB17A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB17A
_080CB186:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB19C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB190:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB190
_080CB19C:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB1B2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB1A6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB1A6
_080CB1B2:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB240
	movs r1, #0x10
_080CB1BC:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB1C6
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB1C6:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB1BC
	b _080CB240
	.byte 0x00, 0x00
_080CB1D0: .4byte 0x0300034C
_080CB1D4: .4byte 0xFF000002
_080CB1D8: .4byte 0x03000FD8
_080CB1DC: .4byte 0x00FFFFFD
_080CB1E0: .4byte 0x00000FFF
_080CB1E4:
	adds r2, r7, #0x0
	cmp r7, #0x00
	beq _080CB1FA
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB1EE:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB1EE
_080CB1FA:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080CB210
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB204:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB204
_080CB210:
	mov r2, r8
	cmp r2, #0x00
	beq _080CB226
	movs r1, #0x80
	lsls r1, r1, #0x01
_080CB21A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080CB21A
_080CB226:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080CB240
	movs r1, #0x10
_080CB230:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080CB23A
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080CB23A:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080CB230
_080CB240:
	bl sub_807F448
	adds r0, r6, #0x0
	bl sub_807EA24
	movs r2, #0x2B
	negs r2, r2
	movs r3, #0x28
	negs r3, r3
	movs r0, #0x06
	adds r1, r6, #0x0
	bl sub_807EAE4
_080CB25A:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080CB2CC
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080CB274
	adds r1, r0, #0x0
_080CB274:
	ldr r0, _080CB2C0 @ =0x00007FFF
	cmp r2, r0
	ble _080CB27C
	adds r2, r0, #0x0
_080CB27C:
	cmp r2, r1
	bge _080CB282
	adds r1, r2, #0x0
_080CB282:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080CB29C
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080CB29E
_080CB29C:
	movs r1, #0x00
_080CB29E:
	cmp r1, #0x00
	beq _080CB2CC
	cmp r3, #0x01
	ble _080CB2CC
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080CB2C4 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080CB2C8 @ =0x080CBDD9
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080CB42A
	.byte 0x00, 0x00
_080CB2C0: .4byte 0x00007FFF
_080CB2C4: .4byte 0x00000FFF
_080CB2C8: .4byte sub_80CBDD8
_080CB2CC:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080CB2DC
	b _080CB42A
_080CB2DC:
	mov r4, r8
	ldr r0, [r4, #0x28]
	ldr r1, _080CB3F4 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _080CB300
	mov r0, r8
	bl sub_8086700
_080CB300:
	adds r1, r7, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CB314
	cmp r2, #0x04
	bne _080CB344
_080CB314:
	ldr r2, _080CB3F8 @ =0x03001038
	ldr r0, _080CB3FC @ =0x0819832C
	ldr r1, _080CB400 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0A
	bl _call_via_r2
	adds r2, r7, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CB344:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB352
	cmp r2, #0x04
	bne _080CB356
_080CB352:
	ldr r0, _080CB404 @ =0x080CB6AD
	str r0, [r7, #0x4C]
_080CB356:
	movs r5, #0x01
	negs r5, r5
	movs r0, #0x2B
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080CB376
	cmp r2, #0x04
	bne _080CB3C4
_080CB376:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080CB37E
	adds r0, #0xFF
_080CB37E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x32
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080CB398
	adds r2, #0xFF
_080CB398:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	adds r2, #0x14
	str r5, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r0, #0x28
	adds r1, r6, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080CB3C4:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CB3D2
	cmp r2, #0x04
	bne _080CB424
_080CB3D2:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080CB408
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080CB414
	.byte 0x00, 0x00
_080CB3F4: .4byte 0x00000111
_080CB3F8: .4byte 0x03001038
_080CB3FC: .4byte 0x0819832C
_080CB400: .4byte 0x08198220
_080CB404: .4byte sub_80CB6AC
_080CB408:
	ldr r2, _080CB43C @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080CB414:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080CB424:
	ldr r0, _080CB440 @ =0x080CB445
	mov r4, r10
	str r0, [r4, #0x4C]
_080CB42A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CB43C: .4byte 0x0000204D
_080CB440: .4byte sub_80CB444
