	.syntax unified
	.text

	thumb_func_start sub_8050BC0
sub_8050BC0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r0, r0, r6
	mov r8, r0
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0x00
	bne _08050CA0
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	bl sub_80403C4
	movs r1, #0x86
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x08
	cmp r0, r1
	bne _08050BFC
	b _08050DA2
_08050BFC:
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r5, r6, r3
	str r0, [r5, #0x00]
	str r7, [sp, #0x000]
	movs r1, #0x03
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r8
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050C32
	b _08050DA2
_08050C32:
	ldr r1, [r5, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x0E]
	strh r0, [r1, #0x0E]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r4, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x0C
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r4, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r4, [r5, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1F]
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r5, #0x00]
	str r1, [r3, #0x00]
	b _08050DA2
_08050CA0:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050CC4
	ldr r0, _08050CC0 @ =0x083A0CF8
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	lsls r2, r1, #0x02
	adds r2, r2, r0
	ldrh r2, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r7, [r1, #0x00]
	b _08050CCA
_08050CC0: .4byte 0x083A0CF8
_08050CC4:
	movs r2, #0x80
	lsls r2, r2, #0x08
	movs r7, #0x03
_08050CCA:
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x02
	adds r1, r2, #0x0
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r5, r0, #0x0
	ldr r1, _08050D60 @ =0x00000216
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x48]
	cmp r0, #0x00
	beq _08050D2C
	ldr r0, [r0, #0x04]
	bl sub_80198B0
	lsrs r1, r0, #0x05
	ldrh r2, [r5, #0x28]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x17
	cmp r1, r0
	ble _08050D2C
	ldr r3, _08050D64 @ =0x000001FF
	adds r0, r3, #0x0
	ands r1, r0
	ldr r0, _08050D68 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x28]
_08050D2C:
	movs r0, #0xA6
	lsls r0, r0, #0x02
	adds r3, r6, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08050D6C
	lsls r0, r1, #0x1C
	lsrs r0, r0, #0x1E
	ldrb r2, [r5, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1F]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x02
	movs r2, #0x0D
	negs r2, r2
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1F]
	b _08050D84
_08050D60: .4byte 0x00000216
_08050D64: .4byte 0x000001FF
_08050D68: .4byte 0xFFFFFE00
_08050D6C:
	ldrb r1, [r5, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r5, #0x1F]
_08050D84:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	str r5, [r0, #0x00]
	movs r3, #0xA6
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	bl sub_80415A0
_08050DA2:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
