	.syntax unified
	.text

	thumb_func_start sub_80EFE7C
sub_80EFE7C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r2, _080EFEB4 @ =0x03000FD0
	ldr r3, [r2, #0x00]
	ldr r1, _080EFEB8 @ =0x0000055E
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	ldr r0, _080EFEBC @ =0x0000603F
	ands r0, r1
	adds r5, r2, #0x0
	cmp r0, #0x00
	bne _080EFE96
	b _080EFFEE
_080EFE96:
	ldr r2, _080EFEC0 @ =0x0000055F
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080EFEC4
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r3, r3, r0
	mov r12, r3
	b _080EFED0
	.byte 0x00, 0x00
_080EFEB4: .4byte 0x03000FD0
_080EFEB8: .4byte 0x0000055E
_080EFEBC: .4byte 0x0000603F
_080EFEC0: .4byte 0x0000055F
_080EFEC4:
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r4, #0x97
	lsls r4, r4, #0x01
	adds r4, r4, r0
	mov r12, r4
_080EFED0:
	ldr r0, [r5, #0x00]
	ldr r1, _080EFEFC @ =0x0000055D
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r12
	ldrh r2, [r2, #0x00]
	adds r1, r0, r2
	mov r3, r12
	strh r1, [r3, #0x00]
	lsls r0, r1, #0x10
	cmp r0, #0x00
	blt _080EFF04
	ldrh r1, [r3, #0x00]
	ldr r0, [r5, #0x00]
	ldr r4, _080EFF00 @ =0x0000055E
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x13
	lsrs r3, r0, #0x19
	b _080EFF1C
_080EFEFC: .4byte 0x0000055D
_080EFF00: .4byte 0x0000055E
_080EFF04:
	negs r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r5, #0x00]
	ldr r2, _080EFFF4 @ =0x0000055E
	adds r0, r0, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x19
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080EFF1C:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x00]
	ldr r2, _080EFFF4 @ =0x0000055E
	adds r4, r0, r2
	ldrh r0, [r4, #0x00]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x19
	cmp r1, r0
	blt _080EFF78
	ldrb r2, [r4, #0x00]
	movs r0, #0x3F
	ands r0, r2
	cmp r0, #0x00
	beq _080EFF66
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1A
	subs r0, #0x01
	movs r1, #0x3F
	ands r0, r1
	movs r1, #0x40
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	cmp r0, #0x00
	bne _080EFF66
	ldr r2, [r5, #0x00]
	ldr r4, _080EFFF8 @ =0x0000055F
	adds r2, r2, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
_080EFF66:
	mov r0, r12
	strh r3, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r2, _080EFFFC @ =0x0000055D
	adds r1, r1, r2
	movs r0, #0x00
	ldsb r0, [r1, r0]
	negs r0, r0
	strb r0, [r1, #0x00]
_080EFF78:
	ldr r2, [r5, #0x00]
	ldr r3, _080EFFF8 @ =0x0000055F
	adds r0, r2, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0x20
	bne _080EFFEE
	ldr r4, _080EFFFC @ =0x0000055D
	adds r0, r2, r4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, r12
	ldrh r1, [r0, #0x00]
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080EFFA8
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080EFFA8:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _080EFFB6
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080EFFB6:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	cmp r1, #0x00
	bgt _080EFFEE
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r3, #0x98
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	movs r4, #0x97
	lsls r4, r4, #0x01
	adds r0, r0, r4
	strh r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	ldr r0, _080EFFF8 @ =0x0000055F
	adds r1, r1, r0
	ldrb r2, [r1, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EFFEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080EFFF4: .4byte 0x0000055E
_080EFFF8: .4byte 0x0000055F
_080EFFFC: .4byte 0x0000055D
