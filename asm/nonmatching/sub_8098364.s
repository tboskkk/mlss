	.syntax unified
	.text

	thumb_func_start sub_8098364
sub_8098364:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _0809839C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r2, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r2, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldrb r0, [r2, #0x0C]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x0C]
	cmp r6, r5
	bne _080983A0
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	bl sub_807E680
	b _080983B2
	.byte 0x00, 0x00
_0809839C: .4byte 0x03000FD8
_080983A0:
	movs r3, #0x24
	negs r3, r3
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	bl sub_807E680
_080983B2:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	adds r0, #0x10
	adds r4, r6, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	cmp r0, r1
	bcs _080983D4
	movs r0, #0x00
	str r0, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_8097CB4
_080983D4:
	ldr r0, [r4, #0x00]
	adds r0, #0x01
	str r0, [r4, #0x00]
	cmp r6, r5
	bne _080983EA
	ldr r0, _08098520 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080983FE
_080983EA:
	adds r4, r6, #0x0
	adds r4, #0x9C
	cmp r6, r7
	bne _08098422
	ldr r0, _08098520 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08098422
_080983FE:
	adds r1, r6, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08098524 @ =0xFFFFFC00
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x02
	beq _08098422
	adds r0, r6, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_08098422:
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809843A
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0809843A:
	adds r1, r4, #0x0
	ldr r0, [r1, #0x00]
	subs r0, #0x19
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r2, [r0, r1]
	movs r0, #0x20
	ldsh r1, [r6, r0]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r1, r0, #0x04
	adds r0, r0, r1
	cmp r0, #0x00
	bge _08098460
	adds r0, #0xFF
_08098460:
	asrs r1, r0, #0x08
	adds r0, r2, #0x0
	bl __divsi3
	bl sub_81DB964
	ldr r2, _08098528 @ =0x3FF33333
	ldr r3, _0809852C @ =0x33333333
	bl sub_81DB1D8
	ldr r2, _08098530 @ =0x40700000
	ldr r3, _08098534 @ =0x00000000
	bl sub_81DB240
	bl sub_81DB9E0
	ldr r1, [r6, #0x10]
	subs r1, r1, r0
	str r1, [r6, #0x10]
	ldr r0, [r4, #0x00]
	cmp r1, r0
	bge _0809848E
	str r0, [r6, #0x10]
_0809848E:
	ldr r7, _08098538 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r1, r0, r2
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blt _08098518
	str r1, [r6, #0x10]
	adds r0, r6, #0x0
	bl sub_807EA24
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080984C8
	cmp r1, #0x04
	bne _08098514
_080984C8:
	ldr r0, [r6, #0x08]
	movs r1, #0x02
	ldsh r5, [r0, r1]
	ldr r0, [r7, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r4, #0x30
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
	lsls r1, r1, #0x02
	adds r0, r6, #0x0
	bl sub_80880C4
_08098514:
	ldr r0, _0809853C @ =0x08098861
	str r0, [r6, #0x4C]
_08098518:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08098520: .4byte 0x0300034C
_08098524: .4byte 0xFFFFFC00
_08098528: .4byte 0x3FF33333
_0809852C: .4byte 0x33333333
_08098530: .4byte 0x40700000
_08098534: .4byte 0x00000000
_08098538: .4byte 0x03000FD8
_0809853C: .4byte sub_8098860
