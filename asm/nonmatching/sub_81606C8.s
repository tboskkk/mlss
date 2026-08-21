	.syntax unified
	.text

	thumb_func_start sub_81606C8
sub_81606C8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	mov r12, r1
	movs r4, #0x00
	movs r7, #0x80
	lsls r7, r7, #0x03
	mov r2, sp
	movs r5, #0x10
	negs r5, r5
_081606DC:
	movs r1, #0x82
	lsls r1, r1, #0x04
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	muls r0, r4
	add r0, r12
	ldr r3, _08160724 @ =0x00000808
	adds r1, r6, r3
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r3, [r0, #0x00]
	ldr r1, _08160728 @ =0x000003FF
	ands r1, r3
	movs r0, #0xD3
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _08160702
	b _081607F0
_08160702:
	cmp r1, r0
	bgt _08160754
	cmp r1, #0xCF
	beq _081607D0
	cmp r1, #0xCF
	bgt _0816073A
	cmp r1, #0xB2
	beq _081607B0
	cmp r1, #0xB2
	bgt _0816072C
	cmp r1, #0xA6
	ble _0816071C
	b _08160830
_0816071C:
	cmp r1, #0xA3
	bge _08160722
	b _08160830
_08160722:
	b _081607B0
_08160724: .4byte 0x00000808
_08160728: .4byte 0x000003FF
_0816072C:
	cmp r1, #0xC4
	ble _08160732
	b _08160830
_08160732:
	cmp r1, #0xC0
	bge _08160738
	b _08160830
_08160738:
	b _081607B0
_0816073A:
	cmp r1, #0xF2
	beq _08160810
	cmp r1, #0xF2
	bgt _0816074C
	cmp r1, #0xF0
	beq _081607D0
	cmp r1, #0xF1
	beq _081607F0
	b _08160830
_0816074C:
	ldr r0, _08160750 @ =0x00000181
	b _081607A6
_08160750: .4byte 0x00000181
_08160754:
	ldr r0, _08160778 @ =0x000001ED
	cmp r1, r0
	bgt _08160788
	subs r0, #0x03
	cmp r1, r0
	bge _081607B0
	subs r0, #0x23
	cmp r1, r0
	beq _081607B0
	cmp r1, r0
	bgt _0816077C
	subs r0, #0x20
	cmp r1, r0
	beq _08160810
	adds r0, #0x19
	cmp r1, r0
	beq _081607B0
	b _08160830
_08160778: .4byte 0x000001ED
_0816077C:
	movs r0, #0xF1
	lsls r0, r0, #0x01
	cmp r1, r0
	bgt _08160830
	subs r0, #0x02
	b _081607AC
_08160788:
	ldr r0, _081607A0 @ =0x0000026E
	cmp r1, r0
	beq _081607B0
	cmp r1, r0
	bgt _081607A4
	subs r0, #0x7F
	cmp r1, r0
	beq _081607D0
	adds r0, #0x21
	cmp r1, r0
	beq _081607D0
	b _08160830
_081607A0: .4byte 0x0000026E
_081607A4:
	ldr r0, _081607C4 @ =0x0000028D
_081607A6:
	cmp r1, r0
	bgt _08160830
	subs r0, #0x01
_081607AC:
	cmp r1, r0
	blt _08160830
_081607B0:
	ldr r1, _081607C8 @ =0xFFFFF0FF
	ldr r0, [sp, #0x000]
	ands r0, r1
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _081607CC @ =0xFFFFFF00
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x000]
	b _0816084C
_081607C4: .4byte 0x0000028D
_081607C8: .4byte 0xFFFFF0FF
_081607CC: .4byte 0xFFFFFF00
_081607D0:
	ands r3, r7
	cmp r3, #0x00
	beq _081607E0
	ldrb r0, [r2, #0x01]
	adds r1, r5, #0x0
	ands r1, r0
	movs r0, #0x02
	b _081607E8
_081607E0:
	ldrb r0, [r2, #0x01]
	adds r1, r5, #0x0
	ands r1, r0
	movs r0, #0x01
_081607E8:
	orrs r1, r0
	strb r1, [r2, #0x01]
	strb r4, [r2, #0x00]
	b _0816084A
_081607F0:
	ands r3, r7
	cmp r3, #0x00
	beq _08160800
	ldrb r0, [r2, #0x01]
	adds r1, r5, #0x0
	ands r1, r0
	movs r0, #0x04
	b _08160808
_08160800:
	ldrb r0, [r2, #0x01]
	adds r1, r5, #0x0
	ands r1, r0
	movs r0, #0x05
_08160808:
	orrs r1, r0
	strb r1, [r2, #0x01]
	strb r4, [r2, #0x00]
	b _0816084A
_08160810:
	ands r3, r7
	cmp r3, #0x00
	beq _08160820
	ldrb r0, [r2, #0x01]
	adds r1, r5, #0x0
	ands r1, r0
	movs r0, #0x03
	b _08160828
_08160820:
	ldrb r0, [r2, #0x01]
	adds r1, r5, #0x0
	ands r1, r0
	movs r0, #0x06
_08160828:
	orrs r1, r0
	strb r1, [r2, #0x01]
	strb r4, [r2, #0x00]
	b _0816084A
_08160830:
	adds r4, #0x01
	cmp r4, #0x1F
	bgt _08160838
	b _081606DC
_08160838:
	mov r2, sp
	ldrb r1, [r2, #0x01]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x01]
	movs r1, #0x20
	mov r0, sp
	strb r1, [r0, #0x00]
_0816084A:
	ldr r0, [sp, #0x000]
_0816084C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
