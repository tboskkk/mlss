	.syntax unified
	.text

	thumb_func_start sub_80EFC08
sub_80EFC08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	movs r0, #0x03
	mov r9, r0
	ldr r0, _080EFD58 @ =0x03000FD0
	ldr r5, [r0, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r4, r5, #0x0
	adds r4, #0xA0
_080EFC24:
	ldrh r1, [r4, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EFC46
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFC46
	ldrh r1, [r4, #0x00]
	adds r0, r6, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080EFC46:
	ldrh r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EFC5C
	mov r2, r8
	ldr r0, [r2, #0x00]
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA778
_080EFC5C:
	mov r1, r9
	lsls r0, r1, #0x10
	ldr r2, _080EFD5C @ =0xFFFF0000
	adds r0, r0, r2
	adds r4, #0xA8
	adds r5, #0xA8
	lsrs r1, r0, #0x10
	mov r9, r1
	cmp r0, #0x00
	bgt _080EFC24
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	ldr r4, _080EFD60 @ =0x0000010B
	adds r2, r0, r4
	ldrb r2, [r2, #0x00]
	mov r9, r2
	adds r6, r0, #0x0
	adds r6, #0x28
	cmp r2, #0x00
	beq _080EFD3E
_080EFC86:
	ldr r1, [r6, #0x00]
	adds r7, r1, #0x0
	adds r7, #0x58
	adds r4, r1, #0x0
	adds r4, #0xF8
	ldrh r2, [r4, #0x00]
	movs r0, #0x84
	ands r0, r2
	cmp r0, #0x00
	bne _080EFD2C
	movs r5, #0x02
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _080EFCB6
	adds r0, r1, #0x0
	bl sub_8047B78
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFCB6
	ldrh r0, [r4, #0x00]
	eors r0, r5
	strh r0, [r4, #0x00]
_080EFCB6:
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r5, #0x40
	movs r0, #0x40
	ands r0, r1
	adds r4, r2, #0x0
	cmp r0, #0x00
	beq _080EFCDA
	ldr r0, [r6, #0x00]
	bl sub_8047AF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFCDA
	ldrh r0, [r4, #0x00]
	eors r0, r5
	strh r0, [r4, #0x00]
_080EFCDA:
	ldrh r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080EFCF0
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldr r1, [r6, #0x00]
	adds r2, r7, #0x0
	bl sub_80EB490
_080EFCF0:
	ldrh r1, [r4, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x01
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EFD16
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EFD16
	ldrh r1, [r4, #0x00]
	adds r0, r5, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080EFD16:
	ldrh r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080EFD2C
	mov r4, r8
	ldr r0, [r4, #0x00]
	adds r0, #0x1C
	adds r1, r7, #0x0
	bl sub_80EA778
_080EFD2C:
	mov r1, r9
	lsls r0, r1, #0x10
	ldr r2, _080EFD5C @ =0xFFFF0000
	adds r0, r0, r2
	adds r6, #0x04
	lsrs r4, r0, #0x10
	mov r9, r4
	cmp r0, #0x00
	bgt _080EFC86
_080EFD3E:
	ldr r0, _080EFD58 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r0, _080EFD64 @ =0x00000549
	adds r1, r2, r0
	ldrb r3, [r1, #0x00]
	movs r0, #0x00
	ldsb r0, [r1, r0]
	cmp r0, #0x00
	beq _080EFD68
	subs r0, r3, #0x1
	strb r0, [r1, #0x00]
	b _080EFE5E
	.byte 0x00, 0x00
_080EFD58: .4byte 0x03000FD0
_080EFD5C: .4byte 0xFFFF0000
_080EFD60: .4byte 0x0000010B
_080EFD64: .4byte 0x00000549
_080EFD68:
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r6, r2, r1
	ldr r4, _080EFDC4 @ =0x0000054A
	adds r0, r2, r4
	ldrh r7, [r0, #0x00]
	movs r0, #0x00
	mov r9, r0
	cmp r7, #0x00
	beq _080EFE5E
	movs r1, #0x01
	mov r10, r1
_080EFD80:
	adds r0, r7, #0x0
	mov r2, r10
	ands r0, r2
	mov r4, r9
	lsls r3, r4, #0x10
	cmp r0, #0x00
	beq _080EFE4C
	adds r5, r6, #0x0
	ldr r4, [r6, #0x00]
	cmp r4, #0x00
	beq _080EFDB4
	ldr r1, _080EFDC8 @ =0x0000020E
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _080EFDB4
	movs r2, #0xCF
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x07
	ands r0, r1
	cmp r0, #0x01
	bne _080EFE4C
_080EFDB4:
	ldrb r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080EFDCC
	subs r0, #0x01
	strb r0, [r5, #0x08]
	mov r4, r9
	lsls r3, r4, #0x10
	b _080EFE4C
_080EFDC4: .4byte 0x0000054A
_080EFDC8: .4byte 0x0000020E
_080EFDCC:
	ldr r0, _080EFE6C @ =0x083BA4BC
	ldrb r1, [r5, #0x09]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r2, r8
	ldr r0, [r2, #0x00]
	ldr r0, [r0, #0x14]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	ldrb r1, [r5, #0x0B]
	lsls r1, r1, #0x1F
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r1, #0x1F
	mov r2, r9
	lsls r3, r2, #0x10
	cmp r0, r1
	bne _080EFE4C
	cmp r4, #0x00
	beq _080EFE18
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080EFE4C
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	mov r0, r10
	ands r0, r1
	cmp r0, #0x00
	beq _080EFE4C
_080EFE18:
	mov r1, r8
	ldr r0, [r1, #0x00]
	ldrb r2, [r5, #0x0A]
	ldr r3, [r5, #0x04]
	adds r1, r4, #0x0
	bl sub_80EB524
	ldr r0, _080EFE70 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r0, _080EFE74 @ =0x0000054A
	adds r2, r2, r0
	mov r1, r9
	lsls r3, r1, #0x10
	asrs r0, r3, #0x10
	mov r1, r10
	lsls r1, r0
	ldrh r0, [r2, #0x00]
	bics r0, r1
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xF8
	ldrh r0, [r2, #0x00]
	ldr r4, _080EFE78 @ =0x0000F3FF
	adds r1, r4, #0x0
	ands r0, r1
	strh r0, [r2, #0x00]
_080EFE4C:
	lsrs r7, r7, #0x01
	adds r6, #0x2C
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r3, r1
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r7, #0x00
	bne _080EFD80
_080EFE5E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EFE6C: .4byte 0x083BA4BC
_080EFE70: .4byte 0x03000FD0
_080EFE74: .4byte 0x0000054A
_080EFE78: .4byte 0x0000F3FF
