	.syntax unified
	.text

	thumb_func_start sub_8028AFC
sub_8028AFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	ldr r1, [sp, #0x018]
	ldr r0, [sp, #0x01C]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r2, #0x01
	bne _08028B2A
	ldr r2, _08028B34 @ =0x0000027A
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r3, r3, r0
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r4, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, r1, r0
_08028B2A:
	cmp r3, #0x00
	bge _08028B38
	movs r3, #0x00
	b _08028B46
	.byte 0x00, 0x00
_08028B34: .4byte 0x0000027A
_08028B38:
	ldr r2, _08028B50 @ =0x00000286
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	subs r0, #0xF0
	cmp r3, r0
	ble _08028B46
	adds r3, r0, #0x0
_08028B46:
	cmp r1, #0x00
	bge _08028B54
	movs r1, #0x00
	b _08028B64
	.byte 0x00, 0x00
_08028B50: .4byte 0x00000286
_08028B54:
	movs r2, #0xA2
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	subs r0, #0xA0
	cmp r1, r0
	ble _08028B64
	adds r1, r0, #0x0
_08028B64:
	ldr r2, _08028BCC @ =0x0000027A
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x72
	adds r6, r4, r2
	strh r0, [r6, #0x00]
	subs r2, #0x70
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x72
	adds r5, r4, r2
	strh r0, [r5, #0x00]
	adds r2, #0x04
	adds r0, r4, r2
	strh r3, [r0, #0x00]
	adds r2, #0x02
	adds r3, r4, r2
	strh r1, [r3, #0x00]
	cmp r7, #0x01
	bne _08028BD4
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r1, #0x00
	ldsh r0, [r6, r1]
	subs r2, r2, r0
	movs r0, #0x00
	ldsh r1, [r3, r0]
	movs r3, #0x00
	ldsh r0, [r5, r3]
	subs r1, r1, r0
	ldr r3, _08028BD0 @ =0x03001038
	adds r0, r2, #0x0
	muls r0, r2
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r0, r1
	ldr r1, [r3, #0x00]
	bl _call_via_r1
	lsls r0, r0, #0x08
	mov r3, r8
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl __divsi3
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r1, r4, r2
	adds r0, #0x01
	strh r0, [r1, #0x00]
	b _08028BDE
_08028BCC: .4byte 0x0000027A
_08028BD0: .4byte 0x03001038
_08028BD4:
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r4, r3
	mov r1, r8
	strh r1, [r0, #0x00]
_08028BDE:
	ldr r2, _08028C34 @ =0x000002FA
	adds r1, r4, r2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r3, _08028C38 @ =0x000002EE
	adds r0, r4, r3
	subs r2, #0x06
	adds r1, r4, r2
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, #0x04
	adds r1, r4, r3
	subs r3, #0x06
	adds r2, r4, r3
	ldrh r1, [r1, #0x00]
	ldrh r2, [r2, #0x00]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsrs r0, r0, #0x08
	ldr r2, _08028C3C @ =0x000002FE
	adds r1, r4, r2
	strb r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF9
	movs r0, #0x03
	ands r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r7
	strb r0, [r2, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08028C34: .4byte 0x000002FA
_08028C38: .4byte 0x000002EE
_08028C3C: .4byte 0x000002FE
