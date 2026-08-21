	.syntax unified
	.text

	thumb_func_start sub_80DDAE4
sub_80DDAE4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080DDB06
	mov r12, r2
	movs r5, #0x98
	lsls r5, r5, #0x01
	add r5, r12
	b _080DDB0E
_080DDB06:
	ldr r5, _080DDB5C @ =0xFFFFFED0
	adds r5, r5, r2
	mov r12, r5
	adds r5, r2, #0x0
_080DDB0E:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080DDB74
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	beq _080DDB60
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
	b _080DDB8E
_080DDB5C: .4byte 0xFFFFFED0
_080DDB60:
	adds r2, r4, #0x0
	adds r2, #0x84
	mov r0, r12
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	mov r0, r12
	b _080DDB86
_080DDB74:
	adds r2, r4, #0x0
	adds r2, #0x84
	adds r0, r5, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r5, #0x0
_080DDB86:
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r3, r2, #0x0
_080DDB8E:
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
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080DDBF0 @ =0x080DEB79
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_080DDBF0: .4byte sub_80DEB78
