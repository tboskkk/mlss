	.syntax unified
	.text

	thumb_func_start sub_8096554
sub_8096554:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080965F4 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x70]
	adds r7, r0, #0x0
	adds r7, #0x08
	ldr r4, [r5, #0x2C]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080965EA
	ldr r2, _080965F8 @ =0x084FCE8C
	ldr r0, [r3, #0x7C]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	mvns r1, r1
	ldr r6, _080965FC @ =0x0000034E
	adds r0, r3, r6
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r2
	ldrh r6, [r0, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08096594
	adds r1, #0xFF
_08096594:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0809659E
	adds r0, #0xFF
_0809659E:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080965AA
	adds r3, #0xFF
_080965AA:
	asrs r3, r3, #0x08
	subs r3, #0x02
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	ldr r2, _08096600 @ =0x00002052
	cmp r4, r7
	bne _080965BE
	subs r2, #0x2F
_080965BE:
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r5, #0x0
	bl sub_807C298
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x18
	strh r0, [r1, #0x00]
	ldr r0, _08096604 @ =0x08096609
	str r0, [r4, #0x4C]
_080965EA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080965F4: .4byte 0x03000FD8
_080965F8: .4byte 0x084FCE8C
_080965FC: .4byte 0x0000034E
_08096600: .4byte 0x00002052
_08096604: .4byte sub_8096608
