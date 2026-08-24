	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080B4E34 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	mov r12, r1
	mov r3, r12
	adds r3, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4DA4
	cmp r1, #0x04
	bne _080B4E00
_080B4DA4:
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080B4DAC
	adds r1, #0xFF
_080B4DAC:
	asrs r1, r1, #0x08
	mov r0, r12
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, r0
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080B4DC2
	adds r0, #0xFF
_080B4DC2:
	asrs r0, r0, #0x08
	mov r1, r12
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080B4DD8
	adds r3, #0xFF
_080B4DD8:
	asrs r3, r3, #0x08
	mov r0, r12
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	subs r3, #0x10
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_808843C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0xB3
	bl sub_8088274
_080B4E00:
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4E12
	cmp r1, #0x04
	bne _080B4E54
_080B4E12:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4E38
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4E44
	.byte 0x00, 0x00
_080B4E34: .4byte 0x03000FD8
_080B4E38:
	ldr r2, _080B4E6C @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
_080B4E44:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4E54:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080B4E70 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080B4E74 @ =0x080B4E79
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B4E6C: .4byte 0x0000204D
_080B4E70: .4byte 0x00000FFF
_080B4E74: .4byte sub_80B4E78
