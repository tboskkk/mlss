	.syntax unified
	.text

	thumb_func_start sub_8159CAC
sub_8159CAC:
	push {r4, r5, r6, r7, lr}
	ldr r0, _08159D1C @ =0x04000006
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x9F
	bhi _08159DAA
	ldr r0, _08159D20 @ =0x03001020
	ldr r5, [r0, #0x00]
	ldr r2, _08159D24 @ =0x00001CC2
	adds r1, r5, r2
	movs r7, #0x00
	ldsh r1, [r1, r7]
	mov r12, r0
	ldr r6, _08159D28 @ =0x0300101C
	cmp r1, #0x00
	beq _08159D04
	ldr r0, [r6, #0x00]
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r4, r0
	blt _08159D04
	ldr r1, _08159D2C @ =0x040000B0
	adds r2, #0x02
	adds r0, r5, r2
	str r0, [r1, #0x00]
	movs r0, #0xA0
	lsls r0, r0, #0x13
	str r0, [r1, #0x04]
	ldr r0, _08159D30 @ =0x84000020
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r3, _08159D34 @ =0x04000014
	ldr r7, _08159D38 @ =0x00001CA4
	adds r0, r5, r7
	ldr r1, [r0, #0x00]
	lsls r2, r4, #0x01
	adds r7, #0xA0
	adds r0, r5, r7
	adds r0, r0, r2
	asrs r1, r1, #0x08
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	strh r1, [r3, #0x00]
_08159D04:
	ldr r3, [r6, #0x00]
	movs r0, #0x02
	ldsh r1, [r3, r0]
	cmp r4, r1
	bgt _08159D40
	ldr r1, _08159D3C @ =0x04000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	b _08159DA8
	.byte 0x00, 0x00
_08159D1C: .4byte 0x04000006
_08159D20: .4byte 0x03001020
_08159D24: .4byte 0x00001CC2
_08159D28: .4byte 0x0300101C
_08159D2C: .4byte 0x040000B0
_08159D30: .4byte 0x84000020
_08159D34: .4byte 0x04000014
_08159D38: .4byte 0x00001CA4
_08159D3C: .4byte 0x04000050
_08159D40:
	movs r0, #0xA0
	subs r0, r0, r1
	cmp r4, r0
	ble _08159D58
	ldr r1, _08159D54 @ =0x04000050
	movs r0, #0xDF
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x1F
	b _08159DA8
_08159D54: .4byte 0x04000050
_08159D58:
	mov r1, r12
	ldr r0, [r1, #0x00]
	ldr r2, _08159D84 @ =0x00001CBC
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r7, #0xA5
	lsls r7, r7, #0x03
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _08159D8C
	ldr r1, _08159D88 @ =0x04000018
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x80
	subs r0, r0, r4
	b _08159DA8
	.byte 0x00, 0x00
_08159D84: .4byte 0x00001CBC
_08159D88: .4byte 0x04000018
_08159D8C:
	ldr r2, _08159DB0 @ =0x04000018
	lsls r1, r4, #0x03
	adds r1, r3, r1
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x00]
	adds r2, #0x38
	ldrh r0, [r1, #0x08]
	strh r0, [r2, #0x00]
	ldr r1, _08159DB4 @ =0x04000050
	ldr r2, _08159DB8 @ =0x00001F44
	adds r0, r2, #0x0
_08159DA8:
	strh r0, [r1, #0x00]
_08159DAA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08159DB0: .4byte 0x04000018
_08159DB4: .4byte 0x04000050
_08159DB8: .4byte 0x00001F44
