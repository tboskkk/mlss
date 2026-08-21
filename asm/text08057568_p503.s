	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8154594
sub_8154594:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_815F8F4
	ldr r0, _08154684 @ =0x08CDC6B0
	str r0, [r5, #0x30]
	movs r0, #0x00
	mov r8, r0
	strh r4, [r5, #0x38]
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_815F97C
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x11]
	movs r6, #0x0D
	negs r6, r6
	adds r0, r6, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldr r1, _08154688 @ =0x0000500A
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x34]
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x02
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x34]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x34]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x34]
	movs r0, #0x78
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x34]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	ldr r1, [r5, #0x34]
	movs r0, #0x13
	strh r0, [r1, #0x0E]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1E
	ldrb r2, [r3, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r2, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r1
	ldrb r1, [r2, #0x1F]
	ands r6, r1
	orrs r6, r0
	strb r6, [r2, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r3, #0x1F]
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	bl sub_815FA3C
	ldr r3, [r5, #0x34]
	ldrb r1, [r0, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1F]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08154684: .4byte 0x08CDC6B0
_08154688: .4byte 0x0000500A
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
	thumb_func_start sub_81548A0
sub_81548A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [sp, #0x008]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0x0
	cmp r0, #0x04
	beq _081548E4
	cmp r0, #0x04
	bgt _081548BE
	cmp r0, #0x03
	beq _081548C4
	b _081548FC
_081548BE:
	cmp r3, #0x05
	beq _08154942
	b _081548FC
_081548C4:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	ldr r0, _081548E0 @ =0x0000FE0C
	strh r0, [r4, #0x18]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _08154942
_081548E0: .4byte 0x0000FE0C
_081548E4:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x02
	strb r0, [r1, #0x00]
	b _08154942
_081548FC:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _08154942
	ldrh r0, [r4, #0x1C]
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r4, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	ldrh r0, [r4, #0x18]
	adds r0, r0, r1
	strh r0, [r4, #0x18]
	movs r2, #0x14
	ldsh r1, [r4, r2]
	ldr r0, [r4, #0x04]
	adds r0, r0, r1
	str r0, [r4, #0x04]
	movs r0, #0x18
	ldsh r1, [r4, r0]
	ldr r0, [r4, #0x08]
	adds r0, r0, r1
	str r0, [r4, #0x08]
	ldr r1, [r4, #0x3C]
	cmp r0, r1
	ble _08154942
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x3C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, _0815494C @ =0x0000FE0C
	strh r0, [r4, #0x18]
_08154942:
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815494C: .4byte 0x0000FE0C
