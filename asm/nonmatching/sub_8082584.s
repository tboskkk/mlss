	.syntax unified
	.text

	thumb_func_start sub_8082584
sub_8082584:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	ldr r5, _08082620 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080825F6
	ldr r1, _08082624 @ =0x0300034C
	ldr r2, _08082628 @ =0x00000884
	adds r0, r1, r2
	ldrh r4, [r0, #0x02]
	ldrh r0, [r1, #0x00]
	ands r4, r0
	ldr r0, [r5, #0x00]
	ldrh r1, [r0, #0x12]
	ands r4, r1
	ldr r6, _0808262C @ =0x02000280
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x1C]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r5, r0, r2
	cmp r4, #0x00
	beq _080825F6
	ldr r0, _08082630 @ =0x03001034
	mov r8, r0
	ldr r1, _08082634 @ =0x08198154
	ldr r0, _08082638 @ =0x081980D8
	subs r7, r1, r0
_080825D4:
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _080825EC
	mov r1, r8
	ldr r3, [r1, #0x00]
	adds r3, r3, r7
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x20
	bl _call_via_r3
_080825EC:
	lsrs r4, r4, #0x01
	adds r6, #0x20
	adds r5, #0x20
	cmp r4, #0x00
	bne _080825D4
_080825F6:
	ldr r0, _08082620 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	strh r1, [r0, #0x12]
	movs r2, #0xFC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _080826D0
	ldr r3, [r4, #0x08]
	cmp r3, #0x00
	beq _0808263C
	cmp r3, #0x01
	bne _080826D0
	adds r0, r4, #0x0
	adds r0, #0x08
	bl sub_8019808
	b _080826D0
	.byte 0x00, 0x00
_08082620: .4byte 0x03000FD8
_08082624: .4byte 0x0300034C
_08082628: .4byte 0x00000884
_0808262C: .4byte 0x02000280
_08082630: .4byte 0x03001034
_08082634: .4byte 0x08198154
_08082638: .4byte 0x081980D8
_0808263C:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _08082650
	cmp r0, #0x01
	ble _08082698
	cmp r0, #0x02
	beq _08082680
	b _08082698
_08082650:
	ldr r2, _08082674 @ =0x03001034
	ldr r0, _08082678 @ =0x08198154
	ldr r1, _0808267C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldrh r1, [r4, #0x02]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	ldr r1, [r4, #0x04]
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x12
	lsls r2, r2, #0x05
	bl _call_via_r3
	b _08082698
	.byte 0x00, 0x00
_08082674: .4byte 0x03001034
_08082678: .4byte 0x08198154
_0808267C: .4byte 0x081980D8
_08082680:
	ldrh r1, [r4, #0x02]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	ldr r1, [r4, #0x04]
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x12
	lsls r2, r2, #0x05
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_08082698:
	ldr r0, _080826B4 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080826B8 @ =0x00003668
	adds r0, r0, r1
	cmp r4, r0
	bne _080826C0
	ldr r0, _080826BC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xFC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x00
	str r1, [r0, #0x00]
	b _080826D0
_080826B4: .4byte 0x03000FDC
_080826B8: .4byte 0x00003668
_080826BC: .4byte 0x03000FD8
_080826C0:
	ldr r0, _08082710 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0xFC
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	subs r0, #0x18
	str r0, [r1, #0x00]
_080826D0:
	ldr r3, _08082710 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x0B]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	movs r2, #0x00
	ldr r0, _08082714 @ =0x03000C88
	ldr r1, [r0, #0x00]
	adds r4, r0, #0x0
	cmp r1, #0x00
	bne _080826FA
_080826EA:
	adds r2, #0x01
	cmp r2, #0x1F
	bgt _08082704
	lsls r0, r2, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080826EA
_080826FA:
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x0B]
_08082704:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08082710: .4byte 0x03000FD8
_08082714: .4byte 0x03000C88
