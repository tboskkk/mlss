	.syntax unified
	.text

	thumb_func_start sub_80DDC8C
sub_80DDC8C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _080DDCA2
	b _080DDDEC
_080DDCA2:
	movs r0, #0x93
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	ldr r1, [r4, #0x2C]
	movs r0, #0x00
	str r0, [r1, #0x4C]
	ldr r2, [r1, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080DDCCC
	mov r12, r2
	movs r5, #0x98
	lsls r5, r5, #0x01
	add r5, r12
	b _080DDCD4
_080DDCCC:
	ldr r5, _080DDD24 @ =0xFFFFFED0
	adds r5, r5, r2
	mov r12, r5
	adds r5, r2, #0x0
_080DDCD4:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080DDD3C
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _080DDD28
	adds r3, r4, #0x0
	adds r3, #0x84
	mov r0, r12
	adds r0, #0xD8
	adds r1, r5, #0x0
	adds r1, #0xD8
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	mov r0, r12
	adds r0, #0xDC
	adds r1, r5, #0x0
	adds r1, #0xDC
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r2, #0x00]
	b _080DDD56
	.byte 0x00, 0x00
_080DDD24: .4byte 0xFFFFFED0
_080DDD28:
	adds r2, r4, #0x0
	adds r2, #0x84
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	b _080DDD4E
_080DDD3C:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r5, #0x0
_080DDD4E:
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r3, r2, #0x0
_080DDD56:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x07
	adds r0, r0, r5
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r3, [r4, #0x08]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x06
	subs r0, #0x42
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, _080DDDF4 @ =0x080DDE05
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x28]
	ldr r1, _080DDDF8 @ =0x00000113
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080DDDEC
	cmp r1, #0xFF
	beq _080DDDEC
	movs r0, #0x7F
	adds r3, r4, #0x0
	adds r3, #0xA8
	ldr r2, _080DDDFC @ =0x083BBDD0
	ldrb r1, [r5, #0x00]
	ands r0, r1
	lsls r0, r0, #0x04
	adds r0, r0, r2
	ldrb r1, [r0, #0x02]
	movs r0, #0x07
	ands r0, r1
	ldr r1, _080DDE00 @ =0x00004188
	adds r0, r0, r1
	str r0, [r3, #0x00]
	bl sub_8082AAC
_080DDDEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DDDF4: .4byte sub_80DDE04
_080DDDF8: .4byte 0x00000113
_080DDDFC: .4byte 0x083BBDD0
_080DDE00: .4byte 0x00004188
