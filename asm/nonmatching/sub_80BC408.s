	.syntax unified
	.text

	thumb_func_start sub_80BC408
sub_80BC408:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080BC4DC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r7, r0, #0x0
	adds r7, #0x08
	mov r0, r8
	ldr r6, [r0, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BC4D0
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC44C
	cmp r1, #0x04
	bne _080BC464
_080BC44C:
	ldr r2, _080BC4E0 @ =0x00002024
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BC464:
	adds r0, r7, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC476
	cmp r1, #0x04
	bne _080BC4BE
_080BC476:
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _080BC47E
	adds r0, #0xFF
_080BC47E:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	adds r1, #0x18
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080BC498
	adds r2, #0xFF
_080BC498:
	asrs r2, r2, #0x08
	adds r0, r6, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_808843C
	movs r1, #0xB3
	lsls r1, r1, #0x01
	adds r0, r7, #0x0
	bl sub_80880C4
_080BC4BE:
	adds r2, r7, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080BC4E4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080BC4E8 @ =0x080BC4ED
	mov r1, r8
	str r0, [r1, #0x4C]
_080BC4D0:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BC4DC: .4byte 0x03000FD8
_080BC4E0: .4byte 0x00002024
_080BC4E4: .4byte 0x00000FFF
_080BC4E8: .4byte sub_80BC4EC
