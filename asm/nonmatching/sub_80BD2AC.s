	.syntax unified
	.text

	thumb_func_start sub_80BD2AC
sub_80BD2AC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080BD360 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r3, [r5, #0x2C]
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD2CE
	cmp r1, #0x04
	bne _080BD302
_080BD2CE:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BD2D6
	adds r1, #0xFF
_080BD2D6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BD2E0
	adds r2, #0xFF
_080BD2E0:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080BD2EA
	adds r3, #0xFF
_080BD2EA:
	asrs r3, r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_80880C4
_080BD302:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BD314
	cmp r1, #0x04
	bne _080BD344
_080BD314:
	ldr r2, _080BD364 @ =0x03001038
	ldr r0, _080BD368 @ =0x0819832C
	ldr r1, _080BD36C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x32
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
_080BD344:
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x04
	bl sub_807E680
	ldr r0, _080BD370 @ =0x080BD375
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080BD360: .4byte 0x03000FD8
_080BD364: .4byte 0x03001038
_080BD368: .4byte 0x0819832C
_080BD36C: .4byte 0x08198220
_080BD370: .4byte sub_80BD374
