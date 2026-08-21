	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80822D4
sub_80822D4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, [r4, #0x08]
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080822F4
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080822F4
	adds r0, r5, #0x0
	bl sub_8081568
_080822F4:
	adds r0, r5, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08082310
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08082318 @ =0x0808231D
	str r0, [r4, #0x04]
_08082310:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082318: .4byte sub_808231C
	thumb_func_start sub_808231C
sub_808231C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	ldrh r1, [r5, #0x10]
	movs r2, #0x10
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	ble _0808233C
	subs r0, r1, #0x1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0808233C
	adds r0, r4, #0x0
	bl sub_8081568
_0808233C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08082364
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808236C @ =0x08082371
	str r0, [r5, #0x04]
_08082364:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808236C: .4byte sub_8082370
	thumb_func_start sub_8082370
sub_8082370:
	push {r4, lr}
	adds r1, r0, #0x0
	ldr r3, [r1, #0x08]
	ldrh r2, [r1, #0x10]
	movs r4, #0x10
	ldsh r0, [r1, r4]
	cmp r0, #0x00
	ble _08082392
	subs r0, r2, #0x1
	strh r0, [r1, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _080823B4
	adds r0, r3, #0x0
	bl sub_8081568
	b _080823B4
_08082392:
	ldr r0, _080823AC @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0B]
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _080823B0
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x0B]
	b _080823B4
	.byte 0x00, 0x00
_080823AC: .4byte 0x03000FD8
_080823B0:
	ldr r0, _080823BC @ =0x08081F85
	str r0, [r1, #0x04]
_080823B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080823BC: .4byte sub_8081F84
	thumb_func_start sub_80823C0
sub_80823C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	ldr r0, _08082580 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r6, #0x01
	negs r6, r6
	adds r7, r0, #0x4
	movs r0, #0x07
	mov r8, r0
_080823D6:
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r5, #0x10
	orrs r1, r5
	strb r1, [r2, #0x00]
	str r0, [r7, #0x00]
	str r0, [r7, #0x0C]
	bl sub_80842D8
	movs r1, #0x98
	lsls r1, r1, #0x01
	adds r4, r7, r1
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	orrs r1, r5
	strb r1, [r2, #0x00]
	str r0, [r4, #0x00]
	str r0, [r4, #0x0C]
	bl sub_80842D8
	movs r0, #0x98
	lsls r0, r0, #0x02
	adds r7, r7, r0
	movs r1, #0x02
	negs r1, r1
	add r8, r1
	mov r0, r8
	cmp r0, #0x00
	bge _080823D6
	ldr r0, _08082580 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x04
	adds r7, r0, r1
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x01
	negs r6, r6
_0808244A:
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	movs r5, #0xD0
	mov r1, r8
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	mov r4, r8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	movs r1, #0x04
	add r8, r1
	mov r0, r8
	cmp r0, #0x07
	ble _0808244A
	ldr r0, _08082580 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r7, r0, r1
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x01
	negs r6, r6
_080824E8:
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	movs r5, #0xD0
	mov r1, r8
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	mov r4, r8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	movs r1, #0x04
	add r8, r1
	mov r0, r8
	cmp r0, #0x0F
	ble _080824E8
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08082580: .4byte 0x03000FDC
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
	.byte 0xF0, 0xB5, 0x47, 0x46, 0x80, 0xB4, 0x81, 0xB0, 0x04, 0x1C, 0x00, 0x2C, 0x5E, 0xD0, 0x21, 0x88
	.byte 0x02, 0x34, 0x00, 0x29, 0x5A, 0xD0, 0x2C, 0x48, 0x81, 0x42, 0x36, 0xD0, 0x01, 0x27, 0x7F, 0x42
	.byte 0x80, 0x46, 0x68, 0x46, 0x5F, 0xF0, 0x46, 0xF9, 0x05, 0x1C, 0x00, 0x98, 0x01, 0x38, 0x00, 0x90
	.byte 0xA6, 0x1C, 0xB8, 0x42, 0x23, 0xD0, 0x00, 0x98, 0x40, 0x00, 0x40, 0x19, 0x01, 0x88, 0x00, 0x29
	.byte 0x18, 0xD0, 0xF0, 0x22, 0x12, 0x02, 0x0A, 0x40, 0x80, 0x20, 0x80, 0x01, 0x82, 0x42, 0x11, 0xD0
	.byte 0xB0, 0x20, 0x00, 0x02, 0x82, 0x42, 0x0D, 0xD0, 0x80, 0x20, 0xC0, 0x01, 0x82, 0x42, 0x09, 0xD0
	.byte 0xE0, 0x20, 0xC0, 0x01, 0x82, 0x42, 0x05, 0xD0, 0x00, 0x20, 0x01, 0x22, 0x52, 0x42, 0x01, 0x23
	.byte 0x9E, 0xF7, 0x8C, 0xFE, 0x00, 0x98, 0x01, 0x38, 0x00, 0x90, 0xB8, 0x42, 0xDB, 0xD1, 0x21, 0x88
	.byte 0x34, 0x1C, 0x00, 0x29, 0x22, 0xD0, 0x41, 0x45, 0xCB, 0xD1, 0x21, 0x88, 0x02, 0x34, 0x00, 0x29
	.byte 0x1C, 0xD0, 0xF0, 0x22, 0x12, 0x02, 0x0A, 0x40, 0x80, 0x20, 0x80, 0x01, 0x82, 0x42, 0xF4, 0xD0
	.byte 0xB0, 0x20, 0x00, 0x02, 0x82, 0x42, 0xF0, 0xD0, 0x80, 0x20, 0xC0, 0x01, 0x82, 0x42, 0xEC, 0xD0
	.byte 0xE0, 0x20, 0xC0, 0x01, 0x82, 0x42, 0xE8, 0xD0, 0x00, 0x20, 0x01, 0x22, 0x52, 0x42, 0x01, 0x23
	.byte 0x9E, 0xF7, 0x64, 0xFE, 0xE1, 0xE7, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x01, 0xB0, 0x08, 0xBC
	.byte 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47
	thumb_func_start sub_80827F0
sub_80827F0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, _0808280C @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r4, #0xFC
	lsls r4, r4, #0x01
	adds r2, r0, r4
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08082810
	adds r0, #0x18
	b _08082818
_0808280C: .4byte 0x03000FD8
_08082810:
	ldr r0, _0808284C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r4, _08082850 @ =0x00003668
	adds r0, r0, r4
_08082818:
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r0, #0x03
	adds r1, r7, #0x0
	ands r1, r0
	ldrb r2, [r4, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	str r6, [r4, #0x04]
	ldr r0, [sp, #0x018]
	strh r0, [r4, #0x02]
	cmp r3, #0x00
	bge _08082854
	adds r0, r5, #0x0
	bl sub_80198B0
	lsrs r0, r0, #0x05
	b _08082856
	.byte 0x00, 0x00
_0808284C: .4byte 0x03000FDC
_08082850: .4byte 0x00003668
_08082854:
	lsrs r0, r3, #0x05
_08082856:
	lsls r2, r0, #0x02
	ldrh r1, [r4, #0x00]
	movs r0, #0x03
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #0x00]
	str r5, [r4, #0x0C]
	cmp r7, #0x00
	beq _0808288A
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bne _08082884
	ldr r0, _08082880 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	b _0808288C
	.byte 0x00, 0x00
_08082880: .4byte 0x03000FD8
_08082884:
	ldr r0, [sp, #0x014]
	str r0, [r4, #0x10]
	b _0808288C
_0808288A:
	str r6, [r4, #0x10]
_0808288C:
	movs r0, #0x01
	str r0, [r4, #0x08]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8082898
sub_8082898:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_80E19CC
	adds r6, r0, #0x0
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08082912
_080828B8:
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r5, [r0, #0x00]
	cmp r5, #0x00
	beq _08082904
	ldr r0, _080828D0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080828D4 @ =0x00003660
	adds r4, r0, r1
	b _080828E0
	.byte 0x00, 0x00
_080828D0: .4byte 0x03000FDC
_080828D4: .4byte 0x00003660
_080828D8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082904
	subs r4, #0x08
_080828E0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080828D8
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082904
	ldr r0, _0808291C @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082904
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082904:
	ldr r1, [sp, #0x000]
	subs r1, #0x01
	str r1, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080828B8
_08082912:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808291C: .4byte 0x07FFFFFF
	thumb_func_start sub_8082920
sub_8082920:
	push {r4, lr}
	add sp, #-0x004
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_80E19CC
	adds r4, r0, #0x0
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _0808298C
_08082940:
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x00]
	cmp r1, #0x00
	beq _0808297E
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _0808297E
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _0808297E
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _0808297E
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _0808297E
	movs r0, #0x00
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x01
	bl sub_80214A4
_0808297E:
	ldr r1, [sp, #0x000]
	subs r1, #0x01
	str r1, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08082940
_0808298C:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8082994
sub_8082994:
	push {r4, r5, lr}
	ldr r0, _080829CC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xFA
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _080829C4
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080829C4
	movs r5, #0x00
_080829AE:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080829B8
	bl sprite_heap_free
_080829B8:
	strh r5, [r4, #0x00]
	str r5, [r4, #0x04]
	subs r4, #0x08
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080829AE
_080829C4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080829CC: .4byte 0x03000FD8
	.byte 0x01, 0x20, 0x70, 0x47, 0x10, 0xB5, 0x02, 0x1C, 0x04, 0x48, 0x00, 0x68, 0xFA, 0x21, 0x49, 0x00
	.byte 0x40, 0x18, 0x01, 0x68, 0x00, 0x29, 0x1A, 0xD0, 0x0C, 0x1C, 0x15, 0xE0, 0xD8, 0x0F, 0x00, 0x03
	.byte 0x20, 0x88, 0x90, 0x42, 0x0F, 0xD1, 0x60, 0x68, 0x9F, 0xF7, 0xA6, 0xF9, 0x06, 0xE0, 0x21, 0x1C
	.byte 0x08, 0x39, 0x08, 0x88, 0x20, 0x80, 0x48, 0x68, 0x60, 0x60, 0x0C, 0x1C, 0x20, 0x88, 0x00, 0x28
	.byte 0xF5, 0xD1, 0x01, 0x20, 0x04, 0xE0, 0x08, 0x3C, 0x20, 0x88, 0x00, 0x28, 0xE8, 0xD1, 0x00, 0x20
	.byte 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	thumb_func_start sub_8082A28
sub_8082A28:
	push {lr}
	ldr r2, _08082A3C @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0B]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08082A40
	movs r0, #0x01
	b _08082A68
_08082A3C: .4byte 0x03000FD8
_08082A40:
	ldr r0, _08082A4C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r3, _08082A50 @ =0x00003660
	adds r1, r0, r3
	b _08082A56
	.byte 0x00, 0x00
_08082A4C: .4byte 0x03000FDC
_08082A50: .4byte 0x00003660
_08082A54:
	subs r1, #0x08
_08082A56:
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08082A54
	ldr r0, [r2, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r0, r2
	str r1, [r0, #0x00]
	movs r0, #0x00
_08082A68:
	pop {r1}
	bx r1
	thumb_func_start sub_8082A6C
sub_8082A6C:
	push {lr}
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AA6
	movs r2, #0xF0
	lsls r2, r2, #0x08
	ands r2, r1
	movs r0, #0x80
	lsls r0, r0, #0x06
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xB0
	lsls r0, r0, #0x08
	cmp r2, r0
	beq _08082AA6
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r0, #0xE0
	lsls r0, r0, #0x07
	cmp r2, r0
	beq _08082AA6
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	movs r3, #0x01
	bl sub_80214A4
_08082AA6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8082AAC
sub_8082AAC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _08082AF4
	ldr r0, _08082AC0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08082AC4 @ =0x00003660
	adds r4, r0, r1
	b _08082AD0
	.byte 0x00, 0x00
_08082AC0: .4byte 0x03000FDC
_08082AC4: .4byte 0x00003660
_08082AC8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082AF4
	subs r4, #0x08
_08082AD0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _08082AC8
	movs r2, #0x01
	negs r2, r2
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082AF4
	ldr r0, _08082AFC @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082AF4
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082AF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08082AFC: .4byte 0x07FFFFFF
