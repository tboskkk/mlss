	.syntax unified
	.text

	thumb_func_start script_cmd_load_sprite
script_cmd_load_sprite: @ 080F5DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r2, #0x0
	ldm r4!, {r0}
	cmp r0, #0x01
	beq _080F5DE2
	cmp r0, #0x01
	bgt _080F5DC8
	cmp r0, #0x00
	beq _080F5DD4
	b _080F5F16
_080F5DC8:
	cmp r0, #0x02
	beq _080F5DF0
	cmp r0, #0x03
	bne _080F5DD2
	b _080F5ED8
_080F5DD2:
	b _080F5F16
_080F5DD4:
	ldr r0, [r4, #0x00]
	bl sub_8082AAC
	ldr r0, [r4, #0x00]
	bl sub_8082A6C
	b _080F5F16
_080F5DE2:
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	bl sub_8082920
	b _080F5F16
_080F5DF0:
	ldr r0, _080F5E8C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r5, [r0, #0x00]
	ldr r0, [r4, #0x04]
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xE4
	ldr r3, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	str r3, [r1, #0x00]
	adds r2, #0x08
	movs r0, #0x00
	ldsh r3, [r2, r0]
	adds r1, #0x08
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	strh r3, [r1, #0x00]
	subs r2, #0x21
	movs r3, #0x00
	ldsb r3, [r2, r3]
	subs r1, #0x21
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	strb r3, [r1, #0x00]
	adds r2, #0x01
	movs r3, #0x00
	ldsb r3, [r2, r3]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	strb r3, [r1, #0x00]
	adds r2, #0x01
	movs r3, #0x00
	ldsb r3, [r2, r3]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	strb r0, [r2, #0x00]
	strb r3, [r1, #0x00]
	adds r2, #0x23
	ldr r3, [r2, #0x00]
	adds r1, #0x23
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	str r3, [r1, #0x00]
	ldr r1, [r5, #0x10]
	ldr r2, [r4, #0x10]
	mov r8, r2
	str r2, [r5, #0x10]
	str r1, [r4, #0x10]
	ldrb r0, [r1, #0x12]
	lsls r0, r0, #0x1A
	lsrs r7, r0, #0x1F
	ldrb r0, [r2, #0x12]
	lsls r0, r0, #0x1A
	lsrs r6, r0, #0x1F
	cmp r7, #0x00
	beq _080F5E90
	cmp r6, #0x00
	bne _080F5E9E
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080F5E9A
	.byte 0x00, 0x00
_080F5E8C: .4byte 0x03000FD8
_080F5E90:
	cmp r6, #0x00
	beq _080F5EB4
	adds r0, r1, #0x0
	bl sub_807FB64
_080F5E9A:
	cmp r6, #0x00
	beq _080F5EB4
_080F5E9E:
	cmp r7, #0x00
	bne _080F5EBE
	adds r0, r5, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	b _080F5EBE
_080F5EB4:
	cmp r7, #0x00
	beq _080F5EBE
	mov r0, r8
	bl sub_807FB64
_080F5EBE:
	ldr r1, [r5, #0x18]
	ldr r0, [r4, #0x18]
	str r0, [r5, #0x18]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x1C]
	ldr r0, [r4, #0x1C]
	str r0, [r5, #0x1C]
	str r1, [r4, #0x1C]
	ldr r1, [r5, #0x20]
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x20]
	str r1, [r4, #0x20]
	b _080F5F16
_080F5ED8:
	ldr r0, _080F5F24 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r5, [r1, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xE4
	ldr r1, _080F5F28 @ =0x08500A98
	ldr r2, [r4, #0x04]
	movs r0, #0x2C
	muls r0, r2
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	ldrb r0, [r0, #0x04]
	adds r1, r5, #0x0
	adds r1, #0xCB
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x05]
	adds r0, r5, #0x0
	adds r0, #0xCC
	strb r1, [r0, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x06]
	adds r0, r5, #0x0
	adds r0, #0xCD
	strb r1, [r0, #0x00]
_080F5F16:
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F5F24: .4byte 0x03000FD8
_080F5F28: .4byte 0x08500A98
