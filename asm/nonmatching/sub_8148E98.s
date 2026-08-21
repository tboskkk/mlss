	.syntax unified
	.text

	thumb_func_start sub_8148E98
sub_8148E98:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x58
	adds r0, r0, r5
	mov r10, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r7, r5, r1
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x00]
	mov r8, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	mov r9, r0
	ldrh r4, [r4, #0x0A]
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08148F06
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08148F12
_08148F06:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08148F12:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	mov r0, r8
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r3, r9
	bl sub_813AA5C
	lsls r0, r4, #0x08
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	ldr r2, _08148FC4 @ =0x000002DE
	adds r0, r5, r2
	ldrh r2, [r0, #0x00]
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_813B6DC
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x02
	bl sub_8047154
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldrb r1, [r3, #0x00]
	movs r2, #0x08
	negs r2, r2
	adds r0, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x24
	ldrb r0, [r1, #0x00]
	ands r2, r0
	strb r2, [r1, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08148FC8 @ =0x08148FCD
	ldr r2, [sp, #0x018]
	str r0, [r2, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08148FC4: .4byte 0x000002DE
_08148FC8: .4byte sub_8148FCC
