	.syntax unified
	.text

	thumb_func_start sub_8017E34
sub_8017E34:
	push {r4, r5, r6, r7, lr}
	bl sub_801AC7C
	bl sub_8018FC4
	ldr r2, _08017E90 @ =0x0300034C
	ldr r1, _08017E94 @ =0x0000088A
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08017E64
	ldrh r0, [r2, #0x28]
	movs r1, #0x0F
	ands r1, r0
	cmp r1, #0x0F
	bne _08017E64
	ldrh r0, [r2, #0x2A]
	ands r1, r0
	cmp r1, #0x00
	beq _08017E64
	bl reset_game_80189C4
_08017E64:
	ldr r1, _08017E90 @ =0x0300034C
	ldr r2, _08017E94 @ =0x0000088A
	adds r4, r1, r2
	ldrb r3, [r4, #0x00]
	movs r0, #0x30
	ands r0, r3
	cmp r0, #0x30
	bne _08017EEA
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	beq _08017E98
	ldrh r1, [r1, #0x28]
	movs r0, #0xC1
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _08017EEA
	movs r0, #0x7F
	ands r0, r3
	b _08017EE8
	.byte 0x00, 0x00
_08017E90: .4byte 0x0300034C
_08017E94: .4byte 0x0000088A
_08017E98:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _08017ED6
	ldrh r1, [r1, #0x28]
	ldr r0, _08017EB4 @ =0xFFFFFCFB
	ands r0, r1
	cmp r0, #0x00
	beq _08017EB8
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	b _08017EE8
	.byte 0x00, 0x00
_08017EB4: .4byte 0xFFFFFCFB
_08017EB8:
	movs r0, #0xC1
	lsls r0, r0, #0x02
	ands r1, r0
	cmp r1, #0x00
	bne _08017EEA
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	strb r0, [r4, #0x00]
	bl sub_8018A68
	ldrb r0, [r4, #0x00]
	movs r1, #0x80
	orrs r0, r1
	b _08017EE8
_08017ED6:
	ldrh r2, [r1, #0x28]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	bne _08017EEA
	movs r0, #0x40
	orrs r0, r3
_08017EE8:
	strb r0, [r4, #0x00]
_08017EEA:
	ldr r0, _08017F08 @ =0x0300034C
	ldr r1, _08017F0C @ =0x00000888
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _08017F14
	ldr r0, _08017F10 @ =0x03000C28
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08017F1C
	bl sub_81DA6C0
	b _08017F1C
_08017F08: .4byte 0x0300034C
_08017F0C: .4byte 0x00000888
_08017F10: .4byte 0x03000C28
_08017F14:
	movs r0, #0x01
	movs r1, #0x80
	bl sub_81DA6A0
_08017F1C:
	ldr r5, _08018068 @ =0x0300034C
	ldr r2, _0801806C @ =0x000008C1
	adds r1, r5, r2
	movs r0, #0x00
	strb r0, [r1, #0x00]
	bl sub_8019F24
	ldr r0, [r5, #0x1C]
	adds r0, #0x01
	str r0, [r5, #0x1C]
	ldr r1, [r5, #0x24]
	movs r0, #0x02
	negs r0, r0
	cmp r1, r0
	bhi _08017F48
	ldr r2, _08018070 @ =0x00000889
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1F
	lsrs r0, r0, #0x1F
	adds r0, r1, r0
	str r0, [r5, #0x24]
_08017F48:
	ldr r0, _08018070 @ =0x00000889
	adds r4, r5, r0
	ldrb r3, [r4, #0x00]
	lsls r2, r3, #0x1B
	lsrs r2, r2, #0x1C
	adds r2, #0x01
	movs r0, #0x0F
	adds r1, r2, #0x0
	ands r1, r0
	lsls r1, r1, #0x01
	movs r7, #0x1F
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x0F
	ands r2, r0
	ldr r1, _08018074 @ =0x00000888
	adds r6, r5, r1
	ldr r0, [r6, #0x00]
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x1C
	cmp r2, r0
	bcc _08017F92
	ldr r0, _08018078 @ =0x04000130
	ldrh r0, [r0, #0x00]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x00
	bl sub_8018920
	ldrb r1, [r4, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r4, #0x00]
_08017F92:
	ldrb r2, [r6, #0x00]
	movs r0, #0x10
	ands r0, r2
	ldr r7, _0801807C @ =0x03000D0C
	cmp r0, #0x00
	bne _08018048
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1F
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1F
	eors r1, r0
	lsls r1, r1, #0x03
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0x00]
	movs r2, #0x88
	lsls r2, r2, #0x04
	adds r4, r5, r2
	lsls r2, r0, #0x1C
	lsrs r2, r2, #0x1F
	lsls r1, r2, #0x0A
	adds r3, r5, #0x0
	adds r3, #0x80
	adds r1, r1, r3
	str r1, [r4, #0x00]
	mov r12, r1
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	eors r2, r0
	lsls r2, r2, #0x0A
	adds r2, r2, r3
	movs r5, #0x80
	movs r4, #0x80
	lsls r4, r4, #0x02
	movs r3, #0x00
_08017FDC:
	mov r0, r12
	str r4, [r0, #0x00]
	strh r3, [r0, #0x04]
	ldrh r0, [r2, #0x06]
	mov r1, r12
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x08]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x0E]
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x10]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x16]
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x18]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x1E]
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x20]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x26]
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x28]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x2E]
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x30]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x36]
	strh r0, [r1, #0x06]
	adds r1, #0x08
	mov r0, r12
	str r4, [r0, #0x38]
	strh r3, [r1, #0x04]
	ldrh r0, [r2, #0x3E]
	strh r0, [r1, #0x06]
	subs r5, #0x08
	movs r1, #0x40
	add r12, r1
	adds r2, #0x40
	cmp r5, #0x00
	bne _08017FDC
_08018048:
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08018060
	ldr r0, _08018068 @ =0x0300034C
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08018060
	bl sub_8018818
_08018060:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018068: .4byte 0x0300034C
_0801806C: .4byte 0x000008C1
_08018070: .4byte 0x00000889
_08018074: .4byte 0x00000888
_08018078: .4byte 0x04000130
_0801807C: .4byte 0x03000D0C
