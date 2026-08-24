	.syntax unified
	.text

	thumb_func_start sub_80BF9F8
sub_80BF9F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080BFAF8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	mov r0, r8
	ldr r5, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080BFA56
	ldr r1, [r5, #0x40]
	lsls r1, r1, #0x06
	adds r0, r4, #0x0
	adds r0, #0xCD
	movs r2, #0x00
	ldsb r2, [r0, r2]
	subs r0, #0x47
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r2
	cmp r1, r0
	bge _080BFA56
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFA52
	cmp r1, #0x04
	bne _080BFA56
_080BFA52:
	ldr r0, _080BFAFC @ =0x080BE729
	str r0, [r5, #0x4C]
_080BFA56:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	mov r9, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080BFA68
	b _080BFC7E
_080BFA68:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BFA7C
	cmp r2, #0x04
	bne _080BFAC8
_080BFA7C:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BFA84
	adds r1, #0xFF
_080BFA84:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BFA9A
	adds r2, #0xFF
_080BFA9A:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r6, #0x0
	adds r0, #0x92
	mov r1, r9
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080BFAC8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BFAD6
	cmp r2, #0x04
	bne _080BFB1C
_080BFAD6:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BFB00
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080BFB0C
	.byte 0x00, 0x00
_080BFAF8: .4byte 0x03000FD8
_080BFAFC: .4byte sub_80BE728
_080BFB00:
	ldr r2, _080BFB80 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080BFB0C:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BFB1C:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFB2E
	cmp r1, #0x04
	bne _080BFB4A
_080BFB2E:
	ldr r2, _080BFB84 @ =0x00002025
	adds r0, r7, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r7, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BFB4A:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r3, _080BFB88 @ =0x00000FFF
	adds r0, r3, #0x0
	ands r0, r1
	lsls r1, r0, #0x10
	adds r6, r2, #0x0
	cmp r0, #0x02
	bhi _080BFB90
	ldr r2, _080BFB8C @ =0x083B89E8
	lsrs r0, r1, #0x0F
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r7, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	b _080BFC1E
_080BFB80: .4byte 0x0000204D
_080BFB84: .4byte 0x00002025
_080BFB88: .4byte 0x00000FFF
_080BFB8C: .4byte dword_83B89E8 @ =0x083B89E8
_080BFB90:
	ldr r5, _080BFBB8 @ =0x083B89EE
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080BFBBC
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080BFBD6
	.byte 0x00, 0x00
_080BFBB8: .4byte byte_83B89EE @ =0x083B89EE
_080BFBBC:
	movs r4, #0x00
	ldsb r4, [r5, r4]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x02
	ldsb r1, [r5, r1]
_080BFBD6:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080BFC02
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080BFC1C
_080BFC02:
	movs r4, #0x01
	ldsb r4, [r5, r4]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x03
	ldsb r1, [r5, r1]
_080BFC1C:
	adds r1, r1, r0
_080BFC1E:
	adds r0, r7, #0x0
	adds r0, #0xB2
	strh r1, [r0, #0x00]
	ldrh r0, [r6, #0x00]
	adds r2, r0, #0x1
	strh r2, [r6, #0x00]
	ldr r1, _080BFC64 @ =0x083B89F2
	ldr r0, _080BFC68 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, _080BFC6C @ =0x000002BF
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080BFC78
	ldr r0, _080BFC70 @ =0x00000FFF
	ands r2, r0
	cmp r1, r2
	bgt _080BFC78
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFC5A
	cmp r1, #0x04
	bne _080BFC7E
_080BFC5A:
	ldr r0, _080BFC74 @ =0x080C0719
	mov r1, r8
	str r0, [r1, #0x4C]
	b _080BFC7E
	.byte 0x00, 0x00
_080BFC64: .4byte dword_83B89F2 @ =0x083B89F2
_080BFC68: .4byte 0x03000FD8
_080BFC6C: .4byte 0x000002BF
_080BFC70: .4byte 0x00000FFF
_080BFC74: .4byte sub_80C0718
_080BFC78:
	ldr r0, _080BFC8C @ =0x080BFC91
	mov r2, r8
	str r0, [r2, #0x4C]
_080BFC7E:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BFC8C: .4byte sub_80BFC90
