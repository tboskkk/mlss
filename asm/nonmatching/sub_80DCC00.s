	.syntax unified
	.text

	thumb_func_start sub_80DCC00
sub_80DCC00:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r6, #0x0
	adds r4, #0xAE
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DCC1C
	adds r0, #0xFF
_080DCC1C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	adds r3, r6, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r0, r1, #0x06
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r1
	cmp r0, #0x00
	bge _080DCC36
	adds r0, #0xFF
_080DCC36:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	adds r2, r6, #0x0
	adds r2, #0xB2
	adds r0, r6, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	ldr r1, [r6, #0x38]
	adds r0, r1, r0
	str r0, [r6, #0x10]
	movs r4, #0x00
	ldsh r0, [r3, r4]
	ldr r3, [r6, #0x3C]
	adds r0, r3, r0
	str r0, [r6, #0x14]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	ldr r4, [r6, #0x40]
	adds r0, r4, r0
	str r0, [r6, #0x18]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	cmp r0, #0x00
	ble _080DCC72
	b _080DCD84
_080DCC72:
	ldr r5, [r6, #0x28]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080DCC7C
	adds r0, #0xFF
_080DCC7C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x25
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080DCC8A
	adds r0, #0xFF
_080DCC8A:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _080DCC96
	adds r0, #0xFF
_080DCC96:
	asrs r0, r0, #0x08
	adds r0, #0x26
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _080DCD8C @ =0x00004138
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080DCD90 @ =0x080DD479
	str r0, [r5, #0x4C]
	ldr r0, _080DCD94 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080DCD98 @ =0x080DD431
	str r0, [r5, #0x60]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x02
	strh r0, [r1, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x6C]
	adds r0, r6, #0x0
	movs r1, #0x0F
	movs r2, #0x00
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
	ldr r0, _080DCD9C @ =0x080DCDA1
	str r0, [r6, #0x4C]
_080DCD84:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080DCD8C: .4byte 0x00004138
_080DCD90: .4byte sub_80DD478
_080DCD94: .4byte sub_8087540
_080DCD98: .4byte sub_80DD430
_080DCD9C: .4byte sub_80DCDA0
