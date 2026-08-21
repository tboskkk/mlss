	.syntax unified
	.text

	thumb_func_start sub_802772C
sub_802772C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_801A6B0
	ldr r0, _080277AC @ =0x0300034C
	ldr r1, _080277B0 @ =0x0000089C
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xFD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	movs r0, #0x00
	movs r1, #0x80
	movs r2, #0x08
	bl sub_80193B4
	adds r2, r5, #0x0
	adds r2, #0xFC
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_80273E4
	movs r0, #0xC1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _08027776
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r4, #0x00]
_08027776:
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	movs r0, #0x02
	strb r0, [r5, #0x00]
	ldr r1, _080277B4 @ =0x03000C24
	strb r0, [r1, #0x00]
	ldr r1, _080277B8 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08027792
	ldr r0, _080277BC @ =0x0800063C
	str r0, [r1, #0x00]
_08027792:
	ldr r1, _080277C0 @ =0x0000012D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r0, r1, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	bl sub_812F5A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080277AC: .4byte 0x0300034C
_080277B0: .4byte 0x0000089C
_080277B4: .4byte 0x03000C24
_080277B8: .4byte 0x03000C78
_080277BC: .4byte 0x0800063C
_080277C0: .4byte 0x0000012D
