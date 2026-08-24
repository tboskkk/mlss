	.syntax unified
	.text

	thumb_func_start sub_8103D74
sub_8103D74:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	movs r5, #0x00
	ldr r0, _08103E98 @ =0x084FB5D4
	mov r9, r0
	movs r6, #0x05
	ldr r4, _08103E9C @ =0x089F808C
	mov r8, r4
_08103D8E:
	ldr r1, _08103EA0 @ =0x03000FD8
	mov r10, r1
	ldr r2, [r1, #0x00]
	lsls r1, r5, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	movs r3, #0x10
	ldsh r0, [r7, r3]
	adds r0, #0x01
	cmp r1, r0
	bne _08103DDE
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r1, r1, r4
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	adds r3, r6, #0x0
	bl sub_8084F28
_08103DDE:
	adds r3, r6, #0x2
	mov r12, r3
	adds r4, #0x80
	adds r1, r5, #0x1
	mov r0, r10
	ldr r2, [r0, #0x00]
	lsls r1, r1, #0x02
	movs r3, #0xE0
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x0C]
	movs r3, #0x10
	ldsh r1, [r0, r3]
	movs r3, #0x10
	ldsh r0, [r7, r3]
	adds r0, #0x01
	cmp r1, r0
	bne _08103E34
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	lsls r1, r1, #0x02
	add r1, r8
	ldr r1, [r1, #0x00]
	adds r1, r1, r4
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	mov r3, r12
	bl sub_8084F28
_08103E34:
	adds r6, #0x04
	adds r4, #0x80
	adds r5, #0x02
	cmp r5, #0x05
	ble _08103D8E
	ldrh r0, [r7, #0x10]
	movs r3, #0x10
	ldsh r1, [r7, r3]
	cmp r1, #0x5B
	bgt _08103EAC
	adds r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08103EA4 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103E5A
	b _081040C2
_08103E5A:
	movs r0, #0x5C
	strh r0, [r7, #0x10]
	mov r1, r10
	ldr r0, [r1, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x06
	str r1, [sp, #0x000]
	movs r1, #0x0C
	str r1, [sp, #0x004]
	ldr r1, _08103EA8 @ =0x084FB588
	adds r1, #0x4C
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08103E9C @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x82
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x00
	movs r2, #0x0C
	movs r3, #0x05
	bl sub_8084F28
	b _081040C2
	.byte 0x00, 0x00
_08103E98: .4byte dword_84FB5D4 @ =0x084FB5D4
_08103E9C: .4byte dword_89F808C @ =0x089F808C
_08103EA0: .4byte 0x03000FD8
_08103EA4: .4byte 0x0300034C
_08103EA8: .4byte word_84FB588 @ =0x084FB588
_08103EAC:
	cmp r1, #0x5C
	bne _08103EDC
	movs r0, #0x36
	bl stop_sfx_80195A8
	ldr r0, _08103ED8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103EC4
	b _081040C2
_08103EC4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
	ldrh r0, [r7, #0x10]
	adds r0, #0x01
	strh r0, [r7, #0x10]
	b _081040C2
	.byte 0x00, 0x00
_08103ED8: .4byte 0x0300034C
_08103EDC:
	cmp r1, #0xA4
	bgt _08103EFC
	adds r0, #0x01
	strh r0, [r7, #0x10]
	ldr r0, _08103EF8 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08103EF2
	b _081040C2
_08103EF2:
	movs r0, #0xA5
	strh r0, [r7, #0x10]
	b _081040C2
_08103EF8: .4byte 0x0300034C
_08103EFC:
	movs r3, #0x12
	ldsh r1, [r7, r3]
	ldr r2, _08104068 @ =0x03000FF4
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	ldr r0, _0810406C @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r3, _08104070 @ =0x00008E1C
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	movs r3, #0x00
	mov r8, r3
	strh r0, [r2, #0x10]
	ldr r3, _08104074 @ =0x00008E1E
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x16]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x1A]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x22]
	adds r3, #0x02
	adds r0, r1, r3
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x1E]
	ldr r0, _08104078 @ =0x00008E26
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x26]
	mov r5, r10
	ldr r0, [r5, #0x00]
	movs r6, #0x93
	lsls r6, r6, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x82
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r0, [r5, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r3, r0, #0x0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0xA0
	ldr r1, _0810407C @ =0x0000401F
	movs r0, #0x84
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x00
	adds r2, r4, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	str r4, [r0, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x1F]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	strb r0, [r2, #0x1F]
	movs r3, #0x76
	adds r3, r3, r4
	mov r9, r3
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r5, #0x00]
	mov r2, r8
	str r2, [r0, #0x7C]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x70
	subs r2, r1, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08103FF0
	adds r0, #0xFF
_08103FF0:
	asrs r3, r0, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08103FFA
	adds r0, #0xFF
_08103FFA:
	asrs r1, r0, #0x08
	ldr r0, _08104080 @ =0x00007003
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x03
	bl sub_810A648
	mov r3, r10
	ldr r0, [r3, #0x00]
	movs r2, #0x9E
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r1, [r1, #0x00]
	movs r4, #0x1C
	ldr r5, [r1, #0x08]
	adds r0, #0x48
	ldr r1, _08104084 @ =0x08103B6D
	bl sub_807FFD8
	strh r4, [r0, #0x14]
	str r5, [r0, #0x08]
	mov r3, r9
	ldrb r0, [r3, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r4, [r7, #0x0C]
	movs r0, #0x79
	bl stop_sfx_80195A8
	cmp r4, #0x00
	beq _081040B2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _081040B2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0810408C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x05
	ldr r2, _08104088 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _0810409A
_08104068: .4byte 0x03000FF4
_0810406C: .4byte 0x03000FDC
_08104070: .4byte 0x00008E1C
_08104074: .4byte 0x00008E1E
_08104078: .4byte 0x00008E26
_0810407C: .4byte 0x0000401F
_08104080: .4byte 0x00007003
_08104084: .4byte sub_8103B6C
_08104088: .4byte 0x00002003
_0810408C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x05
	ldr r2, _081040D4 @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_0810409A:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_081040B2:
	ldr r0, _081040D8 @ =0x081040DD
	str r0, [r7, #0x04]
	movs r0, #0xB1
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_081040C2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081040D4: .4byte 0x00002050
_081040D8: .4byte sub_81040DC
