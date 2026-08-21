	.syntax unified
	.text

	thumb_func_start sub_80EDD48
sub_80EDD48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x03C
	str r0, [sp, #0x030]
	adds r5, r1, #0x0
	str r2, [sp, #0x034]
	adds r4, r3, #0x0
	ldr r0, [r4, #0x08]
	ldr r2, [sp, #0x030]
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r2, [r0, #0x28]
	ldr r0, [r4, #0x04]
	cmp r0, #0x01
	beq _080EDDAA
	cmp r0, #0x01
	bgt _080EDD78
	cmp r0, #0x00
	beq _080EDD7E
	b _080EDE0A
_080EDD78:
	cmp r0, #0x02
	beq _080EDDDC
	b _080EDE0A
_080EDD7E:
	ldr r3, [r5, #0x0C]
	cmp r3, #0x00
	bge _080EDD86
	adds r3, #0xFF
_080EDD86:
	asrs r3, r3, #0x08
	mov r10, r3
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _080EDD92
	adds r0, #0xFF
_080EDD92:
	asrs r7, r0, #0x08
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080EDDA0
	adds r1, #0xFF
_080EDDA0:
	asrs r6, r1, #0x08
	movs r3, #0x01
	mov r9, r3
	movs r0, #0x00
	b _080EDDD4
_080EDDAA:
	ldr r3, [r2, #0x0C]
	cmp r3, #0x00
	bge _080EDDB2
	adds r3, #0xFF
_080EDDB2:
	asrs r3, r3, #0x08
	mov r10, r3
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _080EDDBE
	adds r0, #0xFF
_080EDDBE:
	asrs r7, r0, #0x08
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080EDDCC
	adds r1, #0xFF
_080EDDCC:
	asrs r6, r1, #0x08
	movs r3, #0x00
	mov r9, r3
	movs r0, #0x01
_080EDDD4:
	mov r8, r0
	movs r2, #0x00
	str r2, [sp, #0x038]
	b _080EDE0A
_080EDDDC:
	ldr r3, [r2, #0x0C]
	cmp r3, #0x00
	bge _080EDDE4
	adds r3, #0xFF
_080EDDE4:
	asrs r3, r3, #0x08
	mov r10, r3
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _080EDDF0
	adds r0, #0xFF
_080EDDF0:
	asrs r7, r0, #0x08
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x18]
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080EDDFE
	adds r1, #0xFF
_080EDDFE:
	asrs r6, r1, #0x08
	movs r3, #0x00
	mov r9, r3
	mov r8, r3
	movs r0, #0x01
	str r0, [sp, #0x038]
_080EDE0A:
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x01
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080EDE3C
	ldr r1, [r4, #0x10]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080EDE28
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080EDE2A
_080EDE28:
	lsls r0, r1, #0x08
_080EDE2A:
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _080EDE3C
	movs r2, #0x08
	ldsh r1, [r4, r2]
	adds r0, r5, #0x0
	bl sub_804794C
_080EDE3C:
	ldr r2, [r4, #0x00]
	asrs r0, r2, #0x01
	movs r1, #0x03
	ands r0, r1
	adds r1, r0, #0x3
	str r7, [sp, #0x000]
	str r6, [sp, #0x004]
	mov r3, r9
	lsls r0, r3, #0x08
	str r0, [sp, #0x008]
	mov r3, r8
	lsls r0, r3, #0x08
	str r0, [sp, #0x00C]
	ldr r3, [sp, #0x038]
	lsls r0, r3, #0x08
	str r0, [sp, #0x010]
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x014]
	str r0, [sp, #0x018]
	str r0, [sp, #0x01C]
	ldrh r0, [r4, #0x0C]
	str r0, [sp, #0x020]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x024]
	movs r0, #0x01
	ands r2, r0
	cmp r2, #0x00
	bne _080EDE7A
	movs r0, #0x01
	negs r0, r0
_080EDE7A:
	str r0, [sp, #0x028]
	ldr r0, [r4, #0x08]
	str r0, [sp, #0x02C]
	adds r0, r5, #0x0
	movs r2, #0x00
	mov r3, r10
	bl sub_8045F04
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080EDE94
	movs r0, #0x01
	b _080EDEA2
_080EDE94:
	ldr r0, [sp, #0x030]
	adds r1, r5, #0x0
	ldr r2, [sp, #0x034]
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
_080EDEA2:
	add sp, #0x03C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
