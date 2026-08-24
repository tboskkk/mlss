	.syntax unified
	.text

	thumb_func_start sub_8150618
sub_8150618:
	push {r4, r5, lr}
	adds r3, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r4, [r0, #0x00]
	subs r1, #0xB0
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x2C
	ldsh r0, [r0, r1]
	cmp r0, #0xDF
	ble _081506A6
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08150684 @ =0x0000020D
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08150688 @ =0x00000216
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0xFA
	lsls r0, r0, #0x02
	bl sub_81DD77C
	cmp r0, #0xF9
	bls _08150690
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_814E554
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0815068C @ =0x08150729
	b _081506A0
_08150684: .4byte 0x0000020D
_08150688: .4byte 0x00000216
_0815068C: .4byte 0x08150729
_08150690:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_814E554
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _081506AC @ =0x0815071D
_081506A0:
	str r0, [r1, #0x00]
	ldr r0, _081506B0 @ =0x08150735
	str r0, [r5, #0x00]
_081506A6:
	pop {r4, r5}
	pop {r0}
	bx r0
_081506AC: .4byte sub_815071C
_081506B0: .4byte sub_8150734
