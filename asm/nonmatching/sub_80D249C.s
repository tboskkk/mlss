	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r4, [r5, #0x2C]
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080D24B8
	b _080D25EC
_080D24B8:
	ldr r0, [r4, #0x28]
	ldr r1, _080D2538 @ =0x00000111
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r2, r5, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	movs r1, #0x19
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080D253C @ =0x0423448C
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080D2520
	ldr r2, _080D2538 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080D25D6
_080D2520:
	ldr r0, [r5, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x08
	bhi _080D25A0
	lsls r0, r0, #0x02
	ldr r1, _080D2540 @ =lbl_080D2544
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080D2538: .4byte 0x00000111
_080D253C: .4byte 0x0423448C
_080D2540: .4byte lbl_080D2544
lbl_080D2544:
	.4byte _080D2568
	.4byte _080D25A0
	.4byte _080D2568
	.4byte _080D25A0
	.4byte _080D2568
	.4byte _080D25A0
	.4byte _080D2568
	.4byte _080D25A0
	.4byte _080D2568
_080D2568:
	ldr r1, [r4, #56] @ 0x38
	cmp r1, #0
	bge.n _080D2570
	adds r1, #255 @ 0xff
_080D2570:
	asrs r1, r1, #8
	adds r0, r4, #0
	adds r0, #195 @ 0xc3
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	ldr r2, [r4, #60] @ 0x3c
	cmp r2, #0
	bge.n _080D2586
	adds r2, #255 @ 0xff
_080D2586:
	asrs r2, r2, #8
	adds r0, r4, #0
	adds r0, #196 @ 0xc4
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r2, r2, r0
	str r4, [sp, #0]
	movs r0, #125 @ 0x7d
	movs r3, #0
	bl sub_80DF024
	b.n _080D25D6
_080D25A0:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080D25A8
	adds r1, #0xFF
_080D25A8:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D25BE
	adds r2, #0xFF
_080D25BE:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	str r4, [sp, #0x000]
	movs r0, #0x00
	movs r3, #0x00
	bl sub_80DF024
_080D25D6:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D25E8
	cmp r1, #0x04
	bne _080D25EC
_080D25E8:
	ldr r0, _080D25F4 @ =0x080D2D29
	str r0, [r5, #0x4C]
_080D25EC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080D25F4: .4byte sub_80D2D28
