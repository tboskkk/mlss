	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r5, _081028A8 @ =0x03000FD8
	ldr r1, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0810279E
	b _081028B4
_0810279E:
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r4, #0x06
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08102800
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x5A
	bne _08102800
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	bl sub_81026DC
	ldr r0, [r5, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	ldr r1, _081028AC @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081028B0 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08102800:
	ldr r4, _081028A8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08102860
	movs r3, #0x10
	ldsh r0, [r6, r3]
	cmp r0, #0x5A
	beq _08102822
	b _0810297C
_08102822:
	adds r0, r2, #0x0
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, _081028AC @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081028B0 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
_08102860:
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x5A
	beq _0810286A
	b _0810297C
_0810286A:
	ldr r0, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _081028AC @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _081028B0 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r3, #0x87
	lsls r3, r3, #0x02
	adds r2, r2, r3
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	b _0810297C
	.byte 0x00, 0x00
_081028A8: .4byte 0x03000FD8
_081028AC: .4byte 0x084FB588
_081028B0: .4byte 0x089F808C
_081028B4:
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x28
	bne _08102938
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x79
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	bl sub_81026DC
	ldr r0, [r5, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r4
	bne _081028FC
	ldr r0, _081028F4 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _081028F8 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102910
	.byte 0x00, 0x00
_081028F4: .4byte 0x084FB588
_081028F8: .4byte 0x089F808C
_081028FC:
	ldr r0, _08102AA0 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _08102AA4 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r1, r1, r3
_08102910:
	adds r2, r0, r1
	ldr r0, _08102AA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08102938:
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x3C
	bne _0810297C
	ldr r0, _08102AA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r1, #0x87
	lsls r1, r1, #0x02
	adds r2, r2, r1
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
_0810297C:
	ldrh r3, [r6, #0x10]
	movs r0, #0x10
	ldsh r2, [r6, r0]
	cmp r2, #0x6D
	ble _08102988
	b _08102B86
_08102988:
	ldr r0, _08102AAC @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08102996
	b _08102B80
_08102996:
	ldr r4, _08102AA8 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081029A6
	b _08102AB0
_081029A6:
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _081029F8
	cmp r2, #0x59
	bgt _081029F8
	adds r0, r3, #0x0
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_081029F8:
	ldr r4, _08102AA8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r5, #0x06
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x02
	bne _08102A58
	movs r3, #0x10
	ldsh r0, [r6, r3]
	cmp r0, #0x59
	ble _08102A1A
	b _08102B6C
_08102A1A:
	adds r0, r2, #0x0
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	str r5, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r2, r2, r3
	adds r1, r1, r2
	str r1, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x0B
	bl sub_8084F28
_08102A58:
	movs r1, #0x10
	ldsh r0, [r6, r1]
	cmp r0, #0x59
	ble _08102A62
	b _08102B6C
_08102A62:
	ldr r0, [r4, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _08102AA0 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102AA4 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r3, #0x87
	lsls r3, r3, #0x02
	adds r2, r2, r3
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
	b _08102B6C
	.byte 0x00, 0x00
_08102AA0: .4byte 0x084FB588
_08102AA4: .4byte 0x089F808C
_08102AA8: .4byte 0x03000FD8
_08102AAC: .4byte 0x0300034C
_08102AB0:
	cmp r2, #0x27
	bgt _08102B28
	adds r0, r1, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	bl sub_81026DC
	ldr r0, [r4, #0x00]
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08102AEC
	ldr r0, _08102AE4 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _08102AE8 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	b _08102B00
	.byte 0x00, 0x00
_08102AE4: .4byte 0x084FB588
_08102AE8: .4byte 0x089F808C
_08102AEC:
	ldr r0, _08102B74 @ =0x084FB588
	adds r0, #0x40
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _08102B78 @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x01
	adds r1, r1, r3
_08102B00:
	adds r2, r0, r1
	ldr r0, _08102B7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x06
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x07
	movs r3, #0x05
	bl sub_8084F28
_08102B28:
	movs r2, #0x10
	ldsh r0, [r6, r2]
	cmp r0, #0x3B
	bgt _08102B6C
	ldr r0, _08102B7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r3, #0x94
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	movs r1, #0x07
	str r1, [sp, #0x000]
	movs r1, #0x04
	str r1, [sp, #0x004]
	ldr r1, _08102B74 @ =0x084FB588
	adds r1, #0x40
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x02
	ldr r2, _08102B78 @ =0x089F808C
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r2, r2, r1
	movs r1, #0x87
	lsls r1, r1, #0x02
	adds r2, r2, r1
	str r2, [sp, #0x008]
	movs r1, #0x80
	lsls r1, r1, #0x08
	str r1, [sp, #0x00C]
	movs r1, #0x01
	movs r2, #0x15
	movs r3, #0x0D
	bl sub_8084F28
_08102B6C:
	movs r0, #0x6E
	strh r0, [r6, #0x10]
	b _08102C7E
	.byte 0x00, 0x00
_08102B74: .4byte 0x084FB588
_08102B78: .4byte 0x089F808C
_08102B7C: .4byte 0x03000FD8
_08102B80:
	adds r0, r3, #0x1
	strh r0, [r6, #0x10]
	b _08102C7E
_08102B86:
	movs r0, #0x79
	bl stop_sfx_80195A8
	ldr r0, _08102C88 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _08102C7E
	ldr r4, _08102C8C @ =0x03000FF4
	ldr r0, [r4, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x88
	ldr r1, _08102C90 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldrh r0, [r0, #0x18]
	ldrh r3, [r2, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08102C94 @ =0x0000270F
	adds r5, r1, #0x0
	cmp r0, r3
	bls _08102BBC
	strh r3, [r2, #0x00]
_08102BBC:
	ldr r0, _08102C98 @ =0x08102CA5
	mov r12, r0
	adds r7, r4, #0x0
	ldr r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08102C1C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08102C1C
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r0, r0
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [r3, #0x04]
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x08
	ldrh r4, [r4, #0x16]
	adds r0, r0, r4
	ldr r1, _08102C9C @ =0x00FFFFFF
	ands r0, r1
	movs r4, #0xFF
	lsls r4, r4, #0x18
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #0x04]
	lsls r0, r1, #0x08
	lsrs r0, r0, #0x08
	ldr r2, _08102CA0 @ =0x000F423F
	cmp r0, r2
	bls _08102C1C
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #0x04]
_08102C1C:
	ldr r4, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _08102C76
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08102C76
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mvns r0, r0
	lsls r1, r0, #0x04
	subs r1, r1, r0
	lsls r1, r1, #0x02
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [r3, #0x04]
	lsls r0, r2, #0x08
	lsrs r0, r0, #0x08
	ldrh r4, [r4, #0x16]
	adds r0, r0, r4
	ldr r1, _08102C9C @ =0x00FFFFFF
	ands r0, r1
	movs r4, #0xFF
	lsls r4, r4, #0x18
	adds r1, r4, #0x0
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #0x04]
	lsls r0, r1, #0x08
	lsrs r0, r0, #0x08
	ldr r2, _08102CA0 @ =0x000F423F
	cmp r0, r2
	bls _08102C76
	adds r0, r4, #0x0
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #0x04]
_08102C76:
	movs r0, #0x00
	strh r0, [r6, #0x10]
	mov r3, r12
	str r3, [r6, #0x04]
_08102C7E:
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08102C88: .4byte 0x0300034C
_08102C8C: .4byte 0x03000FF4
_08102C90: .4byte 0x03000FD8
_08102C94: .4byte 0x0000270F
_08102C98: .4byte sub_8102CA4
_08102C9C: .4byte 0x00FFFFFF
_08102CA0: .4byte 0x000F423F
