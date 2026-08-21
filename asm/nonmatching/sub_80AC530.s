	.syntax unified
	.text

	thumb_func_start sub_80AC530
sub_80AC530:
	push {r4, r5, lr}
	ldr r0, _080AC598 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x74]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x86
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, _080AC59C @ =0x00001FFF
	cmp r1, r0
	ble _080AC592
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC56C
	cmp r1, #0x04
	bne _080AC584
_080AC56C:
	ldr r2, _080AC5A0 @ =0x0000205F
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
_080AC584:
	ldr r2, [r5, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x00
	str r0, [r5, #0x4C]
_080AC592:
	pop {r4, r5}
	pop {r0}
	bx r0
_080AC598: .4byte 0x03000FD8
_080AC59C: .4byte 0x00001FFF
_080AC5A0: .4byte 0x0000205F
