	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_815468C
sub_815468C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x010]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x03
	beq _081546B6
	cmp r0, #0x04
	beq _081546CE
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r6, r0, #0x0
	cmp r1, #0x01
	beq _081546EE
	cmp r1, #0x01
	bgt _081546B4
	b _08154898
_081546B4:
	b _081546E8
_081546B6:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08154898
_081546CE:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	ldr r2, [r4, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	b _08154898
_081546E8:
	cmp r1, #0x02
	beq _0815478C
	b _08154898
_081546EE:
	movs r0, #0x14
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	ldr r1, _08154734 @ =0x08198584
	ldrh r5, [r4, #0x1C]
	ldrb r0, [r4, #0x1C]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0815470C
	adds r0, #0x3F
_0815470C:
	asrs r0, r0, #0x06
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	strh r0, [r4, #0x14]
	adds r1, r5, #0x1
	movs r2, #0xFF
	ands r1, r2
	strh r1, [r4, #0x1C]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08154738
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	b _08154746
_08154734: .4byte 0x08198584
_08154738:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
_08154746:
	strb r1, [r0, #0x11]
	ldr r0, _0815477C @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r2, _08154780 @ =0x00001C98
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	ldr r1, _08154784 @ =0xFFFFD800
	cmp r0, r1
	bgt _08154760
	b _08154898
_08154760:
	adds r0, r4, #0x0
	movs r1, #0x35
	bl sub_815FA70
	movs r0, #0x00
	strh r0, [r4, #0x1C]
	strh r0, [r4, #0x20]
	ldr r1, _08154788 @ =0x0000FCE0
	strh r1, [r4, #0x18]
	strh r0, [r4, #0x14]
	movs r0, #0x02
	strb r0, [r6, #0x00]
	b _08154898
	.byte 0x00, 0x00
_0815477C: .4byte 0x03001018
_08154780: .4byte 0x00001C98
_08154784: .4byte 0xFFFFD800
_08154788: .4byte 0x0000FCE0
_0815478C:
	ldrh r0, [r4, #0x1C]
	ldrh r1, [r4, #0x14]
	adds r0, r0, r1
	strh r0, [r4, #0x14]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x20]
	adds r0, r0, r2
	ldrh r1, [r4, #0x18]
	adds r1, r1, r0
	strh r1, [r4, #0x18]
	movs r0, #0x14
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x04]
	adds r0, r0, r2
	str r0, [r4, #0x04]
	movs r0, #0x18
	ldsh r2, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r2
	str r0, [r4, #0x08]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	ble _0815480C
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	movs r2, #0x02
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x0D
	negs r1, r1
	ands r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #0x1F]
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x1F]
	movs r1, #0x3F
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x1F]
	b _0815485E
_0815480C:
	asrs r1, r0, #0x08
	ldr r0, _08154848 @ =0x03001014
	ldr r0, [r0, #0x00]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r1, r0
	bge _0815485E
	ldrh r0, [r4, #0x38]
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	beq _0815484C
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #0x12]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r4, #0x38]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r4, #0x38]
	b _0815485E
_08154848: .4byte 0x03001014
_0815484C:
	ldr r2, [r4, #0x34]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0815485E
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
_0815485E:
	ldr r0, _08154880 @ =0x03001018
	ldr r0, [r0, #0x00]
	ldr r1, _08154884 @ =0x00001C98
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x04]
	ldr r1, [r4, #0x04]
	subs r0, r0, r1
	cmp r0, #0x00
	ble _08154888
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	b _08154896
_08154880: .4byte 0x03001018
_08154884: .4byte 0x00001C98
_08154888:
	adds r0, r4, #0x0
	bl sub_815FA3C
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
_08154896:
	strb r1, [r0, #0x11]
_08154898:
	movs r0, #0x00
	pop {r4, r5, r6}
	pop {r1}
	bx r1
