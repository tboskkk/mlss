	.syntax unified
	.text

	thumb_func_start sub_8018E88
sub_8018E88:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	ldr r0, _08018F90 @ =0x0300034C
	ldr r1, _08018F94 @ =0x0000088C
	adds r1, r1, r0
	mov r8, r1
	ldrb r5, [r1, #0x00]
	lsls r0, r5, #0x1D
	lsrs r0, r0, #0x1E
	cmp r6, r0
	bne _08018EBA
	cmp r6, #0x01
	bne _08018F76
	movs r0, #0x06
	ands r0, r5
	cmp r0, #0x02
	bne _08018F76
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x19
	cmp r7, r0
	beq _08018F76
_08018EBA:
	ldr r1, _08018F98 @ =0x040000BC
	ldrh r2, [r1, #0x0A]
	ldr r3, _08018F9C @ =0x0000C5FF
	adds r0, r3, #0x0
	ands r0, r2
	strh r0, [r1, #0x0A]
	ldrh r4, [r1, #0x0A]
	ldr r2, _08018FA0 @ =0x00007FFF
	adds r0, r2, #0x0
	ands r0, r4
	strh r0, [r1, #0x0A]
	ldrh r0, [r1, #0x0A]
	ldr r0, _08018FA4 @ =0x040000C8
	ldrh r1, [r0, #0x0A]
	ands r3, r1
	strh r3, [r0, #0x0A]
	ldrh r1, [r0, #0x0A]
	ands r2, r1
	strh r2, [r0, #0x0A]
	ldrh r0, [r0, #0x0A]
	movs r0, #0x06
	ands r0, r5
	cmp r0, #0x02
	bne _08018F12
	ldr r3, _08018FA8 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _08018FAC @ =0x02000004
	ldrh r1, [r2, #0x00]
	ldr r0, _08018FB0 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08018FB4 @ =0x04000200
	ldrh r1, [r2, #0x00]
	ldr r0, _08018FB8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x02
	ldrh r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x01
	strh r0, [r3, #0x00]
_08018F12:
	movs r0, #0x03
	adds r1, r6, #0x0
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x07
	negs r0, r0
	ands r0, r5
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x00]
	cmp r6, #0x01
	bne _08018F76
	ldr r1, _08018FBC @ =0x080196BD
	movs r0, #0x03
	bl sub_8018B78
	ldr r3, _08018FA8 @ =0x04000208
	movs r0, #0x00
	strh r0, [r3, #0x00]
	ldr r2, _08018FAC @ =0x02000004
	ldrh r1, [r2, #0x00]
	movs r0, #0xFF
	ands r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r7, #0x08
	movs r1, #0x20
	orrs r0, r1
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08018FB4 @ =0x04000200
	ldrh r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	orrs r0, r2
	strh r0, [r1, #0x00]
	strh r6, [r3, #0x00]
	movs r0, #0x7F
	ands r7, r0
	lsls r2, r7, #0x03
	mov r0, r8
	ldrh r1, [r0, #0x00]
	ldr r0, _08018FC0 @ =0xFFFFFC07
	ands r0, r1
	orrs r0, r2
	mov r1, r8
	strh r0, [r1, #0x00]
_08018F76:
	ldr r0, _08018F90 @ =0x0300034C
	ldr r1, _08018F94 @ =0x0000088C
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018F90: .4byte 0x0300034C
_08018F94: .4byte 0x0000088C
_08018F98: .4byte 0x040000BC
_08018F9C: .4byte 0x0000C5FF
_08018FA0: .4byte 0x00007FFF
_08018FA4: .4byte 0x040000C8
_08018FA8: .4byte 0x04000208
_08018FAC: .4byte 0x02000004
_08018FB0: .4byte 0x0000FFDF
_08018FB4: .4byte 0x04000200
_08018FB8: .4byte 0x0000FFFB
_08018FBC: .4byte sub_80196BC
_08018FC0: .4byte 0xFFFFFC07
