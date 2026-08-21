	.syntax unified
	.text

	thumb_func_start sub_80BCF60
sub_80BCF60:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r7, _080BD014 @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r2, [r3, #0x74]
	adds r6, r2, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BD05E
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCF92
	cmp r1, #0x04
	bne _080BCFE4
_080BCF92:
	ldr r5, [r6, #0x3C]
	cmp r5, #0x00
	bge _080BCF9A
	adds r5, #0xFF
_080BCF9A:
	asrs r5, r5, #0x08
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r4, r4, r2
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, r2, r5
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080BCFE4:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BCFF6
	cmp r1, #0x04
	bne _080BD058
_080BCFF6:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BD01C
	ldr r2, _080BD018 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BD028
_080BD014: .4byte 0x03000FD8
_080BD018: .4byte 0x00002002
_080BD01C:
	ldr r2, _080BD06C @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BD028:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080BD03E
	movs r2, #0x01
_080BD03E:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD058:
	ldr r0, _080BD070 @ =0x080BD075
	mov r1, r8
	str r0, [r1, #0x4C]
_080BD05E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BD06C: .4byte 0x0000204F
_080BD070: .4byte sub_80BD074
