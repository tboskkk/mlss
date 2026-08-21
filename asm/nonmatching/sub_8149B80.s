	.syntax unified
	.text

	thumb_func_start sub_8149B80
sub_8149B80:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r1, #0x0
	mov r9, r2
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r6, r7, r1
	movs r1, #0x00
	mov r8, r1
	strh r0, [r6, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r7, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	mov r1, r8
	str r1, [sp, #0x000]
	movs r1, #0x01
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r6, #0x00]
	adds r5, r5, r0
	ldrb r0, [r5, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x20
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08149C44 @ =0x08149C4D
	mov r1, r9
	str r0, [r1, #0x00]
	ldr r0, _08149C48 @ =0x0814B849
	str r0, [r1, #0x04]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08149C44: .4byte sub_8149C4C
_08149C48: .4byte sub_814B848
