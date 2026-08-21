	.syntax unified
	.text

	thumb_func_start sub_80CA510
sub_80CA510:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080CA55C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r3, r0, #0x0
	adds r3, #0x08
	mov r0, r8
	ldr r4, [r0, #0x2C]
	ldr r1, [r6, #0x08]
	ldrh r2, [r1, #0x06]
	movs r7, #0x06
	ldsh r0, [r1, r7]
	cmp r0, #0xFF
	bgt _080CA560
	adds r0, r2, #0x0
	adds r0, #0x10
	strh r0, [r1, #0x06]
	ldr r0, [r3, #0x18]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r0, r2
	str r0, [r3, #0x18]
	ldr r1, [r6, #0x08]
	movs r4, #0x06
	ldsh r0, [r1, r4]
	cmp r0, r2
	ble _080CA5C6
	strh r2, [r1, #0x06]
	movs r0, #0x00
	str r0, [r3, #0x18]
	b _080CA5C6
_080CA55C: .4byte 0x03000FD8
_080CA560:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080CA572
	cmp r1, #0x04
	bne _080CA5B6
_080CA572:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080CA57A
	adds r1, #0xFF
_080CA57A:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080CA590
	adds r2, #0xFF
_080CA590:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_808843C
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x33
	bl sub_8088274
_080CA5B6:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	ldr r0, _080CA5D4 @ =0x080CA5D9
	mov r7, r8
	str r0, [r7, #0x4C]
_080CA5C6:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080CA5D4: .4byte sub_80CA5D8
