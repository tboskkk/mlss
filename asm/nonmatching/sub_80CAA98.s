	.syntax unified
	.text

	thumb_func_start sub_80CAA98
sub_80CAA98:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CAB50 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r7, r4, #0x0
	adds r7, #0xA8
	ldr r1, [r7, #0x00]
	cmp r1, #0x00
	beq _080CAACC
	movs r3, #0x30
	negs r3, r3
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_807E680
_080CAACC:
	adds r1, r4, #0x0
	adds r1, #0xB6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	movs r3, #0xE6
	muls r0, r3
	cmp r0, #0x00
	bge _080CAADE
	adds r0, #0xFF
_080CAADE:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xB8
	movs r4, #0x00
	ldsh r0, [r2, r4]
	muls r0, r3
	cmp r0, #0x00
	bge _080CAAF2
	adds r0, #0xFF
_080CAAF2:
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r6, #0x10]
	movs r4, #0x00
	ldsh r1, [r2, r4]
	ldr r0, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r5, #0x14]
	str r0, [r6, #0x14]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	beq _080CAB3E
	adds r0, r6, #0x0
	bl sub_80CB890
	ldr r0, _080CAB54 @ =0x0300034C
	ldrh r1, [r0, #0x3C]
	movs r0, #0xF3
	ands r0, r1
	cmp r0, #0x00
	beq _080CAB3E
	movs r0, #0x00
	str r0, [r7, #0x00]
	ldr r0, [r5, #0x2C]
	ldr r1, [r6, #0x2C]
	cmp r0, r1
	beq _080CAB34
	str r1, [r5, #0x2C]
_080CAB34:
	adds r0, r6, #0x0
	bl sub_807EA24
	bl sub_807F448
_080CAB3E:
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080CAB58
	subs r0, #0x01
	str r0, [r1, #0x00]
	b _080CAB7A
	.byte 0x00, 0x00
_080CAB50: .4byte 0x03000FD8
_080CAB54: .4byte 0x0300034C
_080CAB58:
	adds r0, r6, #0x0
	bl sub_807EA24
	bl sub_807F448
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CAB74
	cmp r1, #0x04
	bne _080CAB7A
_080CAB74:
	ldr r0, _080CAB88 @ =0x080CA511
	mov r1, r8
	str r0, [r1, #0x4C]
_080CAB7A:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CAB88: .4byte sub_80CA510
