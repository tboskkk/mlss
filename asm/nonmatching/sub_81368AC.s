	.syntax unified
	.text

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
