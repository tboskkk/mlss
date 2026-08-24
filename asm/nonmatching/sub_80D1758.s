	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	ldr r0, _080D1890 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r4, [r1, #0x74]
	adds r6, r4, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, #0xCD
	movs r0, #0x00
	ldsb r0, [r4, r0]
	subs r4, r0, #0x4
	ldr r3, [r5, #0x18]
	ldr r0, [r5, #0x40]
	cmp r3, r0
	bge _080D17AA
	lsls r1, r4, #0x08
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	cmp r3, r0
	bge _080D17AA
	ldr r2, _080D1894 @ =0x03001038
	ldr r0, _080D1898 @ =0x0819832C
	ldr r1, _080D189C @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x06]
_080D17AA:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080D1884
	movs r7, #0x01
	negs r7, r7
	movs r0, #0x2B
	adds r1, r7, #0x0
	bl play_sfx_80195B4
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080D17E4
	cmp r2, #0x04
	bne _080D1848
_080D17E4:
	ldr r3, [r5, #0x30]
	ldr r0, [r3, #0x38]
	cmp r0, #0x00
	bge _080D17EE
	adds r0, #0xFF
_080D17EE:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r4, r0, #0x0
	subs r4, #0x14
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080D1808
	adds r0, #0xFF
_080D1808:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r1, [r3, #0x40]
	cmp r1, #0x00
	bge _080D181E
	adds r1, #0xFF
_080D181E:
	asrs r3, r1, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x40]
	cmp r0, #0x00
	bge _080D1834
	adds r0, #0xFF
_080D1834:
	asrs r0, r0, #0x08
	adds r0, #0x02
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r5, #0x0
	bl sub_8088164
_080D1848:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D1856
	cmp r2, #0x04
	bne _080D1872
_080D1856:
	ldr r2, _080D18A0 @ =0x00002036
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080D1872:
	adds r2, r5, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080D18A4 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080D18A8 @ =0x080D18AD
	mov r1, r8
	str r0, [r1, #0x4C]
_080D1884:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D1890: .4byte 0x03000FD8
_080D1894: .4byte 0x03001038
_080D1898: .4byte 0x0819832C
_080D189C: .4byte 0x08198220
_080D18A0: .4byte 0x00002036
_080D18A4: .4byte 0x00000FFF
_080D18A8: .4byte sub_80D18AC
