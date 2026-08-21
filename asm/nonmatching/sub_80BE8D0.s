	.syntax unified
	.text

	thumb_func_start sub_80BE8D0
sub_80BE8D0:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	ldr r7, _080BE98C @ =0x03000FD8
	ldr r3, [r7, #0x00]
	ldr r2, [r3, #0x74]
	adds r6, r2, #0x0
	adds r6, #0x08
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080BE9E2
	ldr r0, [r6, #0x38]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r6, #0x38]
	str r0, [r6, #0x10]
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BE908
	cmp r1, #0x04
	bne _080BE95A
_080BE908:
	ldr r5, [r6, #0x3C]
	cmp r5, #0x00
	bge _080BE910
	adds r5, #0xFF
_080BE910:
	asrs r5, r5, #0x08
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r4, r4, r0
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
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080BE95A:
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080BE96E
	cmp r2, #0x04
	bne _080BE9D0
_080BE96E:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080BE994
	ldr r2, _080BE990 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080BE9A0
_080BE98C: .4byte 0x03000FD8
_080BE990: .4byte 0x00002002
_080BE994:
	ldr r2, _080BE9EC @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080BE9A0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080BE9B6
	movs r2, #0x01
_080BE9B6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BE9D0:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080BE9DE
	cmp r2, #0x04
	bne _080BE9E2
_080BE9DE:
	ldr r0, _080BE9F0 @ =0x080BD075
	str r0, [r6, #0x4C]
_080BE9E2:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080BE9EC: .4byte 0x0000204F
_080BE9F0: .4byte sub_80BD074
