	.syntax unified
	.text

	thumb_func_start sub_8027688
sub_8027688:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_801A6B0
	ldr r0, _08027714 @ =0x0300034C
	ldr r1, _08027718 @ =0x0000089C
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
	beq _080276D2
	movs r1, #0x03
	bl sub_8057B58
	movs r0, #0x00
	str r0, [r4, #0x00]
_080276D2:
	movs r0, #0x02
	movs r1, #0x00
	bl sub_8018B78
	movs r0, #0x02
	strb r0, [r5, #0x00]
	ldr r1, _0802771C @ =0x03000C24
	strb r0, [r1, #0x00]
	ldr r1, _08027720 @ =0x03000C78
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080276EE
	ldr r0, _08027724 @ =0x0800063C
	str r0, [r1, #0x00]
_080276EE:
	ldr r4, _08027728 @ =0x081E2674
	movs r0, #0x4C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r3, [r1, #0x00]
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_8051628
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08027714: .4byte 0x0300034C
_08027718: .4byte 0x0000089C
_0802771C: .4byte 0x03000C24
_08027720: .4byte 0x03000C78
_08027724: .4byte 0x0800063C
_08027728: .4byte dword_81E2674 @ =0x081E2674
