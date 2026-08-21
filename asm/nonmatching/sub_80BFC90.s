	.syntax unified
	.text

	thumb_func_start sub_80BFC90
sub_80BFC90:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _080BFD50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r8, r0
	ldr r5, [r1, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	mov r0, r9
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080BFD54 @ =0x03001038
	ldr r2, _080BFD58 @ =0x0819832C
	ldr r3, _080BFD5C @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080BFCEC
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	bge _080BFCEE
_080BFCEC:
	movs r1, #0x00
_080BFCEE:
	adds r4, r7, #0x0
	adds r4, #0xA8
	cmp r1, #0x00
	beq _080BFD80
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080BFD1C
	movs r0, #0x00
	str r0, [r4, #0x00]
	movs r0, #0x06
	adds r1, r6, #0x0
	movs r2, #0x2E
	movs r3, #0x08
	bl sub_807EAE4
	ldr r0, [r7, #0x28]
	ldr r1, _080BFD60 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BFD1C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFD2E
	cmp r1, #0x04
	bne _080BFD80
_080BFD2E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BFD64
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080BFD70
	.byte 0x00, 0x00
_080BFD50: .4byte 0x03000FD8
_080BFD54: .4byte 0x03001038
_080BFD58: .4byte 0x0819832C
_080BFD5C: .4byte 0x08198220
_080BFD60: .4byte 0x00000111
_080BFD64:
	ldr r2, _080BFE90 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080BFD70:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080BFD80:
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080BFDB0
	adds r0, r6, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r6, #0x18]
	adds r1, r1, r0
	ldr r0, [r7, #0x40]
	cmp r0, r1
	bge _080BFDB0
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFDAC
	cmp r1, #0x04
	bne _080BFDB0
_080BFDAC:
	ldr r0, _080BFE94 @ =0x080BE729
	str r0, [r7, #0x4C]
_080BFDB0:
	ldr r0, _080BFE98 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _080BFDDE
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFDCE
	cmp r1, #0x04
	bne _080BFDD4
_080BFDCE:
	ldr r0, _080BFE9C @ =0x080C0719
	mov r1, r9
	str r0, [r1, #0x4C]
_080BFDD4:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD0
	bl play_sfx_80195B4
_080BFDDE:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BFE82
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x2E
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFE0A
	cmp r1, #0x04
	bne _080BFE2E
_080BFE0A:
	adds r0, r6, #0x0
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BFE2E:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BFE40
	cmp r1, #0x04
	bne _080BFE70
_080BFE40:
	ldr r2, _080BFEA0 @ =0x03001038
	ldr r0, _080BFEA4 @ =0x0819832C
	ldr r1, _080BFEA8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0C
	bl _call_via_r2
	mov r2, r8
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	mov r0, r8
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080BFE70:
	mov r2, r8
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BFEAC @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BFEB0 @ =0x080BFEB5
	mov r2, r9
	str r0, [r2, #0x4C]
_080BFE82:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BFE90: .4byte 0x0000204D
_080BFE94: .4byte sub_80BE728
_080BFE98: .4byte 0x0300034C
_080BFE9C: .4byte sub_80C0718
_080BFEA0: .4byte 0x03001038
_080BFEA4: .4byte 0x0819832C
_080BFEA8: .4byte 0x08198220
_080BFEAC: .4byte 0x00000FFF
_080BFEB0: .4byte sub_80BFEB4
