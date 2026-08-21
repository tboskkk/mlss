	.syntax unified
	.text

	thumb_func_start sub_80CAB8C
sub_80CAB8C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _080CACA8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r12, r1
	mov r5, r12
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r1, [r6, #0x2C]
	ldr r0, [r5, #0x38]
	movs r2, #0xF0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	ldr r1, [r1, #0x38]
	subs r1, r1, r0
	lsls r0, r1, #0x01
	adds r0, r0, r1
	lsls r0, r0, #0x03
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080CABBE
	adds r0, #0xFF
_080CABBE:
	asrs r3, r0, #0x08
	mov r2, r12
	adds r2, #0xB6
	movs r0, #0x00
	ldsh r1, [r2, r0]
	movs r0, #0xE6
	muls r0, r1
	cmp r0, #0x00
	bge _080CABD2
	adds r0, #0xFF
_080CABD2:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	cmp r3, r0
	bge _080CABE8
	adds r0, r0, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	strh r0, [r2, #0x00]
_080CABE8:
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r4, #0x10]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, _080CACAC @ =0xFFFFFF00
	cmp r1, r0
	blt _080CACA2
	mov r0, r12
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAC10
	cmp r1, #0x04
	bne _080CAC28
_080CAC10:
	ldr r2, _080CACB0 @ =0x00002035
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAC28:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080CAC3C
	cmp r2, #0x04
	bne _080CAC54
_080CAC3C:
	ldr r2, _080CACB4 @ =0x00002053
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CAC54:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080CAC62
	cmp r2, #0x04
	bne _080CAC92
_080CAC62:
	ldr r2, _080CACB8 @ =0x03001038
	ldr r0, _080CACBC @ =0x0819832C
	ldr r1, _080CACC0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x0E
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080CAC92:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080CACC4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080CACC8 @ =0x080CACCD
	str r0, [r6, #0x4C]
_080CACA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080CACA8: .4byte 0x03000FD8
_080CACAC: .4byte 0xFFFFFF00
_080CACB0: .4byte 0x00002035
_080CACB4: .4byte 0x00002053
_080CACB8: .4byte 0x03001038
_080CACBC: .4byte 0x0819832C
_080CACC0: .4byte 0x08198220
_080CACC4: .4byte 0x00000FFF
_080CACC8: .4byte sub_80CACCC
