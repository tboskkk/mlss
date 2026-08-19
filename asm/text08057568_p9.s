	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81DC7F4
sub_81DC7F4:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, _081DC804 @ =0x08CDBD64
	ldr r0, [r0, #0x00]
	bl sub_81DC978
	pop {pc}
	.byte 0x00, 0x00
_081DC804: .4byte 0x08CDBD64
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x02, 0x48, 0x00, 0x68, 0x00, 0xF0, 0x6C, 0xFD, 0x00, 0xBD, 0x00, 0x00
	.byte 0x64, 0xBD, 0xCD, 0x08
	thumb_func_start sub_81DC81C
sub_81DC81C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	ldr r0, _081DC890 @ =0x08CDB634
	ldr r0, [r0, #0x08]
	mov r8, r0
	ldr r7, [r0, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _081DC894 @ =0x08CDBA40
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	adds r6, r1, #0x0
	adds r6, #0x10
	ldr r3, _081DC898 @ =0x08CDBA44
	mov r10, r3
	ldr r0, [r3, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r9, r2
	cmp r0, r9
	beq _081DC85E
	ldr r3, _081DC89C @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _081DC8A0 @ =0xFFFFF000
	ands r6, r0
_081DC85E:
	ldr r0, [sp, #0x000]
	adds r1, r6, #0x0
	bl sub_81DCDF4
	adds r5, r0, #0x0
	cmp r5, r9
	beq _081DC960
	cmp r5, r4
	bcs _081DC876
	ldr r0, _081DC890 @ =0x08CDB634
	cmp r8, r0
	bne _081DC960
_081DC876:
	ldr r1, _081DC8A4 @ =0x08CDBA50
	ldr r0, [r1, #0x00]
	adds r2, r0, r6
	str r2, [r1, #0x00]
	cmp r5, r4
	bne _081DC8A8
	adds r2, r6, r7
	ldr r3, _081DC890 @ =0x08CDB634
	ldr r1, [r3, #0x08]
	movs r0, #0x01
	orrs r2, r0
	str r2, [r1, #0x04]
	b _081DC948
_081DC890: .4byte 0x08CDB634
_081DC894: .4byte 0x08CDBA40
_081DC898: .4byte 0x08CDBA44
_081DC89C: .4byte 0x0000100F
_081DC8A0: .4byte 0xFFFFF000
_081DC8A4: .4byte 0x08CDBA50
_081DC8A8:
	mov r3, r10
	ldr r0, [r3, #0x00]
	cmp r0, r9
	bne _081DC8B4
	str r5, [r3, #0x00]
	b _081DC8BA
_081DC8B4:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1, #0x00]
_081DC8BA:
	adds r1, r5, #0x0
	adds r1, #0x08
	movs r0, #0x07
	ands r1, r0
	cmp r1, #0x00
	beq _081DC8CE
	movs r0, #0x08
	subs r4, r0, r1
	adds r5, r5, r4
	b _081DC8D0
_081DC8CE:
	movs r4, #0x00
_081DC8D0:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #0x05
	subs r1, #0x01
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x05
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_81DCDF4
	adds r2, r0, #0x0
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _081DC960
	ldr r1, _081DC918 @ =0x08CDBA50
	ldr r0, [r1, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	ldr r1, _081DC91C @ =0x08CDB634
	str r5, [r1, #0x08]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #0x01
	orrs r2, r3
	str r2, [r5, #0x04]
	cmp r8, r1
	beq _081DC948
	cmp r7, #0x0F
	bhi _081DC920
	str r3, [r5, #0x04]
	b _081DC960
	.byte 0x00, 0x00
_081DC918: .4byte 0x08CDBA50
_081DC91C: .4byte 0x08CDB634
_081DC920:
	subs r7, #0x0C
	movs r0, #0x08
	negs r0, r0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #0x04]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #0x04]
	adds r1, r2, r7
	movs r0, #0x05
	str r0, [r1, #0x04]
	str r0, [r1, #0x08]
	cmp r7, #0x0F
	bls _081DC948
	mov r1, r8
	adds r1, #0x08
	ldr r0, [sp, #0x000]
	bl sub_81DD2EC
_081DC948:
	ldr r0, _081DC96C @ =0x08CDBA50
	ldr r2, _081DC970 @ =0x08CDBA48
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bls _081DC956
	str r1, [r2, #0x00]
_081DC956:
	ldr r2, _081DC974 @ =0x08CDBA4C
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bls _081DC960
	str r1, [r2, #0x00]
_081DC960:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7, pc}
_081DC96C: .4byte 0x08CDBA50
_081DC970: .4byte 0x08CDBA48
_081DC974: .4byte 0x08CDBA4C
	thumb_func_start sub_81DC978
sub_81DC978:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x000]
	adds r1, #0x0B
	cmp r1, #0x16
	ble _081DC99A
	movs r0, #0x08
	negs r0, r0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _081DC99E
_081DC99A:
	movs r3, #0x10
	mov r8, r3
_081DC99E:
	ldr r0, [sp, #0x000]
	bl nullsub_5
	ldr r0, _081DC9E4 @ =0x000001F7
	cmp r8, r0
	bhi _081DC9F2
	mov r4, r8
	lsrs r4, r4, #0x03
	mov r12, r4
	ldr r0, _081DC9E8 @ =0x08CDB634
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0x0C]
	cmp r5, r2
	bne _081DC9C6
	adds r2, r5, #0x0
	adds r2, #0x08
	ldr r5, [r2, #0x0C]
	cmp r5, r2
	beq _081DC9EC
_081DC9C6:
	ldr r2, [r5, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r2, r0
	ldr r6, [r5, #0x0C]
	ldr r4, [r5, #0x08]
	str r6, [r4, #0x0C]
	str r4, [r6, #0x08]
	adds r2, r5, r2
	ldr r0, [r2, #0x04]
	movs r1, #0x01
	orrs r0, r1
	str r0, [r2, #0x04]
	b _081DCD1E
	.byte 0x00, 0x00
_081DC9E4: .4byte 0x000001F7
_081DC9E8: .4byte 0x08CDB634
_081DC9EC:
	movs r0, #0x02
	add r12, r0
	b _081DCA9E
_081DC9F2:
	mov r2, r8
	lsrs r1, r2, #0x09
	cmp r1, #0x00
	bne _081DC9FE
	lsrs r2, r2, #0x03
	b _081DCA4E
_081DC9FE:
	cmp r1, #0x04
	bhi _081DCA0C
	mov r3, r8
	lsrs r0, r3, #0x06
	adds r0, #0x38
	mov r12, r0
	b _081DCA50
_081DCA0C:
	cmp r1, #0x14
	bhi _081DCA16
	adds r1, #0x5B
	mov r12, r1
	b _081DCA50
_081DCA16:
	cmp r1, #0x54
	bhi _081DCA24
	mov r4, r8
	lsrs r0, r4, #0x0C
	adds r0, #0x6E
	mov r12, r0
	b _081DCA50
_081DCA24:
	movs r0, #0xAA
	lsls r0, r0, #0x01
	cmp r1, r0
	bhi _081DCA36
	mov r7, r8
	lsrs r0, r7, #0x0F
	adds r0, #0x77
	mov r12, r0
	b _081DCA50
_081DCA36:
	ldr r0, _081DCA48 @ =0x00000554
	cmp r1, r0
	bhi _081DCA4C
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7C
	mov r12, r0
	b _081DCA50
	.byte 0x00, 0x00
_081DCA48: .4byte 0x00000554
_081DCA4C:
	movs r2, #0x7E
_081DCA4E:
	mov r12, r2
_081DCA50:
	mov r3, r12
	lsls r0, r3, #0x03
	ldr r1, _081DCA74 @ =0x08CDB634
	adds r4, r0, r1
	ldr r5, [r4, #0x0C]
	cmp r5, r4
	beq _081DCA9A
	ldr r1, [r5, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0x0F
	ble _081DCA78
	adds r0, #0x03
	add r12, r0
	b _081DCA9A
_081DCA74: .4byte 0x08CDB634
_081DCA78:
	cmp r3, #0x00
	blt _081DCA7E
	b _081DCCB8
_081DCA7E:
	ldr r5, [r5, #0x0C]
	cmp r5, r4
	beq _081DCA9A
	ldr r1, [r5, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0x0F
	ble _081DCA78
	movs r3, #0x01
	negs r3, r3
	add r12, r3
_081DCA9A:
	movs r4, #0x01
	add r12, r4
_081DCA9E:
	ldr r0, _081DCADC @ =0x08CDB63C
	ldr r5, [r0, #0x08]
	mov r10, r0
	cmp r5, r10
	bne _081DCAAA
	b _081DCBAC
_081DCAAA:
	ldr r1, [r5, #0x04]
	movs r0, #0x04
	negs r0, r0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0x0F
	ble _081DCAE0
	adds r2, r5, r7
	movs r1, #0x01
	adds r0, r7, #0x0
	orrs r0, r1
	str r0, [r5, #0x04]
	mov r4, r10
	str r2, [r4, #0x0C]
	str r2, [r4, #0x08]
	str r4, [r2, #0x0C]
	str r4, [r2, #0x08]
	adds r0, r3, #0x0
	orrs r0, r1
	str r0, [r2, #0x04]
	adds r0, r2, r3
	str r3, [r0, #0x00]
	b _081DCD1E
	.byte 0x00, 0x00
_081DCADC: .4byte 0x08CDB63C
_081DCAE0:
	mov r7, r10
	str r7, [r7, #0x0C]
	str r7, [r7, #0x08]
	cmp r3, #0x00
	blt _081DCAF6
	adds r2, r5, r1
	ldr r0, [r2, #0x04]
	movs r1, #0x01
	orrs r0, r1
	str r0, [r2, #0x04]
	b _081DCD1E
_081DCAF6:
	ldr r0, _081DCB18 @ =0x000001FF
	cmp r1, r0
	bhi _081DCB1C
	lsrs r2, r1, #0x03
	mov r3, r10
	subs r3, #0x08
	adds r0, r2, #0x0
	asrs r0, r0, #0x02
	movs r1, #0x01
	lsls r1, r0
	ldr r0, [r3, #0x04]
	orrs r0, r1
	str r0, [r3, #0x04]
	lsls r0, r2, #0x03
	adds r6, r0, r3
	ldr r4, [r6, #0x08]
	b _081DCBA4
_081DCB18: .4byte 0x000001FF
_081DCB1C:
	lsrs r2, r1, #0x09
	cmp r2, #0x00
	bne _081DCB26
	lsrs r2, r1, #0x03
	b _081DCB6A
_081DCB26:
	cmp r2, #0x04
	bhi _081DCB32
	lsrs r0, r1, #0x06
	adds r2, r0, #0x0
	adds r2, #0x38
	b _081DCB6A
_081DCB32:
	cmp r2, #0x14
	bhi _081DCB3A
	adds r2, #0x5B
	b _081DCB6A
_081DCB3A:
	cmp r2, #0x54
	bhi _081DCB46
	lsrs r0, r1, #0x0C
	adds r2, r0, #0x0
	adds r2, #0x6E
	b _081DCB6A
_081DCB46:
	movs r0, #0xAA
	lsls r0, r0, #0x01
	cmp r2, r0
	bhi _081DCB56
	lsrs r0, r1, #0x0F
	adds r2, r0, #0x0
	adds r2, #0x77
	b _081DCB6A
_081DCB56:
	ldr r0, _081DCB64 @ =0x00000554
	cmp r2, r0
	bhi _081DCB68
	lsrs r0, r1, #0x12
	adds r2, r0, #0x0
	adds r2, #0x7C
	b _081DCB6A
_081DCB64: .4byte 0x00000554
_081DCB68:
	movs r2, #0x7E
_081DCB6A:
	lsls r0, r2, #0x03
	ldr r3, _081DCB88 @ =0x08CDB634
	adds r6, r0, r3
	ldr r4, [r6, #0x08]
	cmp r4, r6
	bne _081DCB8C
	adds r0, r2, #0x0
	asrs r0, r0, #0x02
	movs r1, #0x01
	lsls r1, r0
	ldr r7, _081DCB88 @ =0x08CDB634
	ldr r0, [r7, #0x04]
	orrs r0, r1
	str r0, [r7, #0x04]
	b _081DCBA4
_081DCB88: .4byte 0x08CDB634
_081DCB8C:
	ldr r0, [r4, #0x04]
	movs r2, #0x04
	negs r2, r2
	b _081DCB9C
_081DCB94:
	ldr r4, [r4, #0x08]
	cmp r4, r6
	beq _081DCBA2
	ldr r0, [r4, #0x04]
_081DCB9C:
	ands r0, r2
	cmp r1, r0
	bcc _081DCB94
_081DCBA2:
	ldr r6, [r4, #0x0C]
_081DCBA4:
	str r6, [r5, #0x0C]
	str r4, [r5, #0x08]
	str r5, [r6, #0x08]
	str r5, [r4, #0x0C]
_081DCBAC:
	mov r0, r12
	cmp r0, #0x00
	bge _081DCBB4
	adds r0, #0x03
_081DCBB4:
	asrs r0, r0, #0x02
	movs r6, #0x01
	lsls r6, r0
	ldr r0, _081DCBD8 @ =0x08CDB634
	ldr r1, [r0, #0x04]
	cmp r6, r1
	bhi _081DCC76
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081DCBEA
	movs r0, #0x04
	negs r0, r0
	mov r2, r12
	ands r0, r2
	adds r0, #0x04
	mov r12, r0
	b _081DCBE0
_081DCBD8: .4byte 0x08CDB634
_081DCBDC:
	movs r3, #0x04
	add r12, r3
_081DCBE0:
	lsls r6, r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081DCBDC
_081DCBEA:
	ldr r4, _081DCC68 @ =0x08CDB634
	mov r9, r4
_081DCBEE:
	mov r7, r12
	str r7, [sp, #0x004]
	mov r1, r12
	lsls r0, r1, #0x03
	mov r3, r9
	adds r2, r0, r3
	adds r4, r2, #0x0
_081DCBFC:
	ldr r5, [r4, #0x0C]
	cmp r5, r4
	beq _081DCC1C
	movs r0, #0x04
	negs r0, r0
_081DCC06:
	ldr r1, [r5, #0x04]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0x0F
	bgt _081DCCCC
	cmp r3, #0x00
	bge _081DCCF4
	ldr r5, [r5, #0x0C]
	cmp r5, r4
	bne _081DCC06
_081DCC1C:
	adds r4, #0x08
	movs r0, #0x01
	add r12, r0
	mov r0, r12
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DCBFC
_081DCC2C:
	ldr r0, [sp, #0x004]
	ands r0, r1
	cmp r0, #0x00
	beq _081DCC6C
	ldr r3, [sp, #0x004]
	subs r3, #0x01
	str r3, [sp, #0x004]
	subs r2, #0x08
	ldr r0, [r2, #0x08]
	cmp r0, r2
	beq _081DCC2C
_081DCC42:
	lsls r6, r6, #0x01
	mov r4, r9
	ldr r1, [r4, #0x04]
	cmp r6, r1
	bhi _081DCC76
	cmp r6, #0x00
	beq _081DCC76
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _081DCBEE
_081DCC58:
	movs r7, #0x04
	add r12, r7
	lsls r6, r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _081DCC58
	b _081DCBEE
_081DCC68: .4byte 0x08CDB634
_081DCC6C:
	mov r1, r9
	ldr r0, [r1, #0x04]
	bics r0, r6
	str r0, [r1, #0x04]
	b _081DCC42
_081DCC76:
	ldr r2, _081DCCB4 @ =0x08CDB634
	ldr r0, [r2, #0x08]
	ldr r0, [r0, #0x04]
	movs r4, #0x04
	negs r4, r4
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	bcc _081DCC8E
	cmp r3, #0x0F
	bgt _081DCD08
_081DCC8E:
	ldr r0, [sp, #0x000]
	mov r1, r8
	bl sub_81DC81C
	ldr r1, _081DCCB4 @ =0x08CDB634
	ldr r0, [r1, #0x08]
	ldr r0, [r0, #0x04]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	bcc _081DCCAA
	cmp r3, #0x0F
	bgt _081DCD08
_081DCCAA:
	ldr r0, [sp, #0x000]
	bl nullsub_6
	movs r0, #0x00
	b _081DCD28
_081DCCB4: .4byte 0x08CDB634
_081DCCB8:
	ldr r6, [r5, #0x0C]
	ldr r4, [r5, #0x08]
	str r6, [r4, #0x0C]
	str r4, [r6, #0x08]
	adds r2, r5, r1
	ldr r0, [r2, #0x04]
	movs r1, #0x01
	orrs r0, r1
	str r0, [r2, #0x04]
	b _081DCD1E
_081DCCCC:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #0x01
	orrs r4, r1
	str r4, [r5, #0x04]
	ldr r6, [r5, #0x0C]
	ldr r4, [r5, #0x08]
	str r6, [r4, #0x0C]
	str r4, [r6, #0x08]
	mov r7, r10
	str r2, [r7, #0x0C]
	str r2, [r7, #0x08]
	str r7, [r2, #0x0C]
	str r7, [r2, #0x08]
	adds r0, r3, #0x0
	orrs r0, r1
	str r0, [r2, #0x04]
	adds r0, r2, r3
	str r3, [r0, #0x00]
	b _081DCD1E
_081DCCF4:
	adds r2, r5, r1
	ldr r0, [r2, #0x04]
	movs r1, #0x01
	orrs r0, r1
	str r0, [r2, #0x04]
	ldr r6, [r5, #0x0C]
	ldr r4, [r5, #0x08]
	str r6, [r4, #0x0C]
	str r4, [r6, #0x08]
	b _081DCD1E
_081DCD08:
	ldr r2, _081DCD34 @ =0x08CDB634
	ldr r5, [r2, #0x08]
	movs r1, #0x01
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #0x04]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #0x08]
	orrs r3, r1
	str r3, [r0, #0x04]
_081DCD1E:
	ldr r0, [sp, #0x000]
	bl nullsub_6
	adds r0, r5, #0x0
	adds r0, #0x08
_081DCD28:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7, pc}
_081DCD34: .4byte 0x08CDB634
	thumb_func_start memcpy
memcpy:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r3, r1, #0x0
	cmp r2, #0x0F
	bls _081DCD78
	adds r0, r3, #0x0
	orrs r0, r5
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DCD78
	adds r1, r5, #0x0
_081DCD52:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0x0F
	bhi _081DCD52
	cmp r2, #0x03
	bls _081DCD76
_081DCD6C:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x04
	cmp r2, #0x03
	bhi _081DCD6C
_081DCD76:
	adds r4, r1, #0x0
_081DCD78:
	subs r2, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	beq _081DCD92
	adds r1, r0, #0x0
_081DCD84:
	ldrb r0, [r3, #0x00]
	strb r0, [r4, #0x00]
	adds r3, #0x01
	adds r4, #0x01
	subs r2, #0x01
	cmp r2, r1
	bne _081DCD84
_081DCD92:
	adds r0, r5, #0x0
	pop {r4, r5, pc}
	.byte 0x00, 0x00
	thumb_func_start memset
memset:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r3, r5, #0x0
	cmp r2, #0x03
	bls _081DCDDE
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x00
	bne _081DCDDE
	adds r1, r5, #0x0
	movs r0, #0xFF
	ands r4, r0
	lsls r3, r4, #0x08
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0x0F
	bls _081DCDD2
_081DCDBE:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0x0F
	bhi _081DCDBE
	b _081DCDD2
_081DCDCE:
	stm r1!, {r3}
	subs r2, #0x04
_081DCDD2:
	cmp r2, #0x03
	bhi _081DCDCE
	adds r3, r1, #0x0
	b _081DCDDE
_081DCDDA:
	strb r4, [r3, #0x00]
	adds r3, #0x01
_081DCDDE:
	adds r0, r2, #0x0
	subs r2, #0x01
	cmp r0, #0x00
	bne _081DCDDA
	adds r0, r5, #0x0
	pop {r4, r5, pc}
	.byte 0x00, 0x00
