	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80A4D70
sub_80A4D70:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A4E30 @ =0x03000FD8
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
	beq _080A4E2A
	ldr r0, _080A4E34 @ =0x00000157
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A4DAE
	cmp r1, #0x04
	bne _080A4DCA
_080A4DAE:
	ldr r2, _080A4E38 @ =0x00002026
	adds r0, r5, #0x0
	movs r1, #0x00
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
_080A4DCA:
	ldr r0, _080A4E3C @ =0x0000208A
	movs r1, #0x00
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	str r0, [r5, #0x34]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A4DEA
	cmp r1, #0x04
	bne _080A4E1A
_080A4DEA:
	ldr r2, _080A4E40 @ =0x03001038
	ldr r0, _080A4E44 @ =0x0819832C
	ldr r1, _080A4E48 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x46
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A4E1A:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080A4E4C @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080A4E50 @ =0x080A4E55
	str r0, [r6, #0x4C]
_080A4E2A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080A4E30: .4byte 0x03000FD8
_080A4E34: .4byte 0x00000157
_080A4E38: .4byte 0x00002026
_080A4E3C: .4byte 0x0000208A
_080A4E40: .4byte 0x03001038
_080A4E44: .4byte 0x0819832C
_080A4E48: .4byte 0x08198220
_080A4E4C: .4byte 0x00000FFF
_080A4E50: .4byte sub_80A4E54
	thumb_func_start sub_80A4E54
sub_80A4E54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080A4F60 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r8, r0
	adds r0, r6, #0x0
	bl sub_80884AC
	ldr r4, [r6, #0x34]
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x00]
	adds r0, #0x14
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x02]
	subs r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r8
	bge _080A4EB2
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A4EB2:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r7, r1, #0x0
	cmp r0, #0x00
	beq _080A4EC2
	b _080A4FCC
_080A4EC2:
	mov r2, r8
	movs r1, #0x00
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080A4EDC
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A4EDE
_080A4EDC:
	movs r1, #0x00
_080A4EDE:
	adds r7, r6, #0x0
	adds r7, #0xAE
	cmp r1, #0x00
	beq _080A4F02
	ldr r0, _080A4F64 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080A4F02
	ldrh r0, [r7, #0x00]
	ldr r1, _080A4F68 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r7, #0x00]
_080A4F02:
	ldrh r0, [r7, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A4FCC
	mov r1, r8
	ldr r0, _080A4F6C @ =0x00007FFF
	cmp r1, r0
	ble _080A4F14
	adds r1, r0, #0x0
_080A4F14:
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A4F2E
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A4F30
_080A4F2E:
	movs r2, #0x00
_080A4F30:
	cmp r2, #0x00
	beq _080A4F70
	ldr r0, _080A4F60 @ =0x03000FD8
	ldr r3, [r0, #0x00]
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
	ldrh r1, [r7, #0x00]
	ldr r0, _080A4F68 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r7, #0x00]
	b _080A4FCC
_080A4F60: .4byte 0x03000FD8
_080A4F64: .4byte 0x0300034C
_080A4F68: .4byte 0x00000FFF
_080A4F6C: .4byte 0x00007FFF
_080A4F70:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r8
	bgt _080A4FCC
	ldr r0, _080A502C @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A4F90
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A4FCC
_080A4F90:
	ldr r4, _080A5030 @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A4FCC
	ldrh r0, [r7, #0x00]
	ldr r1, _080A5034 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r7, #0x00]
_080A4FCC:
	ldrh r0, [r7, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A5040
	movs r1, #0x00
	mov r2, r8
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A4FE2
	adds r1, r0, #0x0
_080A4FE2:
	ldr r0, _080A5038 @ =0x00007FFF
	cmp r2, r0
	ble _080A4FEA
	adds r2, r0, #0x0
_080A4FEA:
	cmp r2, r1
	bge _080A4FF0
	adds r1, r2, #0x0
_080A4FF0:
	adds r0, r6, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A500A
	adds r0, r6, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A500C
_080A500A:
	movs r1, #0x00
_080A500C:
	cmp r1, #0x00
	beq _080A5040
	cmp r3, #0x01
	ble _080A5040
	ldrh r0, [r7, #0x00]
	ldr r1, _080A5034 @ =0x00000FFF
	ands r1, r0
	strh r1, [r7, #0x00]
	ldr r1, _080A503C @ =0x080A52FD
	mov r2, r10
	str r1, [r2, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080A50CC
	.byte 0x00, 0x00
_080A502C: .4byte 0x0300034C
_080A5030: .4byte 0x03000FD8
_080A5034: .4byte 0x00000FFF
_080A5038: .4byte 0x00007FFF
_080A503C: .4byte sub_80A52FC
_080A5040:
	movs r4, #0x79
	adds r4, r4, r6
	mov r8, r4
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A50CC
	movs r0, #0xAC
	lsls r0, r0, #0x01
	movs r5, #0x01
	negs r5, r5
	adds r1, r5, #0x0
	bl play_sfx_80195B4
	ldr r4, [r6, #0x34]
	movs r0, #0x00
	mov r9, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x01
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldrb r1, [r4, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x12]
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A508E
	cmp r1, #0x04
	bne _080A50BE
_080A508E:
	ldr r2, _080A50DC @ =0x03001038
	ldr r0, _080A50E0 @ =0x0819832C
	ldr r1, _080A50E4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x78
	bl _call_via_r2
	adds r1, r6, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7E
	mov r1, r9
	strh r1, [r0, #0x00]
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A50BE:
	ldrh r0, [r7, #0x00]
	ldr r1, _080A50E8 @ =0x00000FFF
	ands r1, r0
	strh r1, [r7, #0x00]
	ldr r0, _080A50EC @ =0x080A50F1
	mov r4, r10
	str r0, [r4, #0x4C]
_080A50CC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A50DC: .4byte 0x03001038
_080A50E0: .4byte 0x0819832C
_080A50E4: .4byte 0x08198220
_080A50E8: .4byte 0x00000FFF
_080A50EC: .4byte sub_80A50F0
	thumb_func_start sub_80A50F0
sub_80A50F0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _080A51F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x07
	mov r9, r0
	adds r0, r7, #0x0
	bl sub_80884AC
	ldr r4, [r7, #0x34]
	adds r0, r4, #0x0
	bl sub_807BC90
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x00]
	adds r0, #0x14
	strh r0, [r4, #0x00]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x02]
	subs r0, #0x0E
	strh r0, [r4, #0x02]
	ldr r0, [r7, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	adds r3, r5, #0x0
	adds r3, #0x86
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, r9
	bge _080A514A
	adds r2, r5, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A514A:
	adds r1, r5, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _080A515A
	b _080A5264
_080A515A:
	mov r2, r9
	movs r1, #0x00
	movs r4, #0x00
	ldsh r0, [r3, r4]
	cmp r0, r1
	blt _080A5174
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A5176
_080A5174:
	movs r1, #0x00
_080A5176:
	adds r6, r7, #0x0
	adds r6, #0xAE
	cmp r1, #0x00
	beq _080A519A
	ldr r0, _080A51FC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080A519A
	ldrh r0, [r6, #0x00]
	ldr r1, _080A5200 @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A519A:
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	bne _080A5264
	mov r1, r9
	ldr r0, _080A5204 @ =0x00007FFF
	cmp r1, r0
	ble _080A51AC
	adds r1, r0, #0x0
_080A51AC:
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	bgt _080A51C6
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0x01
	cmp r0, r1
	bge _080A51C8
_080A51C6:
	movs r2, #0x00
_080A51C8:
	cmp r2, #0x00
	beq _080A5208
	ldr r0, _080A51F8 @ =0x03000FD8
	ldr r3, [r0, #0x00]
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
	ldrh r1, [r6, #0x00]
	ldr r0, _080A5200 @ =0x00000FFF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r1, r4, #0x0
	orrs r0, r1
	strh r0, [r6, #0x00]
	b _080A5264
_080A51F8: .4byte 0x03000FD8
_080A51FC: .4byte 0x0300034C
_080A5200: .4byte 0x00000FFF
_080A5204: .4byte 0x00007FFF
_080A5208:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r9
	bgt _080A5264
	ldr r0, _080A52C4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080A5228
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080A5264
_080A5228:
	ldr r4, _080A52C8 @ =0x03000FD8
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
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080A5264
	ldrh r0, [r6, #0x00]
	ldr r1, _080A52CC @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	strh r1, [r6, #0x00]
_080A5264:
	ldrh r0, [r6, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080A52D8
	movs r1, #0x00
	mov r2, r9
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080A527A
	adds r1, r0, #0x0
_080A527A:
	ldr r0, _080A52D0 @ =0x00007FFF
	cmp r2, r0
	ble _080A5282
	adds r2, r0, #0x0
_080A5282:
	cmp r2, r1
	bge _080A5288
	adds r1, r2, #0x0
_080A5288:
	adds r0, r7, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080A52A2
	adds r0, r7, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080A52A4
_080A52A2:
	movs r1, #0x00
_080A52A4:
	cmp r1, #0x00
	beq _080A52D8
	cmp r3, #0x01
	ble _080A52D8
	ldrh r0, [r6, #0x00]
	ldr r1, _080A52CC @ =0x00000FFF
	ands r1, r0
	strh r1, [r6, #0x00]
	ldr r1, _080A52D4 @ =0x080A56DD
	mov r2, r8
	str r1, [r2, #0x4C]
	mov r0, r8
	bl _call_via_r1
	b _080A52EC
	.byte 0x00, 0x00
_080A52C4: .4byte 0x0300034C
_080A52C8: .4byte 0x03000FD8
_080A52CC: .4byte 0x00000FFF
_080A52D0: .4byte 0x00007FFF
_080A52D4: .4byte sub_80A56DC
_080A52D8:
	adds r0, r7, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080A52EC
	ldr r0, _080A52F8 @ =0x080A52FD
	mov r4, r8
	str r0, [r4, #0x4C]
_080A52EC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A52F8: .4byte sub_80A52FC
	thumb_func_start sub_80A52FC
sub_80A52FC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080A5398 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r0, [r5, #0x34]
	bl sub_807FB34
	movs r0, #0x00
	str r0, [r5, #0x34]
	adds r4, #0x7E
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A532E
	cmp r1, #0x04
	bne _080A534A
_080A532E:
	ldr r2, _080A539C @ =0x00002026
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080A534A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080A535C
	cmp r1, #0x04
	bne _080A538C
_080A535C:
	ldr r2, _080A53A0 @ =0x03001038
	ldr r0, _080A53A4 @ =0x0819832C
	ldr r1, _080A53A8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x02
	bl _call_via_r2
	adds r2, r5, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080A538C:
	ldr r0, _080A53AC @ =0x080A5B29
	str r0, [r6, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A5398: .4byte 0x03000FD8
_080A539C: .4byte 0x00002026
_080A53A0: .4byte 0x03001038
_080A53A4: .4byte 0x0819832C
_080A53A8: .4byte 0x08198220
_080A53AC: .4byte sub_80A5B28
