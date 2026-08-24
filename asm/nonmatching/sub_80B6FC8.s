	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080B7100 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080B6FF4
	b _080B70F6
_080B6FF4:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B7006
	cmp r1, #0x04
	bne _080B7022
_080B7006:
	ldr r2, _080B7104 @ =0x00002031
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B7022:
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080B7036
	cmp r2, #0x04
	bne _080B7052
_080B7036:
	ldr r2, _080B7108 @ =0x00002060
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B7052:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080B7060
	cmp r2, #0x04
	bne _080B70BA
_080B7060:
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _080B7068
	adds r0, #0xFF
_080B7068:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x10
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080B7082
	adds r2, #0xFF
_080B7082:
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
	adds r0, r5, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080B70A6
	adds r0, #0xFF
_080B70A6:
	asrs r0, r0, #0x08
	adds r0, #0x04
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080B70BA:
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x10]
	ldr r2, [r5, #0x14]
	str r2, [r6, #0x14]
	ldr r3, [r5, #0x18]
	str r3, [r6, #0x18]
	cmp r0, #0x00
	bge _080B70CC
	adds r0, #0xFF
_080B70CC:
	asrs r1, r0, #0x08
	cmp r2, #0x00
	bge _080B70D4
	adds r2, #0xFF
_080B70D4:
	asrs r2, r2, #0x08
	cmp r3, #0x00
	bge _080B70DC
	adds r3, #0xFF
_080B70DC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080B710C @ =0x00002F7D
	bl sub_80DF024
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B7110 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B7114 @ =0x080B7119
	str r0, [r7, #0x4C]
_080B70F6:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B7100: .4byte 0x03000FD8
_080B7104: .4byte 0x00002031
_080B7108: .4byte 0x00002060
_080B710C: .4byte 0x00002F7D
_080B7110: .4byte 0x00000FFF
_080B7114: .4byte sub_80B7118
