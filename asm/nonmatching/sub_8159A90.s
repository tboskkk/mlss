	.syntax unified
	.text

	thumb_func_start sub_8159A90
sub_8159A90:
	push {r4, r5, r6, r7, lr}
	ldr r7, _08159BB0 @ =0x03001020
	ldr r0, [r7, #0x00]
	adds r0, #0x1C
	bl sub_8160E4C
	ldr r0, [r7, #0x00]
	movs r1, #0x84
	lsls r1, r1, #0x04
	adds r0, r0, r1
	bl sub_8160E4C
	ldr r0, [r7, #0x00]
	ldr r2, _08159BB4 @ =0x00001064
	adds r0, r0, r2
	bl sub_8160E4C
	ldr r0, _08159BB8 @ =0x04000018
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r2, _08159BBC @ =0x0300034C
	ldrh r0, [r2, #0x02]
	movs r1, #0x0F
	orrs r0, r1
	strh r0, [r2, #0x02]
	ldr r4, [r7, #0x00]
	ldr r5, _08159BC0 @ =0x00001CC2
	adds r6, r4, r5
	movs r1, #0x00
	ldsh r0, [r6, r1]
	cmp r0, #0x00
	beq _08159BA8
	ldr r2, _08159BC4 @ =0x00001E84
	adds r3, r4, r2
	ldrh r0, [r3, #0x00]
	adds r0, #0x02
	strh r0, [r3, #0x00]
	ldr r0, _08159BC8 @ =0x0300101C
	ldr r5, [r0, #0x00]
	ldr r2, _08159BCC @ =0x08198504
	ldrh r0, [r3, #0x00]
	lsrs r0, r0, #0x01
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08159AFA
	adds r0, #0x3F
_08159AFA:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r2, #0x00
	ldsh r1, [r6, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r5, #0x00]
	ldrh r3, [r3, #0x00]
	movs r0, #0x00
	ldsh r2, [r5, r0]
	cmp r2, #0x9F
	bgt _08159BA8
	ldr r6, _08159BD0 @ =0x08198584
	mov r12, r7
	movs r0, #0xA0
	subs r1, r0, r2
	movs r0, #0x01
	ands r1, r0
	cmp r2, #0xA0
	bge _08159B28
	cmp r1, #0x00
	beq _08159B52
_08159B28:
	lsls r1, r2, #0x01
	ldr r5, _08159BD4 @ =0x00001D44
	adds r0, r4, r5
	adds r1, r0, r1
	movs r0, #0xFF
	ands r0, r3
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _08159B42
	adds r0, #0x3F
_08159B42:
	asrs r0, r0, #0x0E
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x01
	cmp r2, #0x9F
	bgt _08159BA8
_08159B52:
	mov r0, r12
	ldr r4, [r0, #0x00]
	lsls r1, r2, #0x01
	ldr r5, _08159BD4 @ =0x00001D44
	adds r0, r4, r5
	adds r1, r0, r1
	movs r5, #0xFF
	adds r0, r3, #0x0
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	bge _08159B72
	adds r0, #0x3F
_08159B72:
	asrs r0, r0, #0x0E
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r2, #0x1
	lsls r0, r0, #0x01
	ldr r7, _08159BD4 @ =0x00001D44
	adds r1, r4, r7
	adds r1, r1, r0
	adds r0, r3, #0x0
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _08159B98
	adds r0, #0x3F
_08159B98:
	asrs r0, r0, #0x0E
	strh r0, [r1, #0x00]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #0x02
	cmp r2, #0x9F
	ble _08159B52
_08159BA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08159BB0: .4byte 0x03001020
_08159BB4: .4byte 0x00001064
_08159BB8: .4byte 0x04000018
_08159BBC: .4byte 0x0300034C
_08159BC0: .4byte 0x00001CC2
_08159BC4: .4byte 0x00001E84
_08159BC8: .4byte 0x0300101C
_08159BCC: .4byte word_8198504 @ =0x08198504
_08159BD0: .4byte word_8198584 @ =0x08198584
_08159BD4: .4byte 0x00001D44
