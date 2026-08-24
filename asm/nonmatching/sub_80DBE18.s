	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x00
	bl sub_80F7608
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
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x82
	bl play_sfx_80195B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x01
	bl sub_81DD77C
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _080DBE6C
	ldr r0, _080DBE68 @ =0x080DBF0D
	b _080DBEFC
	.byte 0x00, 0x00
_080DBE68: .4byte sub_80DBF0C
_080DBE6C:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBE7A
	adds r0, #0xFF
_080DBE7A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBE8A
	adds r0, #0xFF
_080DBE8A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080DBE9A
	adds r0, #0xFF
_080DBE9A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [sp, #0x000]
	movs r1, #0x88
	lsls r1, r1, #0x01
	subs r1, r1, r0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r2, #0x0B
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080DBF08 @ =0x080DC0B5
_080DBEFC:
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DBF08: .4byte sub_80DC0B4
