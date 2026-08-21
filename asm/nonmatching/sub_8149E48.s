	.syntax unified
	.text

	thumb_func_start sub_8149E48
sub_8149E48:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r9, r2
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r6, [r0, #0x00]
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08149E82
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _08149E8E
_08149E82:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08149E8E:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r3, [r0, #0x28]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldrh r1, [r6, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r1, [r0, #0x14]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strh r1, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149EF0 @ =0x0814B7A5
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08149EF0: .4byte sub_814B7A4
