	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	str r0, [sp, #0x004]
	ldr r0, _080B17B8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r0, #0x74]
	adds r0, #0x08
	mov r9, r0
	ldr r0, [sp, #0x004]
	ldr r0, [r0, #0x2C]
	mov r10, r0
	ldr r1, [r4, #0x10]
	mov r8, r1
	movs r6, #0xE6
	mov r1, r8
	muls r1, r6
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	movs r2, #0x1A
	muls r0, r2
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B1644
	adds r1, #0xFF
_080B1644:
	asrs r5, r1, #0x08
	ldr r7, [r4, #0x14]
	adds r1, r7, #0x0
	muls r1, r6
	adds r0, r3, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	muls r0, r2
	adds r1, r1, r0
	cmp r1, #0x00
	bge _080B165C
	adds r1, #0xFF
_080B165C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x38]
	subs r2, r5, r2
	movs r5, #0xB6
	adds r5, r5, r3
	mov r12, r5
	movs r6, #0x00
	ldsh r0, [r5, r6]
	adds r2, r2, r0
	lsrs r0, r2, #0x1F
	adds r2, r2, r0
	asrs r2, r2, #0x01
	add r2, r8
	str r2, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	subs r1, r1, r0
	adds r3, #0xB8
	movs r5, #0x00
	ldsh r0, [r3, r5]
	adds r1, r1, r0
	lsrs r0, r1, #0x1F
	adds r1, r1, r0
	asrs r1, r1, #0x01
	adds r1, r7, r1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	movs r6, #0x80
	lsls r6, r6, #0x01
	adds r0, r0, r6
	str r0, [r4, #0x18]
	mov r0, r9
	str r2, [r0, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, r9
	str r0, [r1, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x38]
	subs r0, r0, r1
	mov r5, r12
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	ldr r2, _080B17BC @ =0x03001038
	movs r6, #0x00
	ldsh r0, [r5, r6]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	movs r5, #0x00
	ldsh r1, [r3, r5]
	adds r6, r1, #0x0
	muls r6, r1
	adds r1, r6, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r5, r0, #0x0
	cmp r5, #0x0F
	bgt _080B1714
	ldrh r1, [r4, #0x26]
	ldr r0, _080B17C0 @ =0x00000FFF
	ands r0, r1
	cmp r0, #0x00
	beq _080B1714
	ldr r0, _080B17C4 @ =0xFFFFF000
	ands r0, r1
	strh r0, [r4, #0x26]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080B16F4
	adds r1, #0xFF
_080B16F4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080B16FE
	adds r2, #0xFF
_080B16FE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080B1708
	adds r3, #0xFF
_080B1708:
	asrs r3, r3, #0x08
	subs r3, #0x0E
	str r4, [sp, #0x000]
	ldr r0, _080B17C8 @ =0x00002FBA
	bl sub_80DF024
_080B1714:
	cmp r5, #0x08
	bgt _080B17A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8E
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B1734
	cmp r1, #0x04
	bne _080B174C
_080B1734:
	ldr r2, _080B17CC @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B174C:
	mov r0, r9
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B175E
	cmp r1, #0x04
	bne _080B1778
_080B175E:
	ldr r2, _080B17D0 @ =0x00002061
	mov r0, r9
	movs r1, #0x0E
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r9
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080B1778:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x8C
	mov r0, r10
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	lsls r1, r1, #0x08
	mov r3, r10
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _080B17D4 @ =0x080B17D9
	ldr r5, [sp, #0x004]
	str r0, [r5, #0x4C]
_080B17A8:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B17B8: .4byte 0x03000FD8
_080B17BC: .4byte 0x03001038
_080B17C0: .4byte 0x00000FFF
_080B17C4: .4byte 0xFFFFF000
_080B17C8: .4byte 0x00002FBA
_080B17CC: .4byte 0x00002032
_080B17D0: .4byte 0x00002061
_080B17D4: .4byte sub_80B17D8
