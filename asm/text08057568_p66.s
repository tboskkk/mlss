	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8136698
sub_8136698:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081366B4 @ =0x08CDC480
	str r0, [r2, #0x10]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081366AE
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_081366AE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081366B4: .4byte 0x08CDC480
	.byte 0x10, 0xB5, 0x04, 0x1C, 0x04, 0x48, 0x20, 0x61, 0x20, 0x1C, 0xFF, 0xF7, 0xE1, 0xFF, 0x20, 0x1C
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x80, 0xC4, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x4C
	.byte 0x04, 0x61, 0x01, 0x60, 0x42, 0x60, 0x83, 0x60, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x80, 0xC4, 0xCD, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x04, 0x48, 0x20, 0x61, 0x20, 0x1C, 0xFF, 0xF7
	.byte 0xBB, 0xFE, 0x20, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x80, 0xC4, 0xCD, 0x08
	thumb_func_start sub_8136708
sub_8136708:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r0, [r4, #0x2E]
	cmp r0, #0x00
	beq _0813671E
	subs r0, #0x10
	strh r0, [r4, #0x2E]
	ldr r1, _08136744 @ =0x02000054
	ldrh r0, [r4, #0x2E]
	lsrs r0, r0, #0x08
	strh r0, [r1, #0x00]
_0813671E:
	ldr r0, _08136748 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x00
	beq _0813674C
	adds r1, r4, #0x0
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _08136768
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08136768
_08136744: .4byte 0x02000054
_08136748: .4byte 0x0300034C
_0813674C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08136768
	adds r1, r4, #0x0
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	ble _08136768
	strb r2, [r1, #0x00]
_08136768:
	ldr r0, _081367A4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813678C
	adds r0, r4, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x00
	beq _0813678C
	cmp r0, #0x01
	bne _0813678C
	adds r0, r4, #0x0
	bl sub_81367DC
_0813678C:
	ldr r0, _081367A4 @ =0x0300034C
	ldrh r1, [r0, #0x2A]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0813679E
	adds r0, r4, #0x0
	bl sub_81367DC
_0813679E:
	pop {r4}
	pop {r0}
	bx r0
_081367A4: .4byte 0x0300034C
	.byte 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_81367AC
sub_81367AC:
	push {lr}
	ldr r2, _081367BC @ =0x08CDC4A0
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081367BC: .4byte 0x08CDC4A0
	thumb_func_start sub_81367C0
sub_81367C0:
	push {r4, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _081367D8 @ =0x08CDC4A0
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_081367D8: .4byte 0x08CDC4A0
	thumb_func_start sub_81367DC
sub_81367DC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _08136814 @ =0x02000050
	ldrh r0, [r4, #0x2C]
	strh r0, [r1, #0x00]
	adds r1, #0x04
	ldrh r0, [r4, #0x2A]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _081367F8
	movs r1, #0x03
	bl sub_81367AC
_081367F8:
	movs r0, #0x00
	str r0, [r4, #0x24]
	cmp r4, #0x00
	beq _0813680C
	ldr r0, _08136818 @ =0x08CDC490
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_0813680C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136814: .4byte 0x02000050
_08136818: .4byte 0x08CDC490
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x82, 0x61, 0xE3, 0xF6, 0x0B, 0xFA, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x90, 0xC4, 0xCD, 0x08, 0x30, 0xB5, 0x04, 0x1C, 0x09, 0x06, 0x09, 0x0E, 0xE3, 0xF6, 0xB6, 0xF8
	.byte 0x14, 0x48, 0xA0, 0x61, 0x00, 0x25, 0x25, 0x77, 0x13, 0x4A, 0x1C, 0x20, 0x00, 0x21, 0x00, 0x23
	.byte 0xE2, 0xF6, 0xCE, 0xFA, 0x11, 0x4A, 0x08, 0x21, 0xFF, 0xF7, 0xB4, 0xFF, 0x60, 0x62, 0x44, 0x61
	.byte 0x20, 0x1C, 0x28, 0x30, 0x05, 0x70, 0x80, 0x20, 0x40, 0x01, 0xE0, 0x85, 0x0C, 0x49, 0x08, 0x88
	.byte 0xA0, 0x85, 0xFF, 0x20, 0x08, 0x80, 0x04, 0x31, 0x08, 0x88, 0x60, 0x85, 0x10, 0x20, 0x08, 0x80
	.byte 0x54, 0x39, 0x8A, 0x22, 0x52, 0x01, 0x10, 0x1C, 0x08, 0x80, 0x20, 0x1C, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x90, 0xC4, 0xCD, 0x08, 0x90, 0x25, 0x21, 0x08, 0x98, 0x25, 0x21, 0x08
	.byte 0x50, 0x00, 0x00, 0x02, 0x28, 0x30, 0x00, 0x78, 0x00, 0x06, 0x00, 0x16, 0x70, 0x47, 0x00, 0x00
	thumb_func_start sub_81368AC
sub_81368AC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r6, r5, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	ldr r7, _08136978 @ =0x00000239
	adds r1, r5, r7
	strb r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	ldr r3, _0813697C @ =0x0000023E
	adds r1, r5, r3
	strh r2, [r1, #0x00]
	movs r4, #0xE8
	lsls r4, r4, #0x01
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	movs r7, #0x98
	lsls r7, r7, #0x01
	adds r4, r5, r7
	ldrb r2, [r4, #0x00]
	lsls r0, r2, #0x1C
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x03
	movs r3, #0x09
	negs r3, r3
	ands r3, r2
	orrs r3, r1
	strb r3, [r4, #0x00]
	movs r0, #0x0C
	ands r0, r3
	cmp r0, #0x00
	beq _08136942
	movs r0, #0x04
	ands r3, r0
	cmp r3, #0x00
	beq _081369B0
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _08136980 @ =0x00002710
	bl sub_81DD77C
	ldr r1, _08136984 @ =0x00001387
	cmp r0, r1
	bhi _081369B0
_08136942:
	ldr r1, _08136988 @ =0x00000193
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	adds r1, #0x01
	strb r1, [r0, #0x00]
	ldr r3, _0813698C @ =0x00000131
	adds r2, r5, r3
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrb r7, [r2, #0x00]
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r3, r0, #0x0
	cmp r1, r2
	bne _08136A08
	ldrb r1, [r4, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _0813699C
	cmp r0, #0x01
	bgt _08136990
	cmp r0, #0x00
	beq _08136996
	b _08136A08
	.byte 0x00, 0x00
_08136978: .4byte 0x00000239
_0813697C: .4byte 0x0000023E
_08136980: .4byte 0x00002710
_08136984: .4byte 0x00001387
_08136988: .4byte 0x00000193
_0813698C: .4byte 0x00000131
_08136990:
	cmp r0, #0x02
	beq _081369AA
	b _08136A08
_08136996:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	b _08136A08
_0813699C:
	movs r0, #0x08
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r0, [r3, #0x00]
	subs r0, #0x02
	strb r0, [r3, #0x00]
	b _08136A08
_081369AA:
	subs r0, r7, #0x1
	strb r0, [r3, #0x00]
	b _08136A08
_081369B0:
	adds r1, r6, #0x0
	adds r1, #0x93
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	adds r3, r1, #0x0
	cmp r0, #0x00
	bge _08136A08
	adds r2, r6, #0x0
	adds r2, #0x30
	ldrb r1, [r2, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _081369EC
	cmp r0, #0x01
	bgt _081369DA
	cmp r0, #0x00
	beq _081369E0
	b _08136A08
_081369DA:
	cmp r0, #0x02
	beq _081369FC
	b _08136A08
_081369E0:
	adds r0, r6, #0x0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	strb r0, [r3, #0x00]
	b _08136A08
_081369EC:
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	adds r0, #0x02
	strb r0, [r3, #0x00]
	b _08136A08
_081369FC:
	movs r0, #0x00
	strb r0, [r3, #0x00]
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
_08136A08:
	ldrb r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x92
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r1, r1, #0x01
	adds r0, r6, #0x0
	adds r0, #0x32
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x01
	add r4, r8
	strh r0, [r4, #0x00]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r1, r1, #0x01
	adds r0, r6, #0x0
	adds r0, #0x52
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x01
	add r3, r8
	strh r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08136A48
	adds r1, #0xFF
_08136A48:
	asrs r1, r1, #0x08
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r8
	strh r1, [r0, #0x00]
	movs r7, #0x00
	ldsh r2, [r4, r7]
	lsls r2, r2, #0x08
	movs r0, #0x00
	ldsh r3, [r3, r0]
	lsls r3, r3, #0x08
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r5, #0x0
	bl sub_81382A8
	ldr r0, _08136A80 @ =0x08139759
	mov r1, r9
	str r0, [r1, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136A80: .4byte sub_8139758
	thumb_func_start sub_8136A84
sub_8136A84:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r5, #0x00
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08136AA0
	adds r0, r4, #0x0
	bl sub_81381D4
	b _08136AB4
_08136AA0:
	movs r1, #0x00
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _08136AB2
	movs r1, #0x01
_08136AB2:
	adds r5, r1, #0x0
_08136AB4:
	ldr r1, _08136ACC @ =0x000002B5
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08136AD0
	adds r0, r4, #0x0
	bl sub_81385A8
	b _08136ADE
	.byte 0x00, 0x00
_08136ACC: .4byte 0x000002B5
_08136AD0:
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08136ADE:
	cmp r5, #0x00
	beq _08136B28
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08136B24
	ldr r1, _08136B1C @ =0x00000137
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1D
	adds r0, r4, #0x0
	bl sub_8047364
	ldr r0, _08136B20 @ =0x0813B1E9
	b _08136B26
	.byte 0x00, 0x00
_08136B1C: .4byte 0x00000137
_08136B20: .4byte sub_813B1E8
_08136B24:
	ldr r0, [r6, #0x04]
_08136B26:
	str r0, [r6, #0x00]
_08136B28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8136B30
sub_8136B30:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08136B5A
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08136B5A:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	ldr r2, _08136B94 @ =0x083A05EC
	ldr r1, _08136B98 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08136BCC
	cmp r0, #0x01
	bgt _08136B9C
	cmp r0, #0x00
	beq _08136BA0
	b _08136BCC
	.byte 0x00, 0x00
_08136B94: .4byte 0x083A05EC
_08136B98: .4byte 0x00000216
_08136B9C:
	cmp r0, #0x02
	bne _08136BCC
_08136BA0:
	ldr r1, [r4, #0x0C]
	ldr r0, [r3, #0x0C]
	cmp r1, r0
	ble _08136BAE
	movs r2, #0x80
	lsls r2, r2, #0x18
	b _08136BB4
_08136BAE:
	cmp r1, r0
	bge _08136BC4
	ldr r2, _08136BC0 @ =0x000FFFFF
_08136BB4:
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_81378CC
	b _08136C0E
_08136BC0: .4byte 0x000FFFFF
_08136BC4:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	b _08136BEE
_08136BCC:
	ldr r1, [r4, #0x10]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	ble _08136BE4
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_81378CC
	b _08136C0E
_08136BE4:
	cmp r1, r0
	blt _08136C02
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r2, r7, r1
_08136BEE:
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
	b _08136C2C
_08136C02:
	ldr r3, _08136C34 @ =0x000FFFFF
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_81378CC
_08136C0E:
	adds r0, r4, #0x0
	bl sub_81381D4
	ldr r0, _08136C38 @ =0x08136D81
	str r0, [r6, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_08136C2C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136C34: .4byte 0x000FFFFF
_08136C38: .4byte sub_8136D80
	thumb_func_start sub_8136C3C
sub_8136C3C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0x0
	mov r8, r2
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r5, [r0, #0x00]
	ldrb r4, [r5, #0x11]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1F
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8047364
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8047258
	adds r0, r5, #0x0
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r7, #0x01
	lsls r4, r4, #0x06
	ldrb r1, [r5, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0x11]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r6, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	adds r2, #0xAA
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08136CD4
	ldr r0, _08136CCC @ =0x0813B1A5
	mov r1, r8
	str r0, [r1, #0x00]
	subs r2, #0x26
	adds r1, r6, r2
	ldr r0, _08136CD0 @ =0x081392CD
	str r0, [r1, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08136CF2
_08136CCC: .4byte sub_813B1A4
_08136CD0: .4byte sub_81392CC
_08136CD4:
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _08136CFC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08136CF2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136CFC: .4byte 0x0000FBFF
	thumb_func_start sub_8136D00
sub_8136D00:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	bl sub_81390AC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r2, #0x94
	lsls r2, r2, #0x01
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	movs r1, #0xE9
	lsls r1, r1, #0x01
	adds r3, r4, r1
	strh r0, [r3, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	orrs r1, r0
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	strb r1, [r2, #0x00]
	ldrh r0, [r3, #0x00]
	cmp r0, #0x00
	beq _08136D5C
	ldr r0, _08136D58 @ =0x0813B1E9
	str r0, [r5, #0x00]
	movs r2, #0xD6
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r5, #0x04]
	str r0, [r1, #0x00]
	b _08136D74
	.byte 0x00, 0x00
_08136D58: .4byte sub_813B1E8
_08136D5C:
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _08136D7C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #0x00]
_08136D74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08136D7C: .4byte 0x0000FBFF
	thumb_func_start sub_8136D80
sub_8136D80:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	beq _08136D98
	b _08136EDC
_08136D98:
	adds r0, r4, #0x0
	bl sub_81381D4
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08136DBC
	mov r1, sp
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_08136DBC:
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	ldr r2, _08136DF4 @ =0x083A05EC
	ldr r1, _08136DF8 @ =0x00000216
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x01
	beq _08136E6C
	cmp r0, #0x01
	bgt _08136DFC
	cmp r0, #0x00
	beq _08136E00
	b _08136E6C
_08136DF4: .4byte 0x083A05EC
_08136DF8: .4byte 0x00000216
_08136DFC:
	cmp r0, #0x02
	bne _08136E6C
_08136E00:
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r4, r2
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	blt _08136E1C
	ldr r0, [r4, #0x0C]
	ldr r3, [r3, #0x0C]
	cmp r0, r3
	blt _08136EF4
	movs r0, #0x00
	ldsh r2, [r1, r0]
	b _08136E2A
_08136E1C:
	ldr r0, [r4, #0x0C]
	ldr r3, [r3, #0x0C]
	cmp r0, r3
	bge _08136EF4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r2, r0
_08136E2A:
	ldr r0, [r4, #0x34]
	subs r1, r0, r2
	adds r5, r0, #0x0
	cmp r1, r3
	bge _08136E44
	adds r0, r5, r2
	cmp r0, r3
	ble _08136E44
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	b _08136E56
_08136E44:
	movs r2, #0xB3
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r2, #0x0C
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r5, r0
	str r0, [r1, #0x00]
_08136E56:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x0C]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	b _08136EF4
_08136E6C:
	ldr r0, _08136E88 @ =0x000002DA
	adds r1, r4, r0
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	blt _08136E8C
	ldr r0, [r4, #0x10]
	ldr r3, [r3, #0x10]
	cmp r0, r3
	blt _08136EF4
	movs r0, #0x00
	ldsh r2, [r1, r0]
	b _08136E9A
	.byte 0x00, 0x00
_08136E88: .4byte 0x000002DA
_08136E8C:
	ldr r0, [r4, #0x10]
	ldr r3, [r3, #0x10]
	cmp r0, r3
	bge _08136EF4
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r2, r0
_08136E9A:
	ldr r0, [r4, #0x38]
	subs r1, r0, r2
	adds r5, r0, #0x0
	cmp r1, r3
	bge _08136EB4
	adds r0, r5, r2
	cmp r0, r3
	ble _08136EB4
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	b _08136EC6
_08136EB4:
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r2, #0x0A
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r5, r0
	str r0, [r1, #0x00]
_08136EC6:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	b _08136EF4
_08136EDC:
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r6, #0x04]
	str r0, [r6, #0x00]
_08136EF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8136EFC
sub_8136EFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r7, r0
	movs r1, #0xE2
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xDC
	lsls r2, r2, #0x01
	adds r5, r7, r2
	strh r0, [r5, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x01
	adds r0, r7, r3
	ldrh r0, [r0, #0x00]
	movs r6, #0xDD
	lsls r6, r6, #0x01
	adds r6, r6, r7
	mov r8, r6
	strh r0, [r6, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r1, r7, r3
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r6, _08136FA8 @ =0x00000239
	adds r1, r7, r6
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r4, r4, r0
	ldrh r1, [r4, #0x00]
	ldr r2, _08136FAC @ =0x0000023E
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r3, #0x00
	ldsh r2, [r5, r3]
	lsls r2, r2, #0x08
	mov r6, r8
	movs r0, #0x00
	ldsh r3, [r6, r0]
	lsls r3, r3, #0x08
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8137A4C
	adds r0, r7, #0x0
	bl sub_81382A8
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08136FB0 @ =0x08139365
	mov r2, r9
	str r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08136FA8: .4byte 0x00000239
_08136FAC: .4byte 0x0000023E
_08136FB0: .4byte sub_8139364
	thumb_func_start sub_8136FB4
sub_8136FB4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081370B4
	adds r0, r4, #0x0
	bl sub_80473DC
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813704C @ =0x08139261
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x54
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	mov r8, r0
	ands r0, r1
	cmp r0, #0x00
	bne _08137050
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r6, #0x06
	ands r6, r0
	cmp r6, #0x00
	bne _08137050
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	mov r0, r8
	str r0, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
	b _081370AA
_0813704C: .4byte sub_8139260
_08137050:
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x30]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081370AA
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	movs r6, #0x06
	ands r6, r0
	cmp r6, #0x00
	bne _081370AA
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_804776C
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	ldr r3, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r3, r3, r0
	movs r0, #0x80
	lsls r0, r0, #0x05
	adds r3, r3, r0
	str r7, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_8047F60
_081370AA:
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	movs r0, #0x78
	strh r0, [r1, #0x00]
_081370B4:
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81370C4
sub_81370C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0x58
	add r0, r8
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x01
	add r4, r8
	mov r1, r8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _081370EC
	adds r0, #0xFF
_081370EC:
	asrs r6, r0, #0x08
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _081370F8
	adds r0, #0xFF
_081370F8:
	asrs r7, r0, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r1, #0x98
	lsls r1, r1, #0x01
	add r1, r8
	adds r1, r1, r0
	ldrh r1, [r1, #0x00]
	mov r9, r1
	cmp r5, #0x03
	bls _081371AA
	movs r0, #0x9B
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r0, [r0, #0x00]
	movs r3, #0x01
	adds r1, r3, #0x0
	ands r1, r0
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r1
	movs r5, #0x00
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r0, r7, r2
	mov r12, r0
	movs r1, #0x38
	ldsh r0, [r4, r1]
	cmp r12, r0
	ble _08137146
	movs r0, #0x00
	movs r5, #0x01
	str r0, [sp, #0x000]
_08137146:
	adds r0, r7, r2
	mov r12, r0
	movs r1, #0x3A
	ldsh r0, [r4, r1]
	cmp r12, r0
	bge _08137160
	adds r0, r5, #0x0
	adds r1, r0, #0x1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x02
	add r0, sp
	str r3, [r0, #0x00]
_08137160:
	subs r1, r6, r2
	movs r3, #0x3C
	ldsh r0, [r4, r3]
	cmp r1, r0
	ble _0813717A
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x02
	str r0, [r1, #0x00]
_0813717A:
	adds r1, r6, r2
	movs r2, #0x3E
	ldsh r0, [r4, r2]
	cmp r1, r0
	bge _08137194
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x03
	str r0, [r1, #0x00]
_08137194:
	cmp r5, #0x00
	beq _08137282
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	add r0, sp
	ldrh r5, [r0, #0x00]
_081371AA:
	lsrs r0, r5, #0x01
	muls r6, r0
	cmp r0, #0x00
	beq _081371B4
	movs r7, #0x00
_081371B4:
	cmp r5, #0x01
	beq _081371E2
	cmp r5, #0x01
	bgt _081371C2
	cmp r5, #0x00
	beq _081371CC
	b _08137222
_081371C2:
	cmp r5, #0x02
	beq _081371F8
	cmp r5, #0x03
	beq _0813720E
	b _08137222
_081371CC:
	mov r3, r9
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	subs r1, r7, r2
	movs r3, #0x38
	ldsh r0, [r4, r3]
	subs r7, r0, r7
	cmp r1, r0
	blt _08137222
	negs r7, r2
	b _08137222
_081371E2:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r7, r2
	movs r3, #0x3A
	ldsh r0, [r4, r3]
	subs r7, r0, r7
	cmp r1, r0
	bgt _08137222
	adds r7, r2, #0x0
	b _08137222
_081371F8:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	subs r1, r6, r2
	movs r3, #0x3C
	ldsh r0, [r4, r3]
	subs r6, r0, r6
	cmp r1, r0
	blt _08137222
	negs r6, r2
	b _08137222
_0813720E:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	adds r1, r6, r2
	movs r3, #0x3E
	ldsh r0, [r4, r3]
	subs r6, r0, r6
	cmp r1, r0
	bgt _08137222
	adds r6, r2, #0x0
_08137222:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	mov r12, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x01
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r0, _08137294 @ =0x00000239
	add r0, r8
	movs r2, #0x00
	mov r9, r2
	strb r3, [r0, #0x00]
	mov r2, r12
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r1, r4, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _08137298 @ =0x0000023E
	add r0, r8
	strh r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	strh r5, [r0, #0x00]
	movs r0, #0xB0
	lsls r0, r0, #0x01
	add r0, r10
	strh r6, [r0, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x01
	add r0, r10
	strh r7, [r0, #0x00]
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r10
	mov r3, r9
	strh r3, [r0, #0x00]
_08137282:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08137294: .4byte 0x00000239
_08137298: .4byte 0x0000023E
	thumb_func_start sub_813729C
sub_813729C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r5
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	ldr r6, _081373A0 @ =0x00000239
	adds r1, r5, r6
	strb r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	add r2, r8
	ldrh r2, [r2, #0x00]
	ldr r3, _081373A4 @ =0x0000023E
	adds r1, r5, r3
	strh r2, [r1, #0x00]
	movs r4, #0xE8
	lsls r4, r4, #0x01
	adds r1, r5, r4
	strh r0, [r1, #0x00]
	subs r6, #0xA7
	adds r4, r5, r6
	ldrb r0, [r4, #0x00]
	ldr r2, _081373A8 @ =0x00000193
	adds r1, r5, r2
	strb r0, [r1, #0x00]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	movs r3, #0x99
	lsls r3, r3, #0x01
	adds r0, r5, r3
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	adds r6, #0x26
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r1, #0x00
	ldsb r1, [r4, r1]
	lsls r1, r1, #0x01
	subs r2, #0x41
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r3, #0x88
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _0813732E
	adds r1, #0xFF
_0813732E:
	asrs r1, r1, #0x08
	movs r6, #0xDE
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r7, r5, r0
	ldrb r1, [r7, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r7, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x01
	adds r6, r5, r2
	ldrb r1, [r6, #0x00]
	movs r0, #0x0C
	ands r0, r1
	cmp r0, #0x00
	beq _08137372
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _081373E0
	bl sub_8199F30
	adds r1, r0, #0x0
	ldr r0, _081373AC @ =0x00002710
	bl sub_81DD77C
	ldr r1, _081373B0 @ =0x00001387
	cmp r0, r1
	bhi _081373E0
_08137372:
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	ldr r3, _081373B4 @ =0x00000131
	adds r1, r5, r3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r2, [r1, #0x00]
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	cmp r0, r1
	bne _08137436
	ldrb r1, [r6, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _081373C4
	cmp r0, #0x01
	bgt _081373B8
	cmp r0, #0x00
	beq _081373BE
	b _08137436
_081373A0: .4byte 0x00000239
_081373A4: .4byte 0x0000023E
_081373A8: .4byte 0x00000193
_081373AC: .4byte 0x00002710
_081373B0: .4byte 0x00001387
_081373B4: .4byte 0x00000131
_081373B8:
	cmp r0, #0x02
	beq _081373D2
	b _08137436
_081373BE:
	movs r0, #0x00
	strb r0, [r4, #0x00]
	b _08137436
_081373C4:
	movs r0, #0x08
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldrb r0, [r4, #0x00]
	subs r0, #0x02
	strb r0, [r4, #0x00]
	b _08137436
_081373D2:
	subs r0, r2, #0x1
	strb r0, [r4, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r7, #0x00]
	b _08137436
_081373E0:
	mov r1, r8
	adds r1, #0x92
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _08137436
	mov r2, r8
	adds r2, #0x30
	ldrb r3, [r2, #0x00]
	lsls r0, r3, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _0813741A
	cmp r0, #0x01
	bgt _08137408
	cmp r0, #0x00
	beq _0813740E
	b _08137436
_08137408:
	cmp r0, #0x02
	beq _0813742A
	b _08137436
_0813740E:
	mov r0, r8
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	b _08137436
_0813741A:
	movs r0, #0x09
	negs r0, r0
	ands r0, r3
	strb r0, [r2, #0x00]
	ldrb r0, [r1, #0x00]
	adds r0, #0x02
	strb r0, [r1, #0x00]
	b _08137436
_0813742A:
	movs r0, #0x00
	strb r0, [r1, #0x00]
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
_08137436:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8137440
sub_8137440:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r2, r5, r1
	lsls r0, r0, #0x01
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r1, r5, r3
	adds r1, r1, r0
	movs r4, #0x00
	ldsh r0, [r1, r4]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r3, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r0, #0x01
	movs r4, #0x84
	lsls r4, r4, #0x01
	adds r1, r5, r4
	adds r1, r1, r2
	ldrh r4, [r1, #0x00]
	adds r3, #0x20
	strb r4, [r3, #0x00]
	ldr r3, _081374CC @ =0x00000239
	adds r1, r5, r3
	strb r4, [r1, #0x00]
	adds r2, r6, r2
	ldrh r2, [r2, #0x00]
	ldr r4, _081374D0 @ =0x0000023E
	adds r1, r5, r4
	strh r2, [r1, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _081374D4
	mov r1, sp
	movs r0, #0x00
	strb r0, [r1, #0x00]
	movs r0, #0x04
	b _081374DC
_081374CC: .4byte 0x00000239
_081374D0: .4byte 0x0000023E
_081374D4:
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r1, sp
	movs r0, #0x06
_081374DC:
	strb r0, [r1, #0x01]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	add r0, sp
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80478AC
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldr r0, [r5, #0x0C]
	str r0, [r2, #0x00]
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r5, r4
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _08137530
	cmp r0, #0x02
	bhi _08137520
	cmp r0, #0x00
	beq _0813752A
	b _08137548
_08137520:
	cmp r0, #0x04
	beq _08137536
	cmp r0, #0x06
	beq _08137540
	b _08137548
_0813752A:
	movs r2, #0x38
	ldsh r0, [r6, r2]
	b _0813753A
_08137530:
	movs r3, #0x3E
	ldsh r0, [r6, r3]
	b _08137544
_08137536:
	movs r4, #0x3A
	ldsh r0, [r6, r4]
_0813753A:
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	b _08137548
_08137540:
	movs r1, #0x3C
	ldsh r0, [r6, r1]
_08137544:
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
_08137548:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8137550
sub_8137550:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	adds r0, #0x58
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x01
	add r2, r9
	str r2, [sp, #0x014]
	mov r3, r9
	ldr r0, [r3, #0x0C]
	cmp r0, #0x00
	bge _08137574
	adds r0, #0xFF
_08137574:
	asrs r6, r0, #0x08
	mov r4, r9
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137580
	adds r0, #0xFF
_08137580:
	asrs r7, r0, #0x08
	ldr r2, [r1, #0x10]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0813758C
	adds r0, #0xFF
_0813758C:
	asrs r3, r0, #0x08
	ldr r4, [sp, #0x014]
	ldrh r0, [r4, #0x38]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r2, [sp, #0x014]
	ldrh r0, [r2, #0x3A]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, [r1, #0x0C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _081375B0
	adds r0, #0xFF
_081375B0:
	asrs r2, r0, #0x08
	ldr r3, [sp, #0x014]
	ldrh r0, [r3, #0x3C]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x018]
	ldr r4, [sp, #0x014]
	ldrh r0, [r4, #0x3E]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	movs r1, #0x98
	lsls r1, r1, #0x01
	add r1, r9
	adds r1, r1, r0
	movs r0, #0x9B
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r2, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r2
	movs r2, #0x00
	ldsh r4, [r1, r2]
	muls r0, r4
	movs r5, #0x00
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r0, r7, r2
	mov r12, r0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x020]
	cmp r12, r0
	ble _08137610
	movs r0, #0x00
	movs r5, #0x01
	str r0, [sp, #0x000]
_08137610:
	adds r0, r7, r2
	mov r8, r0
	mov r1, r10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x024]
	cmp r8, r0
	bge _0813762E
	adds r0, r5, #0x0
	adds r1, r0, #0x1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x02
	add r0, sp
	str r3, [r0, #0x00]
_0813762E:
	subs r1, r6, r2
	ldr r3, [sp, #0x018]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	cmp r1, r10
	ble _0813764C
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x02
	str r0, [r1, #0x00]
_0813764C:
	adds r1, r6, r2
	ldr r2, [sp, #0x01C]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	cmp r1, r8
	bge _0813766A
	adds r1, r5, #0x0
	adds r0, r1, #0x1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x02
	add r1, sp
	movs r0, #0x03
	str r0, [r1, #0x00]
_0813766A:
	cmp r5, #0x00
	beq _08137734
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	lsls r0, r0, #0x02
	add r0, sp
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsrs r0, r0, #0x11
	muls r6, r0
	cmp r0, #0x00
	beq _0813768E
	movs r7, #0x00
_0813768E:
	cmp r5, #0x01
	beq _081376B4
	cmp r5, #0x01
	bgt _0813769C
	cmp r5, #0x00
	beq _081376A6
	b _081376DC
_0813769C:
	cmp r5, #0x02
	beq _081376C2
	cmp r5, #0x03
	beq _081376D0
	b _081376DC
_081376A6:
	subs r0, r7, r4
	ldr r3, [sp, #0x020]
	subs r7, r3, r7
	cmp r0, r3
	blt _081376DC
	negs r7, r4
	b _081376DC
_081376B4:
	adds r0, r7, r4
	ldr r1, [sp, #0x024]
	subs r7, r1, r7
	cmp r0, r1
	bgt _081376DC
	adds r7, r4, #0x0
	b _081376DC
_081376C2:
	subs r0, r6, r4
	mov r2, r10
	subs r6, r2, r6
	cmp r0, r10
	blt _081376DC
	negs r6, r4
	b _081376DC
_081376D0:
	adds r0, r6, r4
	mov r3, r8
	subs r6, r3, r6
	cmp r0, r8
	bgt _081376DC
	adds r6, r4, #0x0
_081376DC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	add r1, r9
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r5, #0x01
	ldr r0, [sp, #0x014]
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r0, _08137744 @ =0x00000239
	add r0, r9
	movs r4, #0x00
	strb r3, [r0, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	ldr r0, [sp, #0x014]
	adds r1, r0, r1
	ldrh r1, [r1, #0x00]
	ldr r0, _08137748 @ =0x0000023E
	add r0, r9
	strh r1, [r0, #0x00]
	ldr r1, [sp, #0x010]
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r1, r2
	strh r5, [r0, #0x00]
	movs r3, #0xB0
	lsls r3, r3, #0x01
	adds r0, r1, r3
	strh r6, [r0, #0x00]
	subs r2, #0x16
	adds r0, r1, r2
	strh r7, [r0, #0x00]
	adds r3, #0x04
	adds r0, r1, r3
	strh r4, [r0, #0x00]
_08137734:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08137744: .4byte 0x00000239
_08137748: .4byte 0x0000023E
	thumb_func_start sub_813774C
sub_813774C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	mov r8, r1
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r7
	mov r10, r1
	movs r2, #0xA3
	lsls r2, r2, #0x01
	adds r4, r7, r2
	adds r1, r4, #0x0
	movs r6, #0x08
	movs r5, #0x00
_08137776:
	movs r3, #0x00
	ldsh r0, [r1, r3]
	adds r5, r5, r0
	adds r1, #0x02
	lsls r0, r6, #0x10
	ldr r2, _081378B8 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _08137776
	movs r6, #0x00
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	bl sub_81DD77C
	adds r5, r0, #0x0
	movs r3, #0x00
	ldsh r0, [r4, r3]
	mov r1, r10
	adds r1, #0x3E
	str r1, [sp, #0x004]
	mov r2, r10
	adds r2, #0x08
	str r2, [sp, #0x000]
	cmp r5, r0
	ble _081377C4
_081377AE:
	subs r5, r5, r0
	adds r4, #0x02
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	lsrs r6, r0, #0x10
	movs r1, #0x00
	ldsh r0, [r4, r1]
	cmp r5, r0
	bgt _081377AE
_081377C4:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x20
	bl sub_81DD77C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x0B
	subs r1, #0x40
	mov r2, r8
	ldrb r2, [r2, #0x02]
	adds r1, r1, r2
	adds r1, r1, r0
	subs r1, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r3, [sp, #0x004]
	adds r0, r3, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	lsls r2, r0, #0x04
	adds r6, r2, #0x0
	mov r1, r8
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08137808
	adds r0, #0xFF
_08137808:
	asrs r4, r0, #0x08
	ldr r0, _081378BC @ =0x08198584
	movs r1, #0xFF
	ands r1, r5
	lsls r3, r1, #0x01
	adds r0, r3, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r2
	cmp r0, #0x00
	bge _08137822
	ldr r2, _081378C0 @ =0x00003FFF
	adds r0, r0, r2
_08137822:
	asrs r0, r0, #0x0E
	adds r0, r4, r0
	movs r1, #0xB0
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137838
	adds r0, #0xFF
_08137838:
	asrs r1, r0, #0x08
	ldr r0, _081378C4 @ =0x08198504
	adds r0, r3, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r6
	cmp r0, #0x00
	bge _0813784C
	ldr r3, _081378C0 @ =0x00003FFF
	adds r0, r0, r3
_0813784C:
	asrs r0, r0, #0x0E
	adds r0, r1, r0
	movs r2, #0xB1
	lsls r2, r2, #0x01
	add r2, r9
	strh r0, [r2, #0x00]
	ldr r1, [r7, #0x14]
	cmp r1, #0x00
	bge _08137860
	adds r1, #0xFF
_08137860:
	asrs r1, r1, #0x08
	movs r0, #0xB2
	lsls r0, r0, #0x01
	add r0, r9
	strh r1, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xBC
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	movs r4, #0xA5
	lsls r4, r4, #0x02
	adds r1, r7, r4
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x0F
	ldr r3, [sp, #0x000]
	adds r1, r3, r0
	ldrh r3, [r1, #0x00]
	subs r4, #0x5B
	adds r1, r7, r4
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	add r0, r10
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r2, _081378C8 @ =0x0000023E
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081378B8: .4byte 0xFFFF0000
_081378BC: .4byte 0x08198584
_081378C0: .4byte 0x00003FFF
_081378C4: .4byte 0x08198504
_081378C8: .4byte 0x0000023E
	thumb_func_start sub_81378CC
sub_81378CC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	adds r6, r4, #0x0
	adds r6, #0x58
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _081378E0
	adds r1, #0xFF
_081378E0:
	asrs r1, r1, #0x08
	movs r7, #0xE2
	lsls r7, r7, #0x01
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _081378F2
	adds r0, #0xFF
_081378F2:
	asrs r0, r0, #0x08
	movs r7, #0xE3
	lsls r7, r7, #0x01
	adds r1, r4, r7
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137908
	adds r1, #0xFF
_08137908:
	asrs r1, r1, #0x08
	movs r7, #0xE4
	lsls r7, r7, #0x01
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	cmp r5, #0x01
	bne _0813791E
	ldr r0, [r4, #0x0C]
	adds r2, r2, r0
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
_0813791E:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r4, r5
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	movs r7, #0xB3
	lsls r7, r7, #0x02
	adds r0, r4, r7
	str r2, [r0, #0x00]
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r4, r1
	str r3, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	cmp r2, r0
	ble _08137954
	ldr r2, _08137950 @ =0x0000023E
	adds r0, r4, r2
	ldrh r1, [r0, #0x00]
	b _0813796A
_08137950: .4byte 0x0000023E
_08137954:
	cmp r2, r0
	bge _08137968
	ldr r5, _08137964 @ =0x0000023E
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	negs r1, r0
	b _0813796A
	.byte 0x00, 0x00
_08137964: .4byte 0x0000023E
_08137968:
	movs r1, #0x00
_0813796A:
	ldr r7, _08137988 @ =0x00000242
	adds r0, r4, r7
	strh r1, [r0, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r3, r0
	ble _08137990
	ldr r3, _0813798C @ =0x0000023E
	adds r0, r4, r3
	ldrh r2, [r0, #0x00]
	b _081379A6
	.byte 0x00, 0x00
_08137988: .4byte 0x00000242
_0813798C: .4byte 0x0000023E
_08137990:
	cmp r3, r0
	bge _081379A4
	ldr r5, _081379A0 @ =0x0000023E
	adds r0, r4, r5
	ldrh r0, [r0, #0x00]
	negs r2, r0
	b _081379A6
	.byte 0x00, 0x00
_081379A0: .4byte 0x0000023E
_081379A4:
	movs r2, #0x00
_081379A6:
	movs r7, #0x91
	lsls r7, r7, #0x02
	adds r0, r4, r7
	movs r1, #0x00
	strh r2, [r0, #0x00]
	ldr r0, _081379E4 @ =0x000002DA
	adds r3, r4, r0
	strh r2, [r3, #0x00]
	ldr r2, _081379E8 @ =0x000002DE
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r5, #0xB6
	lsls r5, r5, #0x02
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081379EC
	movs r7, #0x00
	ldsh r0, [r2, r7]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _081379EE
	.byte 0x00, 0x00
_081379E4: .4byte 0x000002DA
_081379E8: .4byte 0x000002DE
_081379EC:
	movs r0, #0xFF
_081379EE:
	strb r0, [r4, #0x02]
	ldr r3, _08137A48 @ =0x03001038
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r4, r5
	movs r7, #0xAF
	lsls r7, r7, #0x02
	adds r1, r4, r7
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	subs r5, #0x0C
	adds r2, r4, r5
	ldr r1, [r1, #0x00]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	adds r7, r1, #0x0
	muls r7, r1
	adds r1, r7, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r2, #0xBA
	lsls r2, r2, #0x01
	adds r1, r6, r2
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08137A48: .4byte 0x03001038
	thumb_func_start sub_8137A4C
sub_8137A4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0x58
	adds r0, r0, r6
	mov r9, r0
	ldr r1, [r6, #0x0C]
	cmp r1, #0x00
	bge _08137A68
	adds r1, #0xFF
_08137A68:
	asrs r1, r1, #0x08
	movs r5, #0xE2
	lsls r5, r5, #0x01
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _08137A7A
	adds r0, #0xFF
_08137A7A:
	asrs r0, r0, #0x08
	movs r5, #0xE3
	lsls r5, r5, #0x01
	adds r1, r6, r5
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x14]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137A90
	adds r1, #0xFF
_08137A90:
	asrs r1, r1, #0x08
	movs r5, #0xE4
	lsls r5, r5, #0x01
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08137AA6
	ldr r0, [r6, #0x0C]
	adds r2, r2, r0
	ldr r0, [r6, #0x10]
	adds r3, r3, r0
_08137AA6:
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r1, r6, r5
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r2, [r0, #0x00]
	adds r5, #0x10
	adds r0, r6, r5
	str r3, [r0, #0x00]
	ldr r0, [r6, #0x0C]
	subs r0, r2, r0
	cmp r0, #0x00
	bge _08137AD2
	adds r0, #0x03
_08137AD2:
	asrs r0, r0, #0x02
	ldr r1, _08137B74 @ =0x00000242
	adds r1, r1, r6
	mov r8, r1
	strh r0, [r1, #0x00]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x10]
	subs r1, r3, r0
	cmp r1, #0x00
	bge _08137AEE
	adds r1, #0x03
_08137AEE:
	asrs r1, r1, #0x02
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r7, r6, r3
	strh r1, [r7, #0x00]
	ldr r5, _08137B78 @ =0x000002DA
	adds r0, r6, r5
	strh r1, [r0, #0x00]
	ldr r5, _08137B7C @ =0x03001038
	mov r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r3, r0, #0x0
	muls r3, r0
	adds r0, r3, #0x0
	movs r2, #0x00
	ldsh r1, [r7, r2]
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	bl _call_via_r1
	adds r4, r0, #0x0
	ldr r0, _08137B80 @ =0x0819832C
	ldr r1, _08137B84 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r5, #0x00]
	adds r2, r2, r0
	ldr r5, _08137B88 @ =0x0000023E
	adds r0, r6, r5
	movs r3, #0x00
	ldsh r1, [r0, r3]
	adds r0, r4, #0x0
	bl _call_via_r2
	lsls r0, r0, #0x02
	adds r5, #0xA2
	adds r1, r6, r5
	strh r0, [r1, #0x00]
	movs r1, #0xE6
	lsls r1, r1, #0x01
	adds r0, r6, r1
	lsls r4, r4, #0x02
	str r4, [r0, #0x00]
	ldr r2, _08137B8C @ =0x000002DE
	adds r1, r6, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r7, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08137B90
	movs r5, #0x00
	ldsh r0, [r3, r5]
	movs r2, #0x00
	ldsh r1, [r7, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08137B92
_08137B74: .4byte 0x00000242
_08137B78: .4byte 0x000002DA
_08137B7C: .4byte 0x03001038
_08137B80: .4byte 0x0819832C
_08137B84: .4byte 0x08198220
_08137B88: .4byte 0x0000023E
_08137B8C: .4byte 0x000002DE
_08137B90:
	movs r0, #0xFF
_08137B92:
	strb r0, [r6, #0x02]
	mov r2, r9
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_8137BB0
sub_8137BB0:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _08137BC0
	adds r1, #0xFF
_08137BC0:
	asrs r1, r1, #0x08
	movs r6, #0xE2
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08137BD2
	adds r0, #0xFF
_08137BD2:
	asrs r0, r0, #0x08
	movs r6, #0xE3
	lsls r6, r6, #0x01
	adds r1, r5, r6
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137BE8
	adds r1, #0xFF
_08137BE8:
	asrs r1, r1, #0x08
	movs r6, #0xE4
	lsls r6, r6, #0x01
	adds r0, r5, r6
	strh r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08137BFE
	ldr r0, [r5, #0x0C]
	adds r2, r2, r0
	ldr r0, [r5, #0x10]
	adds r3, r3, r0
_08137BFE:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r5, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r6, #0xB4
	lsls r6, r6, #0x02
	adds r1, r5, r6
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r5, r1
	str r2, [r0, #0x00]
	subs r6, #0x10
	adds r0, r5, r6
	str r3, [r0, #0x00]
	ldr r4, _08137CC4 @ =0x03001038
	ldr r0, [r5, #0x0C]
	subs r2, r2, r0
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _08137C2E
	adds r0, r2, #0x3
_08137C2E:
	asrs r0, r0, #0x02
	muls r0, r2
	cmp r0, #0x00
	bge _08137C38
	adds r0, #0x03
_08137C38:
	asrs r2, r0, #0x02
	ldr r0, [r5, #0x10]
	subs r3, r3, r0
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08137C46
	adds r0, r3, #0x3
_08137C46:
	asrs r0, r0, #0x02
	muls r0, r3
	cmp r0, #0x00
	bge _08137C50
	adds r0, #0x03
_08137C50:
	asrs r0, r0, #0x02
	adds r0, r2, r0
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r0, _08137CC8 @ =0x0000023E
	adds r2, r5, r0
	ldrh r3, [r2, #0x00]
	movs r6, #0xB6
	lsls r6, r6, #0x02
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	ldrh r3, [r2, #0x00]
	subs r6, #0x96
	adds r0, r5, r6
	strh r3, [r0, #0x00]
	movs r0, #0x00
	ldsh r3, [r2, r0]
	lsls r1, r1, #0x03
	adds r1, r3, r1
	ldr r0, _08137CCC @ =0x0819832C
	ldr r2, _08137CD0 @ =0x08198220
	subs r0, r0, r2
	ldr r4, [r4, #0x00]
	adds r4, r4, r0
	negs r0, r3
	muls r0, r3
	lsrs r2, r1, #0x1F
	adds r2, r1, r2
	asrs r2, r2, #0x01
	adds r0, r0, r2
	bl _call_via_r4
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r5, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08137CA6
	movs r0, #0x01
	str r0, [r1, #0x00]
_08137CA6:
	ldr r3, _08137CD4 @ =0x000002DE
	adds r1, r5, r3
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x04
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08137CC4: .4byte 0x03001038
_08137CC8: .4byte 0x0000023E
_08137CCC: .4byte 0x0819832C
_08137CD0: .4byte 0x08198220
_08137CD4: .4byte 0x000002DE
	thumb_func_start sub_8137CD8
sub_8137CD8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r12, r1
	adds r7, r4, #0x0
	adds r7, #0x58
	ldr r1, [r4, #0x0C]
	cmp r1, #0x00
	bge _08137CEE
	adds r1, #0xFF
_08137CEE:
	asrs r1, r1, #0x08
	movs r5, #0xE2
	lsls r5, r5, #0x01
	adds r0, r4, r5
	movs r5, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08137D02
	adds r0, #0xFF
_08137D02:
	asrs r0, r0, #0x08
	movs r6, #0xE3
	lsls r6, r6, #0x01
	adds r1, r4, r6
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _08137D18
	adds r1, #0xFF
_08137D18:
	asrs r1, r1, #0x08
	movs r6, #0xE4
	lsls r6, r6, #0x01
	adds r0, r4, r6
	strh r1, [r0, #0x00]
	mov r0, r12
	cmp r0, #0x01
	bne _08137D30
	ldr r0, [r4, #0x0C]
	adds r2, r2, r0
	ldr r0, [r4, #0x10]
	adds r3, r3, r0
_08137D30:
	movs r6, #0xAF
	lsls r6, r6, #0x02
	adds r1, r4, r6
	str r5, [r1, #0x00]
	adds r6, #0x04
	adds r0, r4, r6
	str r5, [r0, #0x00]
	adds r6, #0x0C
	adds r0, r4, r6
	str r2, [r0, #0x00]
	adds r6, #0x04
	adds r0, r4, r6
	str r3, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	cmp r2, r0
	ble _08137D5C
	ldr r1, _08137D58 @ =0x0000023E
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	b _08137D74
_08137D58: .4byte 0x0000023E
_08137D5C:
	cmp r2, r0
	bge _08137D70
	ldr r2, _08137D6C @ =0x0000023E
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	negs r1, r0
	b _08137D74
	.byte 0x00, 0x00
_08137D6C: .4byte 0x0000023E
_08137D70:
	str r5, [r1, #0x00]
	movs r1, #0x00
_08137D74:
	ldr r5, _08137D90 @ =0x00000242
	adds r0, r4, r5
	strh r1, [r0, #0x00]
	movs r6, #0xB6
	lsls r6, r6, #0x02
	adds r0, r4, r6
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	cmp r3, r0
	ble _08137D98
	ldr r1, _08137D94 @ =0x0000023E
	adds r0, r4, r1
	ldrh r2, [r0, #0x00]
	b _08137DB8
_08137D90: .4byte 0x00000242
_08137D94: .4byte 0x0000023E
_08137D98:
	cmp r3, r0
	bge _08137DAC
	ldr r2, _08137DA8 @ =0x0000023E
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	negs r2, r0
	b _08137DB8
	.byte 0x00, 0x00
_08137DA8: .4byte 0x0000023E
_08137DAC:
	movs r3, #0xB0
	lsls r3, r3, #0x02
	adds r1, r4, r3
	movs r0, #0x00
	str r0, [r1, #0x00]
	movs r2, #0x00
_08137DB8:
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r0, r4, r5
	movs r1, #0x00
	strh r2, [r0, #0x00]
	ldr r6, _08137DF4 @ =0x000002DA
	adds r3, r4, r6
	strh r2, [r3, #0x00]
	ldr r2, _08137DF8 @ =0x000002DE
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	adds r5, #0x94
	adds r2, r4, r5
	ldrh r0, [r2, #0x00]
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _08137DFC
	movs r6, #0x00
	ldsh r0, [r2, r6]
	movs r2, #0x00
	ldsh r1, [r3, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08137DFE
	.byte 0x00, 0x00
_08137DF4: .4byte 0x000002DA
_08137DF8: .4byte 0x000002DE
_08137DFC:
	movs r0, #0xFF
_08137DFE:
	strb r0, [r4, #0x02]
	ldr r3, _08137E4C @ =0x03001038
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r4, r5
	ldr r0, [r0, #0x00]
	ldr r1, [r4, #0x0C]
	subs r0, r0, r1
	adds r6, r0, #0x0
	muls r6, r0
	adds r0, r6, #0x0
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	ldr r2, [r4, #0x10]
	subs r1, r1, r2
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	movs r6, #0xBA
	lsls r6, r6, #0x01
	adds r1, r7, r6
	str r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08137E4C: .4byte 0x03001038
	thumb_func_start sub_8137E50
sub_8137E50:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _08137E62
	b _08137F5A
_08137E62:
	lsls r0, r0, #0x02
	ldr r1, _08137E6C @ =0x08137E70
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08137E6C: .4byte 0x08137E70
	.byte 0x90, 0x7E, 0x13, 0x08, 0xA8, 0x7E, 0x13, 0x08, 0xBC, 0x7E, 0x13, 0x08, 0xD4, 0x7E, 0x13, 0x08
	.byte 0xE8, 0x7E, 0x13, 0x08, 0x00, 0x7F, 0x13, 0x08, 0x20, 0x7F, 0x13, 0x08, 0x40, 0x7F, 0x13, 0x08
	.byte 0xB6, 0x20, 0x80, 0x00, 0x19, 0x18, 0x00, 0x20, 0x08, 0x80, 0x02, 0x49, 0x58, 0x18, 0x00, 0x88
	.byte 0x57, 0xE0, 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00, 0x03, 0x4C, 0x1A, 0x19, 0x11, 0x88, 0x9A, 0x34
	.byte 0x18, 0x19, 0x01, 0x80, 0x4C, 0xE0, 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00, 0x04, 0x4C, 0x18, 0x19
	.byte 0x01, 0x88, 0xB6, 0x22, 0x92, 0x00, 0x98, 0x18, 0x00, 0x22, 0x01, 0x80, 0x31, 0xE0, 0x00, 0x00
	.byte 0x3E, 0x02, 0x00, 0x00, 0x03, 0x48, 0x1A, 0x18, 0x11, 0x88, 0xB6, 0x24, 0xA4, 0x00, 0x18, 0x19
	.byte 0x01, 0x80, 0x14, 0xE0, 0x3E, 0x02, 0x00, 0x00, 0xB6, 0x24, 0xA4, 0x00, 0x19, 0x19, 0x00, 0x20
	.byte 0x08, 0x80, 0x02, 0x49, 0x58, 0x18, 0x01, 0x88, 0x0A, 0xE0, 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00
	.byte 0x05, 0x4C, 0x1A, 0x19, 0x10, 0x88, 0x40, 0x42, 0x9A, 0x34, 0x19, 0x19, 0x08, 0x80, 0x11, 0x88
	.byte 0x02, 0x4A, 0x98, 0x18, 0x01, 0x80, 0x20, 0xE0, 0x3E, 0x02, 0x00, 0x00, 0xDA, 0x02, 0x00, 0x00
	.byte 0x06, 0x4C, 0x18, 0x19, 0x00, 0x88, 0x40, 0x42, 0xB6, 0x22, 0x92, 0x00, 0x99, 0x18, 0x00, 0x22
	.byte 0x08, 0x80, 0x9C, 0x34, 0x18, 0x19, 0x02, 0x80, 0x0F, 0xE0, 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00
	.byte 0x14, 0x48, 0x1A, 0x18, 0x10, 0x88, 0x40, 0x42, 0xB6, 0x24, 0xA4, 0x00, 0x19, 0x19, 0x08, 0x80
	.byte 0x10, 0x88, 0x40, 0x42, 0x10, 0x4A, 0x99, 0x18, 0x08, 0x80
_08137F5A:
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r0, r3, r4
	ldrh r1, [r0, #0x00]
	ldr r2, _08137F9C @ =0x00000242
	adds r0, r3, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r4, #0x02
	adds r0, r3, r4
	ldrh r1, [r0, #0x00]
	subs r4, #0x96
	adds r0, r3, r4
	strh r1, [r0, #0x00]
	ldr r1, _08137FA0 @ =0x000002DE
	adds r0, r3, r1
	strh r2, [r0, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00, 0xDA, 0x02, 0x00, 0x00
_08137F9C: .4byte 0x00000242
_08137FA0: .4byte 0x000002DE
	thumb_func_start sub_8137FA4
sub_8137FA4:
	push {r4, r5, lr}
	mov r12, r0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x90
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	movs r5, #0x97
	lsls r5, r5, #0x02
	add r5, r12
	ldr r1, [r5, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08138050
	cmp r4, #0x00
	beq _08138040
	ldr r2, _08138034 @ =0x000002B6
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xDF
	lsls r0, r0, #0x01
	add r0, r12
	movs r3, #0x00
	strh r4, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0xE6
	lsls r0, r0, #0x01
	add r0, r12
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	add r2, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	add r1, r12
	mov r2, r12
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	add r1, r12
	ldr r0, _08138038 @ =0x0000023E
	add r0, r12
	movs r4, #0x00
	ldsh r0, [r0, r4]
	str r0, [r1, #0x00]
	str r3, [r5, #0x00]
	ldr r2, _0813803C @ =0x000002B5
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	b _0813804C
_08138034: .4byte 0x000002B6
_08138038: .4byte 0x0000023E
_0813803C: .4byte 0x000002B5
_08138040:
	ldr r2, _08138058 @ =0x000002B6
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
_0813804C:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08138050:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138058: .4byte 0x000002B6
	thumb_func_start sub_813805C
sub_813805C:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	adds r2, #0x08
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r6, r3, r0
	ldr r1, [r6, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08138104
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0x0
	orrs r0, r5
	cmp r0, #0x00
	beq _081380F4
	ldr r1, _081380EC @ =0x000002B6
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r1, r3, r0
	adds r2, #0x08
	adds r0, r3, r2
	str r4, [r0, #0x00]
	str r4, [r1, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r3, r1
	str r5, [r0, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	ldr r0, _081380F0 @ =0x000002B5
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	b _08138100
	.byte 0x00, 0x00
_081380EC: .4byte 0x000002B6
_081380F0: .4byte 0x000002B5
_081380F4:
	ldr r1, _0813810C @ =0x000002B6
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
_08138100:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08138104:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813810C: .4byte 0x000002B6
	.byte 0xF0, 0xB5, 0x05, 0x1C, 0x97, 0x20, 0x80, 0x00, 0x2F, 0x18, 0x39, 0x68, 0x01, 0x20, 0x40, 0x42
	.byte 0x81, 0x42, 0x51, 0xD1, 0xE6, 0x21, 0x49, 0x00, 0x6E, 0x18, 0x30, 0x68, 0x00, 0x28, 0x43, 0xD0
	.byte 0x1F, 0x4B, 0xEA, 0x18, 0x11, 0x78, 0x7F, 0x20, 0x08, 0x40, 0x41, 0x21, 0x49, 0x42, 0x08, 0x40
	.byte 0x10, 0x70, 0x69, 0x69, 0xA8, 0x69, 0x09, 0x18, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12
	.byte 0xDE, 0x20, 0x40, 0x00, 0x2A, 0x18, 0x10, 0x88, 0x09, 0x1A, 0xDF, 0x23, 0x5B, 0x00, 0xE8, 0x18
	.byte 0x00, 0x23, 0x01, 0x80, 0xE0, 0x20, 0x40, 0x00, 0x2C, 0x18, 0x30, 0x68, 0x40, 0x00, 0x20, 0x60
	.byte 0x93, 0x26, 0xB6, 0x00, 0xA9, 0x19, 0x00, 0x26, 0x90, 0x5F, 0x00, 0x02, 0x08, 0x60, 0x94, 0x21
	.byte 0x89, 0x00, 0x68, 0x18, 0x03, 0x60, 0x95, 0x23, 0x9B, 0x00, 0xEA, 0x18, 0x09, 0x4E, 0xA8, 0x19
	.byte 0x00, 0x23, 0xC1, 0x5E, 0xC8, 0x0F, 0x09, 0x18, 0x49, 0x10, 0x11, 0x60, 0xC9, 0x00, 0x20, 0x68
	.byte 0xA2, 0xF0, 0x80, 0xFC, 0x38, 0x60, 0x77, 0x36, 0xAA, 0x19, 0x10, 0x78, 0x08, 0x21, 0x09, 0xE0
	.byte 0xB6, 0x02, 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00, 0x05, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x80, 0x21
	.byte 0x08, 0x43, 0x40, 0x21, 0x08, 0x43, 0x10, 0x70, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xB6, 0x02, 0x00, 0x00
	thumb_func_start sub_81381D4
sub_81381D4:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r1, _08138298 @ =0x00000216
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138292
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r2, r3, r4
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	ldr r1, _0813829C @ =0x000002DA
	adds r0, r3, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, _081382A0 @ =0x000002DE
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r2, [r2, r1]
	cmp r2, #0x00
	ble _0813822A
	ldr r0, [r3, #0x0C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138244
_0813822A:
	cmp r2, #0x00
	bge _08138240
	ldr r0, [r3, #0x0C]
	ldr r1, _081382A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138244
_08138240:
	cmp r2, #0x00
	bne _0813824E
_08138244:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x0C]
_0813824E:
	ldr r4, _0813829C @ =0x000002DA
	adds r0, r3, r4
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	ble _0813826E
	ldr r0, [r3, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138288
_0813826E:
	cmp r2, #0x00
	bge _08138284
	ldr r0, [r3, #0x10]
	ldr r1, _081382A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138288
_08138284:
	cmp r2, #0x00
	bne _08138292
_08138288:
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x10]
_08138292:
	pop {r4}
	pop {r0}
	bx r0
_08138298: .4byte 0x00000216
_0813829C: .4byte 0x000002DA
_081382A0: .4byte 0x000002DE
_081382A4: .4byte 0xFFFFFF00
	thumb_func_start sub_81382A8
sub_81382A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	ldr r1, _081382E8 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138348
	ldr r2, _081382EC @ =0x000002DE
	adds r7, r6, r2
	ldrh r0, [r7, #0x00]
	adds r0, #0x01
	strh r0, [r7, #0x00]
	movs r3, #0xB8
	lsls r3, r3, #0x02
	adds r5, r6, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0x00]
	cmp r0, r1
	bcc _081382F0
	subs r2, #0x12
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x0C]
	subs r3, #0x10
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	b _08138346
_081382E8: .4byte 0x00000216
_081382EC: .4byte 0x000002DE
_081382F0:
	ldr r0, _08138354 @ =0x03001038
	mov r8, r0
	ldr r4, _08138358 @ =0x0819832C
	ldr r0, _0813835C @ =0x08198220
	subs r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldrh r1, [r7, #0x00]
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	lsls r0, r0, #0x02
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r6, #0x0C]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldrh r1, [r7, #0x00]
	ldr r3, _08138360 @ =0x000002DA
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	lsls r0, r0, #0x02
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
_08138346:
	str r0, [r6, #0x10]
_08138348:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138354: .4byte 0x03001038
_08138358: .4byte 0x0819832C
_0813835C: .4byte 0x08198220
_08138360: .4byte 0x000002DA
	thumb_func_start sub_8138364
sub_8138364:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r1, _08138478 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138466
	ldr r2, _0813847C @ =0x000002DE
	adds r1, r7, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	subs r2, #0x12
	adds r2, r7, r2
	str r2, [sp, #0x000]
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081383A2
	adds r0, #0x03
_081383A2:
	asrs r3, r0, #0x02
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r2, r2, r7
	mov r10, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081383BE
	adds r0, #0x03
_081383BE:
	asrs r5, r0, #0x02
	adds r0, r3, #0x0
	orrs r0, r5
	cmp r0, #0x00
	beq _08138420
	ldr r0, _08138480 @ =0x03001038
	mov r9, r0
	adds r0, r3, #0x0
	muls r0, r3
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	mov r8, r0
	ldr r4, _08138484 @ =0x0819832C
	ldr r0, _08138488 @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r6, r7, r1
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r3, [sp, #0x004]
	muls r0, r3
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r7, #0x0C]
	adds r1, r1, r0
	str r1, [r7, #0x0C]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	movs r1, #0x00
	ldsh r0, [r6, r1]
	muls r0, r5
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
_08138420:
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r3, r7, r2
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08138466
	ldr r0, _0813848C @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	negs r0, r0
	ldr r2, _08138490 @ =0x0000023E
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	cmp r0, r1
	blt _08138466
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	str r0, [r7, #0x0C]
	mov r2, r10
	ldr r0, [r2, #0x00]
	str r0, [r7, #0x10]
_08138466:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138478: .4byte 0x00000216
_0813847C: .4byte 0x000002DE
_08138480: .4byte 0x03001038
_08138484: .4byte 0x0819832C
_08138488: .4byte 0x08198220
_0813848C: .4byte 0x0000020D
_08138490: .4byte 0x0000023E
	thumb_func_start sub_8138494
sub_8138494:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, _08138598 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138590
	movs r4, #0xAF
	lsls r4, r4, #0x02
	adds r3, r2, r4
	ldr r0, [r2, #0x0C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r4, r2, r5
	ldr r0, [r2, #0x10]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r3, #0x00]
	subs r5, #0x7E
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x00]
	adds r5, #0x02
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	ldr r1, _0813859C @ =0x000002DA
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _081384FC
	str r1, [r3, #0x00]
_081384FC:
	ldr r0, [r4, #0x00]
	cmp r0, r1
	ble _08138504
	str r1, [r4, #0x00]
_08138504:
	ldr r0, _081385A0 @ =0x000002DE
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	ble _08138528
	ldr r0, [r2, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138542
_08138528:
	cmp r3, #0x00
	bge _0813853E
	ldr r0, [r2, #0x0C]
	ldr r5, _081385A4 @ =0xFFFFFF00
	adds r0, r0, r5
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138542
_0813853E:
	cmp r3, #0x00
	bne _0813854C
_08138542:
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x0C]
_0813854C:
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	ble _0813856C
	ldr r0, [r2, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r2, r5
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138586
_0813856C:
	cmp r3, #0x00
	bge _08138582
	ldr r0, [r2, #0x10]
	ldr r1, _081385A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138586
_08138582:
	cmp r3, #0x00
	bne _08138590
_08138586:
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x10]
_08138590:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138598: .4byte 0x00000216
_0813859C: .4byte 0x000002DA
_081385A0: .4byte 0x000002DE
_081385A4: .4byte 0xFFFFFF00
	thumb_func_start sub_81385A8
sub_81385A8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	movs r6, #0x01
	negs r6, r6
	cmp r0, r6
	beq _08138604
	adds r0, #0x01
	str r0, [r5, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xDF
	lsls r3, r3, #0x01
	adds r2, r4, r3
	movs r7, #0x00
	ldsh r2, [r2, r7]
	movs r7, #0x95
	lsls r7, r7, #0x02
	adds r3, r4, r7
	ldr r3, [r3, #0x00]
	bl sub_8138F1C
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08138604
	movs r0, #0x00
	str r0, [r4, #0x18]
	str r6, [r5, #0x00]
	ldr r3, _0813860C @ =0x000002B5
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r2, #0x00]
_08138604:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813860C: .4byte 0x000002B5
	thumb_func_start sub_8138610
sub_8138610:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r1, _081386B8 @ =0x08198584
	movs r6, #0xBD
	lsls r6, r6, #0x02
	adds r4, r3, r6
	movs r5, #0xFF
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08138638
	adds r0, #0x3F
_08138638:
	asrs r1, r0, #0x06
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x0C]
	movs r6, #0xB4
	lsls r6, r6, #0x02
	adds r2, r3, r6
	ldr r1, _081386BC @ =0x08198504
	ldr r0, [r4, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08138666
	adds r0, #0x3F
_08138666:
	asrs r1, r0, #0x06
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x10]
	movs r6, #0xB2
	lsls r6, r6, #0x02
	adds r0, r3, r6
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	ands r0, r5
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	ldr r1, [r3, #0x34]
	subs r0, r0, r1
	subs r6, #0x86
	adds r1, r3, r6
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x38]
	subs r0, r0, r1
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081386B8: .4byte 0x08198584
_081386BC: .4byte 0x08198504
	thumb_func_start sub_81386C0
sub_81386C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r9, r1
	ldr r3, _08138760 @ =0x00000141
	adds r3, r4, r3
	str r3, [sp, #0x000]
	ldrb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081387B4
	adds r0, r2, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	adds r6, r0, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08138700
	adds r0, #0xFF
_08138700:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0813870C
	adds r0, #0xFF
_0813870C:
	asrs r0, r0, #0x08
	mov r10, r0
	movs r1, #0x9B
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r2, #0x30
	ldsh r1, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0x00
	beq _081387B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	mov r3, r9
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08138776
	ldr r1, [r4, #0x0C]
	ldr r0, [r6, #0x0C]
	cmp r1, r0
	blt _08138764
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	subs r0, r1, r0
	movs r2, #0x3C
	ldsh r1, [r7, r2]
	cmp r0, r1
	ble _081387B4
	movs r0, #0x02
	b _081387B6
_08138760: .4byte 0x00000141
_08138764:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	movs r3, #0x3E
	ldsh r1, [r7, r3]
	cmp r0, r1
	bge _081387B4
	movs r0, #0x03
	b _081387B6
_08138776:
	subs r0, r0, r1
	ldr r2, [sp, #0x000]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _081387B4
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blt _081387A2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, r10
	subs r0, r3, r0
	movs r2, #0x38
	ldsh r1, [r7, r2]
	cmp r0, r1
	ble _081387B4
	movs r0, #0x00
	b _081387B6
_081387A2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	movs r3, #0x3A
	ldsh r1, [r7, r3]
	cmp r0, r1
	bge _081387B4
	movs r0, #0x01
	b _081387B6
_081387B4:
	movs r0, #0xFF
_081387B6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_81387C8
sub_81387C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138816
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_081387FC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081387FC
_08138816:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _08138840
	movs r1, #0x00
_08138826:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r6, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138826
_08138840:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138886
	adds r2, r3, #0x0
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_08138854:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x40
	ands r1, r3
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0813886C
	movs r0, #0x0F
	ands r0, r3
	b _08138872
_0813886C:
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
_08138872:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r2, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138854
	adds r3, r2, #0x0
_08138886:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081388B2
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x10
_08138898:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138898
_081388B2:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081388DE
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x18
_081388C4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081388C4
_081388DE:
	adds r2, r3, #0x0
	mov r0, r12
	asrs r3, r0, #0x10
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0x00
	beq _08138900
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r2, #0x01
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r2, #0x01
_08138900:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _08138916
	ldrb r1, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138916:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r3, r0
	cmp r3, #0x00
	beq _08138934
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138940 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138934:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138940: .4byte 0x0000033D
	thumb_func_start sub_8138944
sub_8138944:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138992
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_08138978:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138978
_08138992:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _081389D4
	movs r1, #0x00
_081389A2:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r6, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389BC
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x04
	b _081389C2
_081389BC:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
_081389C2:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389A2
_081389D4:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138A16
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_081389E6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389FE
	movs r0, #0x0F
	ands r0, r2
	b _08138A04
_081389FE:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
_08138A04:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389E6
_08138A16:
	mov r0, r12
	asrs r2, r0, #0x10
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _08138A36
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r3, #0x01
_08138A36:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _08138A4C
	ldrb r1, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r3, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138A4C:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	beq _08138A6A
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138A74 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138A6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08138A74: .4byte 0x0000033D
	thumb_func_start sub_8138A78
sub_8138A78:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x80
	lsls r5, r5, #0x01
	add r5, r12
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	adds r4, r0, #0x0
	adds r3, r4, #0x4
	movs r0, #0x02
	ldsh r2, [r4, r0]
	ldrb r0, [r4, #0x00]
	movs r6, #0x01
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AA6
	lsls r2, r2, #0x04
_08138AA6:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138AAE
	adds r0, #0x08
_08138AAE:
	strh r0, [r5, #0x3C]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, #0x02
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AC4
	lsls r2, r2, #0x04
_08138AC4:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138ACC
	adds r0, #0x08
_08138ACC:
	strh r0, [r5, #0x38]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, #0x02
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AE2
	lsls r2, r2, #0x04
_08138AE2:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138AEA
	adds r0, #0x08
_08138AEA:
	strh r0, [r5, #0x3E]
	movs r0, #0x00
	ldsh r2, [r3, r0]
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AFC
	lsls r2, r2, #0x04
_08138AFC:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138B04
	adds r0, #0x08
_08138B04:
	strh r0, [r5, #0x3A]
	movs r1, #0x3C
	ldsh r2, [r5, r1]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B22
	mov r1, r12
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08138B1E
	adds r0, #0xFF
_08138B1E:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B22:
	strh r2, [r5, #0x3C]
	movs r0, #0x38
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B40
	mov r1, r12
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08138B3C
	adds r0, #0xFF
_08138B3C:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B40:
	strh r2, [r5, #0x38]
	movs r0, #0x3E
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B5E
	mov r1, r12
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08138B5A
	adds r0, #0xFF
_08138B5A:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B5E:
	strh r2, [r5, #0x3E]
	movs r0, #0x3A
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B7C
	mov r1, r12
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08138B78
	adds r0, #0xFF
_08138B78:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B7C:
	strh r2, [r5, #0x3A]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8138B84
sub_8138B84:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	adds r5, r2, #0x2
	ldrb r0, [r2, #0x00]
	movs r4, #0x98
	lsls r4, r4, #0x01
	add r4, r12
	movs r1, #0x03
	ands r1, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r2, [r2, #0x01]
	movs r1, #0x01
	ands r1, r2
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r6, #0x99
	lsls r6, r6, #0x01
	add r6, r12
	movs r3, #0xA9
	lsls r3, r3, #0x01
	add r3, r12
	ldrh r2, [r5, #0x00]
	ldr r1, _08138C14 @ =0x00000131
	add r1, r12
	movs r0, #0x00
	strb r2, [r1, #0x00]
	adds r5, #0x02
	ldr r1, _08138C18 @ =0x00000193
	add r1, r12
	strb r0, [r1, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x01
	add r1, r12
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r4, #0x00]
_08138BF0:
	ldrh r0, [r5, #0x00]
	strh r0, [r6, #0x00]
	adds r5, #0x02
	adds r6, #0x02
	ldrh r0, [r5, #0x00]
	strh r0, [r3, #0x00]
	adds r5, #0x02
	adds r3, #0x02
	lsls r0, r2, #0x10
	ldr r1, _08138C1C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _08138BF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138C14: .4byte 0x00000131
_08138C18: .4byte 0x00000193
_08138C1C: .4byte 0xFFFF0000
	thumb_func_start sub_8138C20
sub_8138C20:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r5, r0, r1
	adds r4, r5, #0x0
	adds r4, #0x08
	movs r0, #0x00
	movs r1, #0xA3
	lsls r1, r1, #0x01
	adds r6, r2, r1
_08138C46:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #0x01
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r3
	ldrh r1, [r5, #0x00]
	strh r1, [r0, #0x00]
	adds r5, #0x02
	mov r0, r12
	adds r0, #0x3E
	adds r0, r0, r3
	movs r1, #0x00
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r3, r6, r3
	movs r0, #0x04
	ldsb r0, [r4, r0]
	strh r0, [r3, #0x00]
	adds r0, r2, #0x4
	lsls r0, r0, #0x01
	adds r0, r6, r0
	movs r1, #0x08
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r2, #0x01
	lsls r2, r2, #0x10
	adds r4, #0x01
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x03
	ble _08138C46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8138C8C
sub_8138C8C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r2, r1, #0x0
	adds r3, r2, #0x0
	adds r3, #0x58
	movs r6, #0x00
	adds r4, r2, #0x0
	adds r4, #0xF8
	ldrh r1, [r4, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08138CAE
	movs r0, #0x00
	b _08138E18
_08138CAE:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r2, #0x0C]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08138CDC
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08138CDC
	adds r0, r2, #0x0
	bl sub_8046980
	ldrh r1, [r4, #0x00]
	adds r0, r5, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x00
	b _08138E18
_08138CDC:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08138D66
	ldr r1, _08138DCC @ =0x0000020E
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _08138D38
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0xFE
	ands r0, r1
	cmp r0, #0x00
	bne _08138D38
	movs r0, #0xE3
	lsls r0, r0, #0x02
	muls r0, r1
	adds r0, r0, r7
	ldr r3, _08138DD0 @ =0x0000037A
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08138D66
_08138D38:
	ldr r1, _08138DD4 @ =0x00000213
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x1E
	ands r1, r0
	cmp r1, #0x00
	bne _08138D62
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138DD8 @ =0x000002B6
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08138DA0
_08138D62:
	movs r0, #0x01
	orrs r6, r0
_08138D66:
	adds r0, r2, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08138DE4
	ldr r3, _08138DD4 @ =0x00000213
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r1, r0, #0x1C
	movs r0, #0x0C
	ands r1, r0
	cmp r1, #0x00
	bne _08138DE0
	adds r3, #0x31
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138DD8 @ =0x000002B6
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08138DE0
_08138DA0:
	adds r3, #0x9C
	adds r1, r2, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08138DAE
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08138DAE:
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r1, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r1, _08138DDC @ =0x000002B5
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x08
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	b _08138E18
	.byte 0x00, 0x00
_08138DCC: .4byte 0x0000020E
_08138DD0: .4byte 0x0000037A
_08138DD4: .4byte 0x00000213
_08138DD8: .4byte 0x000002B6
_08138DDC: .4byte 0x000002B5
_08138DE0:
	movs r0, #0x01
	orrs r6, r0
_08138DE4:
	cmp r6, #0x00
	beq _08138DFC
	ldr r3, _08138DF8 @ =0x000002DE
	adds r1, r2, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08138DFC
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _08138E16
_08138DF8: .4byte 0x000002DE
_08138DFC:
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	ldr r3, _08138E20 @ =0x00000242
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138E24 @ =0x000002DA
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
_08138E16:
	movs r0, #0x01
_08138E18:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08138E20: .4byte 0x00000242
_08138E24: .4byte 0x000002DA
	thumb_func_start sub_8138E28
sub_8138E28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	str r1, [sp, #0x000]
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	ldr r3, [sp, #0x024]
	ldr r2, [r6, #0x2C]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08138E48
	adds r0, #0xFF
_08138E48:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08138E54
	adds r0, #0xFF
_08138E54:
	asrs r0, r0, #0x08
	mov r9, r0
	ldr r0, [r2, #0x14]
	cmp r0, #0x00
	bge _08138E60
	adds r0, #0xFF
_08138E60:
	asrs r0, r0, #0x08
	mov r12, r0
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r7, r0, #0x08
	adds r1, #0x04
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	mov r10, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08138E80
	adds r0, #0xFF
_08138E80:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08138E8A
	adds r0, #0xFF
_08138E8A:
	asrs r5, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08138E94
	adds r0, #0xFF
_08138E94:
	asrs r3, r0, #0x08
	ldr r1, _08138F04 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _08138F08
	movs r6, #0x83
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138F08
	cmp r12, r3
	bne _08138F08
	lsrs r3, r7, #0x01
	mov r0, r8
	subs r1, r0, r3
	subs r1, #0x02
	ldr r2, [sp, #0x000]
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsrs r2, r0, #0x09
	adds r0, r4, r2
	cmp r1, r0
	bgt _08138F08
	mov r1, r8
	adds r0, r1, r3
	adds r0, #0x02
	subs r1, r4, r2
	cmp r0, r1
	blt _08138F08
	mov r2, r9
	mov r3, r10
	subs r0, r2, r3
	subs r0, #0x02
	cmp r0, r5
	bgt _08138F08
	mov r1, r9
	adds r1, #0x02
	ldr r6, [sp, #0x000]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	subs r0, r5, r0
	cmp r1, r0
	blt _08138F08
	movs r0, #0x01
	b _08138F0A
	.byte 0x00, 0x00
_08138F04: .4byte 0x00000246
_08138F08:
	movs r0, #0x00
_08138F0A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8138F1C
sub_8138F1C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08138F2C
	adds r0, r4, #0x7
_08138F2C:
	asrs r4, r0, #0x03
	muls r5, r3
	subs r5, r5, r4
	ldr r2, _08138F58 @ =0x03001038
	ldr r0, _08138F5C @ =0x0819832C
	ldr r1, _08138F60 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	negs r0, r6
	muls r0, r5
	muls r0, r5
	adds r1, r4, #0x0
	muls r1, r4
	bl _call_via_r2
	adds r0, r0, r6
	lsls r0, r0, #0x08
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08138F58: .4byte 0x03001038
_08138F5C: .4byte 0x0819832C
_08138F60: .4byte 0x08198220
	thumb_func_start sub_8138F64
sub_8138F64:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ldr r1, _08138F94 @ =0x0000010B
	adds r2, r4, r1
	ldrb r2, [r2, #0x00]
	cmp r0, r2
	bcc _08138F8A
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08138F98
	mov r0, sp
	ldrb r0, [r0, #0x00]
_08138F8A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	b _08138F9A
	.byte 0x00, 0x00
_08138F94: .4byte 0x0000010B
_08138F98:
	movs r0, #0x00
_08138F9A:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8138FA4
sub_8138FA4:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r3, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	movs r4, #0xBD
	lsls r4, r4, #0x02
	adds r2, r3, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	str r1, [r2, #0x00]
	ldrh r1, [r0, #0x02]
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
