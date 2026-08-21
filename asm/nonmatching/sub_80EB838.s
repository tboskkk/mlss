	.syntax unified
	.text

	thumb_func_start sub_80EB838
sub_80EB838:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	mov r9, r1
	adds r5, r2, #0x0
	ldr r1, [r5, #0x00]
	ldr r0, [r5, #0x04]
	cmp r1, r0
	beq _080EB856
	movs r0, #0x00
	b _080EBAAE
_080EB856:
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x08
	ands r0, r1
	mov r8, r2
	cmp r0, #0x00
	beq _080EB8A2
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldrb r1, [r0, #0x00]
	cmp r1, #0x03
	bhi _080EB880
	ldr r2, _080EB87C @ =0x03000FD0
	movs r0, #0xA8
	muls r1, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	b _080EB88C
_080EB87C: .4byte 0x03000FD0
_080EB880:
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x18]
	adds r0, #0x58
_080EB88C:
	adds r2, r0, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	ldr r0, _080EB980 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	ldr r0, _080EB984 @ =0x0000FFF7
	ands r0, r1
	strh r0, [r3, #0x00]
_080EB8A2:
	mov r0, r9
	cmp r0, #0x00
	bne _080EB942
	ldr r1, _080EB988 @ =0x03000FD0
	ldr r4, [r1, #0x00]
	movs r2, #0xA9
	lsls r2, r2, #0x03
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r3, #0xAA
	lsls r3, r3, #0x03
	adds r6, r4, r3
	movs r3, #0x01
	lsls r3, r7
	ldr r2, [r6, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	mov r10, r1
	cmp r0, #0x00
	beq _080EB942
	bics r2, r3
	str r2, [r6, #0x00]
	ldr r1, _080EB98C @ =0x00000544
	adds r0, r4, r1
	adds r0, r0, r7
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x000]
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x28]
	adds r2, r3, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _080EB990 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080EB994 @ =0x00000546
	adds r0, r4, r1
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	subs r2, #0xCE
	strb r1, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x02]
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080EB926
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x03
	beq _080EB926
	cmp r1, #0x04
	bne _080EB942
_080EB926:
	mov r2, r10
	ldr r0, [r2, #0x00]
	ldr r1, _080EB994 @ =0x00000546
	adds r0, r0, r1
	adds r0, r0, r7
	ldrb r1, [r0, #0x00]
	adds r3, #0x24
	lsrs r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080EB942:
	mov r3, r8
	ldrh r1, [r3, #0x00]
	ldr r4, _080EB998 @ =0xFFFFFBFC
	ands r4, r1
	cmp r4, #0x00
	beq _080EB950
	b _080EBAAC
_080EB950:
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	beq _080EB99C
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x0C]
	str r0, [r5, #0x04]
	adds r6, r5, #0x0
	adds r6, #0xA2
	ldrh r0, [r6, #0x00]
	movs r2, #0x00
	strh r0, [r3, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xA5
	ldrb r1, [r3, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA4
	strb r1, [r0, #0x00]
	str r4, [r5, #0x0C]
	str r4, [r5, #0x08]
	strh r4, [r6, #0x00]
	strb r2, [r3, #0x00]
	movs r0, #0x00
	b _080EBAAE
	.byte 0x00, 0x00
_080EB980: .4byte 0x0000FFFB
_080EB984: .4byte 0x0000FFF7
_080EB988: .4byte 0x03000FD0
_080EB98C: .4byte 0x00000544
_080EB990: .4byte 0x0000FF7F
_080EB994: .4byte 0x00000546
_080EB998: .4byte 0xFFFFFBFC
_080EB99C:
	ldr r0, _080EBA40 @ =0x0000FFFE
	ands r1, r0
	mov r2, r8
	strh r1, [r2, #0x00]
	mov r3, r9
	cmp r3, #0x00
	beq _080EB9AC
	b _080EBAAC
_080EB9AC:
	ldr r5, _080EBA44 @ =0x03000FD0
	ldr r1, [r5, #0x00]
	movs r0, #0xA9
	lsls r0, r0, #0x03
	mov r12, r0
	adds r0, r1, r0
	ldrb r7, [r0, #0x00]
	cmp r7, #0x01
	bne _080EBA16
	ldr r2, [sp, #0x000]
	ldr r2, [r2, #0x14]
	mov r10, r2
	ldr r4, [r2, #0x28]
	ldr r3, _080EBA48 @ =0x0000020D
	mov r8, r3
	add r4, r8
	ldrb r5, [r4, #0x00]
	lsls r2, r5, #0x1F
	lsrs r2, r2, #0x1F
	ldr r0, _080EBA4C @ =0x0000055A
	mov r9, r0
	adds r0, r1, r0
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x06
	adds r0, r7, #0x0
	bics r0, r1
	orrs r2, r0
	movs r6, #0x01
	ands r2, r6
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r5
	orrs r0, r2
	strb r0, [r4, #0x00]
	mov r1, r10
	ldr r2, [r1, #0x2C]
	add r2, r8
	ldrb r4, [r2, #0x00]
	lsls r1, r4, #0x1F
	lsrs r1, r1, #0x1F
	ldr r5, _080EBA44 @ =0x03000FD0
	ldr r0, [r5, #0x00]
	add r0, r9
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	mvns r0, r0
	ands r0, r7
	orrs r1, r0
	ands r1, r6
	ands r3, r4
	orrs r3, r1
	strb r3, [r2, #0x00]
_080EBA16:
	ldr r0, _080EBA44 @ =0x03000FD0
	ldr r2, [r0, #0x00]
	ldr r5, _080EBA4C @ =0x0000055A
	adds r0, r2, r5
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080EBA50
	mov r1, r12
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x01
	bne _080EBAAC
	ldr r2, [sp, #0x000]
	ldr r0, [r2, #0x14]
	movs r1, #0x00
	bl sub_8028D6C
	b _080EBAAC
	.byte 0x00, 0x00
_080EBA40: .4byte 0x0000FFFE
_080EBA44: .4byte 0x03000FD0
_080EBA48: .4byte 0x0000020D
_080EBA4C: .4byte 0x0000055A
_080EBA50:
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _080EBAAC
	lsls r0, r1, #0x1A
	mov r3, r12
	adds r1, r2, r3
	lsrs r0, r0, #0x1D
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	bne _080EBAAC
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x14]
	ldr r4, _080EBAC0 @ =0x00000554
	adds r1, r2, r4
	ldrh r1, [r1, #0x00]
	bl sub_8028D6C
	ldr r2, _080EBAC4 @ =0x03000FD0
	ldr r3, [r2, #0x00]
	adds r4, r3, r4
	ldrh r0, [r4, #0x00]
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	adds r3, r3, r5
	lsls r4, r1, #0x02
	ldrb r2, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r4
	lsls r1, r1, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r3, _080EBAC4 @ =0x03000FD0
	ldr r1, [r3, #0x00]
	adds r1, r1, r5
	ldrb r2, [r1, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_080EBAAC:
	movs r0, #0x01
_080EBAAE:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EBAC0: .4byte 0x00000554
_080EBAC4: .4byte 0x03000FD0
