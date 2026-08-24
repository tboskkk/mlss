	.syntax unified
	.text

	thumb_func_start sub_80BEB9C
sub_80BEB9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080BEBF4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r7, r6, #0x0
	adds r7, #0x08
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080BEBBC
	b _080BECFC
_080BEBBC:
	adds r3, r6, #0x0
	adds r3, #0xB6
	ldrh r1, [r3, #0x00]
	ldr r4, _080BEBF8 @ =0x00000FFF
	adds r0, r4, #0x0
	ands r0, r1
	lsls r1, r0, #0x10
	cmp r0, #0x03
	bhi _080BEC00
	ldr r2, _080BEBFC @ =0x083B89DC
	lsrs r0, r1, #0x0F
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	ldrh r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x01
	adds r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xBA
	b _080BEC92
_080BEBF4: .4byte 0x03000FD8
_080BEBF8: .4byte 0x00000FFF
_080BEBFC: .4byte dword_83B89DC @ =0x083B89DC
_080BEC00:
	ldr r5, _080BEC28 @ =0x083B89E4
	movs r1, #0x00
	ldsb r1, [r5, r1]
	movs r0, #0x02
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080BEC2C
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x00
	ldsb r1, [r5, r1]
	b _080BEC46
	.byte 0x00, 0x00
_080BEC28: .4byte byte_83B89E4 @ =0x083B89E4
_080BEC2C:
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
_080BEC46:
	adds r1, r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	ldsb r1, [r5, r1]
	movs r0, #0x03
	ldsb r0, [r5, r0]
	cmp r1, r0
	bge _080BEC72
	adds r4, r0, #0x0
	adds r0, r1, #0x0
	subs r4, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	movs r1, #0x01
	ldsb r1, [r5, r1]
	b _080BEC8C
_080BEC72:
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
_080BEC8C:
	adds r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB2
_080BEC92:
	strh r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BECA6
	cmp r1, #0x04
	bne _080BECF6
_080BECA6:
	adds r3, r7, #0x0
	adds r3, #0xB0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	beq _080BECD8
	ldr r2, _080BECCC @ =0x03001038
	ldr r0, _080BECD0 @ =0x0819832C
	ldr r1, _080BECD4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r4, #0x00
	ldsh r1, [r3, r4]
	bl _call_via_r2
	b _080BECDC
_080BECCC: .4byte 0x03001038
_080BECD0: .4byte 0x0819832C
_080BECD4: .4byte 0x08198220
_080BECD8:
	movs r0, #0x80
	lsls r0, r0, #0x07
_080BECDC:
	adds r2, r0, #0x0
	adds r1, r7, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r2, [r1, #0x00]
	adds r1, #0x04
	strh r0, [r1, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	subs r0, #0x21
	ands r0, r1
	strb r0, [r2, #0x00]
_080BECF6:
	ldr r0, _080BED08 @ =0x080BED0D
	mov r1, r8
	str r0, [r1, #0x4C]
_080BECFC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BED08: .4byte sub_80BED0C
