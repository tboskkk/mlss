	.syntax unified
	.text

	thumb_func_start sub_80BD194
sub_80BD194:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080BD294 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldr r4, [r6, #0x2C]
	ldr r0, [r4, #0x28]
	ldr r1, _080BD298 @ =0x00000111
	adds r2, r0, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r3, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BD29C @ =0x0403248A
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080BD1FE
	ldr r2, _080BD298 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BD234
_080BD1FE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BD206
	adds r1, #0xFF
_080BD206:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BD21C
	adds r2, #0xFF
_080BD21C:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BD2A0 @ =0x00000733
	str r4, [sp, #0x000]
	movs r3, #0x10
	bl sub_80DF024
_080BD234:
	adds r1, r5, #0x0
	adds r1, #0xA8
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r2, #0xA0
	lsls r2, r2, #0x0A
	adds r0, r0, r2
	str r0, [r1, #0x00]
	subs r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD260
	cmp r1, #0x04
	bne _080BD278
_080BD260:
	ldr r2, _080BD2A4 @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BD278:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BD2A8 @ =0x080BD2AD
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BD294: .4byte 0x03000FD8
_080BD298: .4byte 0x00000111
_080BD29C: .4byte 0x0403248A
_080BD2A0: .4byte 0x00000733
_080BD2A4: .4byte 0x00002033
_080BD2A8: .4byte sub_80BD2AC
