	.syntax unified
	.text

	thumb_func_start sub_80DE020
sub_80DE020:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _080DE0F0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r4, #0x2C]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r2, _080DE0F4 @ =0x00004188
	adds r1, r2, #0x0
	ldrb r0, [r0, #0x02]
	adds r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r5, r0, #0x0
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	str r1, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x3C]
	str r0, [r5, #0x14]
	str r1, [r5, #0x18]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x2C]
	str r0, [r5, #0x2C]
	adds r4, #0x7C
	ldrh r1, [r4, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	subs r0, #0x06
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080DE090
	cmp r1, #0x04
	bne _080DE148
_080DE090:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080DE098
	adds r1, #0xFF
_080DE098:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _080DE0AE
	adds r0, #0xFF
_080DE0AE:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080DE0C4
	adds r3, #0xFF
_080DE0C4:
	asrs r3, r3, #0x08
	adds r4, r6, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r6, #0x28]
	adds r0, #0x08
	cmp r6, r0
	bne _080DE0F8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080DE108
	.byte 0x00, 0x00
_080DE0F0: .4byte 0x03000FD8
_080DE0F4: .4byte 0x00004188
_080DE0F8:
	adds r0, r6, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r6, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080DE108:
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080DE110
	adds r0, #0xFF
_080DE110:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080DE154 @ =0x03001038
	ldr r0, _080DE158 @ =0x0819832C
	ldr r1, _080DE15C @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080DE12A
	adds r1, #0x3F
_080DE12A:
	asrs r1, r1, #0x06
	adds r1, #0x28
	movs r0, #0xC8
	lsls r0, r0, #0x03
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r5, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080DE148:
	ldr r0, _080DE160 @ =0x080DE165
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DE154: .4byte 0x03001038
_080DE158: .4byte 0x0819832C
_080DE15C: .4byte 0x08198220
_080DE160: .4byte sub_80DE164
