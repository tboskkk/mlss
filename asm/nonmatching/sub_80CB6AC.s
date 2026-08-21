	.syntax unified
	.text

	thumb_func_start sub_80CB6AC
sub_80CB6AC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080CB774 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_80884AC
	adds r0, r5, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080CB76A
	movs r6, #0x01
	negs r6, r6
	movs r0, #0x2B
	adds r1, r6, #0x0
	bl play_sfx_80195B4
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB6EE
	cmp r1, #0x04
	bne _080CB73C
_080CB6EE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080CB6F6
	adds r0, #0xFF
_080CB6F6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CB710
	adds r2, #0xFF
_080CB710:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	subs r2, #0x0A
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0x24
	adds r0, r5, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080CB73C:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CB74E
	cmp r1, #0x04
	bne _080CB766
_080CB74E:
	ldr r2, _080CB778 @ =0x00002035
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080CB766:
	ldr r0, _080CB77C @ =0x080CCD81
	str r0, [r7, #0x4C]
_080CB76A:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CB774: .4byte 0x03000FD8
_080CB778: .4byte 0x00002035
_080CB77C: .4byte sub_80CCD80
