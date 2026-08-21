	.syntax unified
	.text

	thumb_func_start sub_80F68C4
sub_80F68C4:
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F68E8
	ldr r0, _080F68E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F68F8
	.byte 0x00, 0x00
_080F68E4: .4byte 0x03000FD8
_080F68E8:
	ldr r1, _080F6954 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F68F8:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _080F694E
	ldrb r0, [r1, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #0x05
	adds r0, r0, r4
	ldrh r1, [r1, #0x16]
	orrs r0, r1
	adds r1, r2, #0x0
	adds r1, #0x70
	strh r0, [r1, #0x00]
	ldr r0, [r2, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, #0x02
	strh r0, [r1, #0x00]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F694E
	ldr r0, _080F6958 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x88
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x19
	adds r3, r2, #0x0
	adds r3, #0x76
	lsrs r1, r1, #0x1F
	ldrb r2, [r3, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_080F694E:
	pop {r4}
	pop {r0}
	bx r0
_080F6954: .4byte 0x03000FDC
_080F6958: .4byte 0x03000FD8
