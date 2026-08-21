	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8150498
sub_8150498:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081504BC
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _081504E6
_081504BC:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_814EE18
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081504E6
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	ldr r0, _081504EC @ =0x081506DD
	str r0, [r6, #0x00]
	ldr r0, _081504F0 @ =0x081506B5
	str r0, [r6, #0x0C]
_081504E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081504EC: .4byte sub_81506DC
_081504F0: .4byte sub_81506B4
	thumb_func_start sub_81504F4
sub_81504F4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	ldr r0, _08150584 @ =0x0000033E
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_814EDAC
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x10
	bl sub_8046A90
	adds r0, r4, #0x0
	bl sub_8046D18
	adds r0, r4, #0x0
	bl sub_80479A8
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	movs r2, #0xEE
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r0, [r4, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r2, #0x08
	adds r1, r4, r2
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xF4
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x18]
	subs r2, #0x14
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _08150588 @ =0x0813B381
	str r0, [r1, #0x00]
	subs r2, #0x30
	adds r1, r4, r2
	ldr r0, _0815058C @ =0x0814EADD
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08150584: .4byte 0x0000033E
_08150588: .4byte sub_813B380
_0815058C: .4byte sub_814EADC
	thumb_func_start sub_8150590
sub_8150590:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x00
	bl sub_804776C
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81505A8
sub_81505A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xDF
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	beq _081505C4
	cmp r1, #0x01
	beq _081505DC
	b _081505F4
_081505C4:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	b _081505F4
_081505DC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r3, #0x00
	bl sub_801E150
_081505F4:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08150614 @ =0x0814E1BD
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08150614: .4byte sub_814E1BC
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
	thumb_func_start sub_81506B4
sub_81506B4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_815041C
	ldr r3, _081506D8 @ =0x0814E8B1
	str r3, [r5, #0x0C]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl _call_via_r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081506D8: .4byte sub_814E8B0
	thumb_func_start sub_81506DC
sub_81506DC:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	bl sub_8139E88
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _081506FE
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_815033C
	b _08150714
_081506FE:
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08150714
	ldr r0, [r5, #0x0C]
	str r0, [r5, #0x00]
_08150714:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
