	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r0, _080AB6C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r6, r4, #0x0
	adds r6, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r8, r0
	mov r0, r10
	ldr r5, [r0, #0x2C]
	movs r1, #0x01
	negs r1, r1
	mov r9, r1
	movs r0, #0x62
	bl play_sfx_80195B4
	ldr r1, [r6, #0x10]
	cmp r1, #0x00
	bge _080AB632
	adds r1, #0xFF
_080AB632:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x14]
	cmp r2, #0x00
	bge _080AB63C
	adds r2, #0xFF
_080AB63C:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x18]
	cmp r3, #0x00
	bge _080AB646
	adds r3, #0xFF
_080AB646:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080AB6C4 @ =0x00002F9E
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB662
	cmp r1, #0x04
	bne _080AB718
_080AB662:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080AB66A
	adds r1, #0xFF
_080AB66A:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r1, r0
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _080AB680
	adds r0, #0xFF
_080AB680:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080AB696
	adds r3, #0xFF
_080AB696:
	asrs r3, r3, #0x08
	adds r4, r5, #0x0
	adds r4, #0xC5
	movs r0, #0x00
	ldsb r0, [r4, r0]
	adds r3, r3, r0
	adds r3, #0x3C
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	cmp r5, r0
	bne _080AB6C8
	ldrb r4, [r4, #0x00]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	b _080AB6D8
_080AB6C0: .4byte 0x03000FD8
_080AB6C4: .4byte 0x00002F9E
_080AB6C8:
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	adds r0, r5, #0x0
	adds r0, #0x47
	movs r4, #0x00
	ldsb r4, [r0, r4]
_080AB6D8:
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080AB6E0
	adds r0, #0xFF
_080AB6E0:
	asrs r0, r0, #0x08
	adds r4, r4, r0
	ldr r2, _080AB788 @ =0x03001038
	ldr r0, _080AB78C @ =0x0819832C
	ldr r1, _080AB790 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r4, #0x0
	muls r1, r4
	cmp r1, #0x00
	bge _080AB6FA
	adds r1, #0x3F
_080AB6FA:
	asrs r1, r1, #0x06
	adds r1, #0x40
	movs r0, #0x80
	lsls r0, r0, #0x05
	bl _call_via_r2
	adds r4, r4, r0
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r4, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_8088164
_080AB718:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB72A
	cmp r1, #0x04
	bne _080AB742
_080AB72A:
	ldr r2, _080AB794 @ =0x00002030
	adds r0, r6, #0x0
	movs r1, #0x09
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AB742:
	mov r0, r8
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AB754
	cmp r1, #0x04
	bne _080AB772
_080AB754:
	ldr r2, _080AB798 @ =0x0000205F
	mov r0, r8
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	mov r1, r8
	ldr r2, [r1, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AB772:
	ldr r0, _080AB79C @ =0x080AB7A1
	mov r1, r10
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AB788: .4byte 0x03001038
_080AB78C: .4byte 0x0819832C
_080AB790: .4byte 0x08198220
_080AB794: .4byte 0x00002030
_080AB798: .4byte 0x0000205F
_080AB79C: .4byte sub_80AB7A0
