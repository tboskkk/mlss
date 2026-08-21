	.syntax unified
	.text

	thumb_func_start sub_80FE4A4
sub_80FE4A4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080FE508 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080FE4C6
	adds r0, r2, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080FE4C6
	b _080FE5CE
_080FE4C6:
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FE4DC
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _080FE5CE
_080FE4DC:
	adds r4, r2, #0x0
	cmp r4, #0x00
	beq _080FE52A
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FE52A
	ldr r0, [r3, #0x7C]
	cmp r4, r0
	bne _080FE50C
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x01
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_8082E1C
	b _080FE51C
_080FE508: .4byte 0x03000FD8
_080FE50C:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080FE51C:
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x11]
	movs r3, #0x41
	negs r3, r3
	adds r2, r3, #0x0
	ands r1, r2
	strb r1, [r0, #0x11]
_080FE52A:
	ldr r0, _080FE560 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _080FE582
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _080FE582
	ldr r0, [r2, #0x7C]
	cmp r4, r0
	bne _080FE564
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x01
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_8082E1C
	b _080FE574
	.byte 0x00, 0x00
_080FE560: .4byte 0x03000FD8
_080FE564:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_080FE574:
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x11]
	movs r3, #0x41
	negs r3, r3
	adds r2, r3, #0x0
	ands r1, r2
	strb r1, [r0, #0x11]
_080FE582:
	ldr r2, _080FE5D4 @ =0x03001034
	ldr r0, _080FE5D8 @ =0x08198154
	ldr r1, _080FE5DC @ =0x081980D8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r3, r1, r0
	ldr r2, _080FE5E0 @ =0x084FB588
	ldr r4, _080FE5E4 @ =0x0300034C
	ldr r1, _080FE5E8 @ =0x00000888
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	movs r1, #0x1E
	cmp r0, #0x00
	beq _080FE5A4
	movs r1, #0x20
_080FE5A4:
	adds r0, r1, r2
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080FE5EC @ =0x089F808C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _080FE5F0 @ =0x02000440
	movs r2, #0x20
	bl _call_via_r3
	ldrh r1, [r4, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	bl sub_810B7EC
	ldr r0, _080FE5F4 @ =0x080FE5F9
	str r0, [r5, #0x04]
_080FE5CE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080FE5D4: .4byte 0x03001034
_080FE5D8: .4byte 0x08198154
_080FE5DC: .4byte 0x081980D8
_080FE5E0: .4byte 0x084FB588
_080FE5E4: .4byte 0x0300034C
_080FE5E8: .4byte 0x00000888
_080FE5EC: .4byte 0x089F808C
_080FE5F0: .4byte 0x02000440
_080FE5F4: .4byte sub_80FE5F8
