	.syntax unified
	.text

	thumb_func_start sub_8078B94
sub_8078B94:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08078BB0
	b _08078CFE
_08078BB0:
	ldr r0, _08078BCC @ =0x03000F64
	str r4, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08078BD4
	ldr r0, _08078BD0 @ =0x03000F68
	strb r2, [r0, #0x00]
	b _08078BDA
	.byte 0x00, 0x00
_08078BCC: .4byte 0x03000F64
_08078BD0: .4byte 0x03000F68
_08078BD4:
	ldr r1, _08078D10 @ =0x03000F68
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08078BDA:
	ldr r0, [r5, #0x28]
	ldr r4, [r0, #0x38]
	movs r7, #0x84
	adds r7, r7, r5
	mov r9, r7
	movs r0, #0x88
	adds r0, r0, r5
	mov r10, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	str r1, [sp, #0x00C]
	movs r2, #0x79
	adds r2, r2, r5
	mov r8, r2
	adds r3, r5, #0x0
	adds r3, #0x7C
	str r3, [sp, #0x008]
	adds r7, r5, #0x0
	adds r7, #0x7A
	str r7, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x010]
	cmp r4, #0x00
	beq _08078C26
	ldr r7, _08078D14 @ =0x00002222
_08078C0E:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _08078C20
	adds r0, r4, #0x0
	bl sub_807C298
_08078C20:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _08078C0E
_08078C26:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08078C2E
	adds r1, #0xFF
_08078C2E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08078C38
	adds r2, #0xFF
_08078C38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08078C42
	adds r3, #0xFF
_08078C42:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08078D18 @ =0x00002A6E
	bl sub_80DF024
	bl sub_8199F30
	movs r2, #0x03
	ands r2, r0
	ldr r1, _08078D1C @ =0x03000F60
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r4, [r0, r7]
	mov r12, r4
	movs r0, #0x00
	adds r2, #0x01
	cmp r0, r2
	bge _08078C90
	adds r4, #0x01
_08078C70:
	adds r1, r0, #0x1
_08078C72:
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r6, [r0, r7]
	adds r0, #0x0A
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	beq _08078C72
	cmp r6, r4
	beq _08078C72
	adds r0, r1, #0x0
	cmp r0, r2
	blt _08078C70
_08078C90:
	ldr r1, _08078D1C @ =0x03000F60
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r1, #0x00]
	mov r0, r12
	subs r2, r6, r0
	lsls r2, r2, #0x18
	ldr r4, [r5, #0x28]
	adds r3, r4, #0x0
	adds r3, #0xD8
	ldr r0, _08078D20 @ =0x083B87EC
	lsrs r2, r2, #0x16
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r3, r10
	str r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xE0
	ldr r0, _08078D24 @ =0x083B87FC
	adds r2, r2, r0
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x008]
	strh r0, [r2, #0x00]
	ldr r3, [sp, #0x004]
	strh r1, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r4, [sp, #0x010]
	strh r0, [r4, #0x00]
	ldr r0, _08078D28 @ =0x08078D2D
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08078CFE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078D10: .4byte 0x03000F68
_08078D14: .4byte 0x00002222
_08078D18: .4byte 0x00002A6E
_08078D1C: .4byte 0x03000F60
_08078D20: .4byte 0x083B87EC
_08078D24: .4byte 0x083B87FC
_08078D28: .4byte sub_8078D2C
