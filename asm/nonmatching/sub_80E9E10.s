	.syntax unified
	.text

	thumb_func_start sub_80E9E10
sub_80E9E10:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080E9E60
	cmp r2, #0x01
	bgt _080E9E22
	cmp r2, #0x00
	beq _080E9E2C
	b _080E9ED2
_080E9E22:
	cmp r2, #0x02
	beq _080E9E8C
	cmp r2, #0x03
	beq _080E9EA8
	b _080E9ED2
_080E9E2C:
	ldr r3, _080E9E5C @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	orrs r0, r1
	cmp r0, #0x00
	bne _080E9ED2
	adds r0, r3, #0x0
	bl process_disable
	b _080E9ED2
	.byte 0x00, 0x00
_080E9E5C: .4byte 0x03000D44
_080E9E60:
	ldr r4, _080E9E88 @ =0x03000D44
	ldr r1, [r4, #0x00]
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	movs r2, #0x01
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrh r1, [r0, #0x20]
	adds r2, r0, #0x0
	adds r2, #0x28
	ldrb r2, [r2, #0x00]
	lsls r2, r2, #0x1A
	lsrs r2, r2, #0x1C
	bl sub_801BC40
	ldr r0, [r4, #0x00]
	bl process_enable
	b _080E9ED2
_080E9E88: .4byte 0x03000D44
_080E9E8C:
	ldr r3, _080E9EA4 @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	bl process_enable
	b _080E9ED2
_080E9EA4: .4byte 0x03000D44
_080E9EA8:
	ldr r3, _080E9EDC @ =0x03000D44
	ldr r1, [r3, #0x00]
	adds r1, #0x28
	ldrb r0, [r1, #0x00]
	movs r2, #0x02
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsls r1, r0, #0x1F
	lsrs r1, r1, #0x1F
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	orrs r0, r1
	cmp r0, #0x00
	bne _080E9ED2
	adds r0, r3, #0x0
	bl process_disable
_080E9ED2:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E9EDC: .4byte 0x03000D44
