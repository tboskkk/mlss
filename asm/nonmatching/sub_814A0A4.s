	.syntax unified
	.text

	thumb_func_start sub_814A0A4
sub_814A0A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r7, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x010
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A0E0
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	b _0814A0EC
_0814A0E0:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814A0EC:
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
	ldrh r1, [r7, #0x08]
	movs r0, #0xB5
	lsls r0, r0, #0x02
	adds r2, r4, r0
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x14]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x2C]
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
	ldr r0, _0814A160 @ =0x0814B7A5
	str r0, [r6, #0x00]
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814A164 @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814A16C
	ldr r0, _0814A168 @ =0x08149EF5
	b _0814A16E
_0814A160: .4byte sub_814B7A4
_0814A164: .4byte 0x00007FFF
_0814A168: .4byte sub_8149EF4
_0814A16C:
	ldr r0, _0814A180 @ =0x0814A185
_0814A16E:
	str r0, [r6, #0x04]
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814A180: .4byte sub_814A184
