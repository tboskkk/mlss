	.syntax unified
	.text

	thumb_func_start sub_8147C8C
sub_8147C8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r2, r2, r5
	mov r9, r2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08147CD8
	adds r0, r3, #0x0
	adds r1, r5, #0x0
	bl sub_81489E0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08147CD4
	ldr r0, _08147CD0 @ =0x08147DC5
	mov r1, r8
	str r0, [r1, #0x00]
	b _08147DAE
_08147CD0: .4byte sub_8147DC4
_08147CD4:
	ldrh r0, [r7, #0x1A]
	b _08147CDA
_08147CD8:
	subs r0, #0x01
_08147CDA:
	strh r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08147DAE
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x3B
	bls _08147D74
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	adds r0, #0x4A
	ldrb r0, [r0, #0x00]
	adds r2, #0x22
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	ldr r2, _08147D6C @ =0x083A05EC
	ldr r1, _08147D70 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x10
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	b _08147DA4
	.byte 0x00, 0x00
_08147D6C: .4byte dword_83A05EC @ =0x083A05EC
_08147D70: .4byte 0x00000216
_08147D74:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	bl sub_8047928
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08147DA4:
	ldr r0, _08147DBC @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _08147DC0 @ =0x08147B9D
	str r0, [r1, #0x0C]
_08147DAE:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08147DBC: .4byte sub_813B1E8
_08147DC0: .4byte sub_8147B9C
