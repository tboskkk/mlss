	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	ldr r1, _080AE698 @ =0x03000FD8
	ldr r2, [r1, #0x00]
	ldr r1, [r2, #0x70]
	adds r1, #0x08
	mov r8, r1
	ldr r5, [r2, #0x74]
	adds r6, r5, #0x0
	adds r6, #0x08
	ldr r7, [r0, #0x2C]
	adds r0, r6, #0x0
	bl sub_8087CE4
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	ldr r4, _080AE69C @ =0x03001038
	ldr r2, _080AE6A0 @ =0x0819832C
	ldr r3, _080AE6A4 @ =0x08198220
	subs r2, r2, r3
	ldr r3, [r4, #0x00]
	adds r3, r3, r2
	lsls r0, r0, #0x0E
	bl _call_via_r3
	adds r2, r0, #0x0
	adds r0, r5, #0x0
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r2
	bgt _080AE5C8
	adds r0, r5, #0x0
	adds r0, #0x86
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080AE5CA
_080AE5C8:
	movs r1, #0x00
_080AE5CA:
	cmp r1, #0x00
	beq _080AE5FC
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE5E0
	cmp r1, #0x04
	bne _080AE5FC
_080AE5E0:
	ldr r2, _080AE6A8 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AE5FC:
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0B
	bne _080AE63C
	ldr r1, [r6, #0x18]
	ldr r0, _080AE6AC @ =0x000025FF
	cmp r1, r0
	bgt _080AE63C
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE620
	cmp r1, #0x04
	bne _080AE63C
_080AE620:
	ldr r2, _080AE6A8 @ =0x00002061
	adds r0, r6, #0x0
	movs r1, #0x0A
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080AE63C:
	adds r0, r6, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080AE64C
	b _080AE8F2
_080AE64C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	mov r5, r8
	ldr r0, [r5, #0x30]
	bl sub_807C298
	adds r2, r6, #0x0
	adds r2, #0xCC
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xCA
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080AE6B0 @ =0x040211A8
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r1, [r6, #0x24]
	adds r1, #0x01
	strh r1, [r6, #0x24]
	cmp r0, #0x01
	bne _080AE6B4
	adds r0, r6, #0x0
	bl sub_8086764
	b _080AE8F2
_080AE698: .4byte 0x03000FD8
_080AE69C: .4byte 0x03001038
_080AE6A0: .4byte 0x0819832C
_080AE6A4: .4byte 0x08198220
_080AE6A8: .4byte 0x00002061
_080AE6AC: .4byte 0x000025FF
_080AE6B0: .4byte 0x040211A8
_080AE6B4:
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080AE6D0
	ldr r4, _080AE7A8 @ =0x00000111
	adds r0, r1, r4
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080AE71C
_080AE6D0:
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080AE6D8
	adds r1, #0xFF
_080AE6D8:
	asrs r1, r1, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080AE6EE
	adds r0, #0xFF
_080AE6EE:
	asrs r0, r0, #0x08
	adds r1, r7, #0x0
	adds r1, #0xC4
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080AE704
	adds r3, #0xFF
_080AE704:
	asrs r3, r3, #0x08
	adds r0, r7, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r3, r0
	ldr r0, _080AE7AC @ =0x000006E3
	str r7, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80DF024
_080AE71C:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x53
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	adds r1, r6, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080AE73C
	cmp r2, #0x04
	bne _080AE77A
_080AE73C:
	ldr r3, [r6, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE74A
	adds r0, #0xFF
_080AE74A:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE758
	adds r0, #0xFF
_080AE758:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE766
	adds r0, #0xFF
_080AE766:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r6, #0x0
	bl sub_80880C4
_080AE77A:
	ldrb r0, [r5, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE788
	cmp r1, #0x04
	bne _080AE7F0
_080AE788:
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AE7B4
	ldr r2, _080AE7B0 @ =0x00002002
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AE7C0
	.byte 0x00, 0x00
_080AE7A8: .4byte 0x00000111
_080AE7AC: .4byte 0x000006E3
_080AE7B0: .4byte 0x00002002
_080AE7B4:
	ldr r2, _080AE890 @ =0x0000204F
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE7C0:
	ldr r3, [r6, #0x08]
	movs r2, #0x00
	adds r0, r6, #0x0
	adds r0, #0x84
	movs r4, #0x00
	ldsh r1, [r0, r4]
	movs r4, #0x02
	ldsh r0, [r0, r4]
	cmp r1, r0
	blt _080AE7D6
	movs r2, #0x01
_080AE7D6:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AE7F0:
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AE7FE
	cmp r2, #0x04
	bne _080AE808
_080AE7FE:
	movs r0, #0x00
	str r0, [r6, #0x4C]
	adds r0, r6, #0x0
	bl sub_808863C
_080AE808:
	mov r1, r8
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r4, r1, #0x0
	cmp r2, #0x02
	beq _080AE81C
	cmp r2, #0x04
	bne _080AE860
_080AE81C:
	mov r5, r8
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE82C
	adds r0, #0xFF
_080AE82C:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE83A
	adds r0, #0xFF
_080AE83A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080AE848
	adds r0, #0xFF
_080AE848:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	mov r0, r8
	bl sub_808843C
	movs r1, #0x80
	lsls r1, r1, #0x03
	mov r0, r8
	bl sub_80880C4
_080AE860:
	ldrb r0, [r4, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AE86E
	cmp r1, #0x04
	bne _080AE8D8
_080AE86E:
	mov r1, r8
	ldr r0, [r1, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080AE898
	ldr r2, _080AE894 @ =0x00002002
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080AE8A4
	.byte 0x00, 0x00
_080AE890: .4byte 0x0000204F
_080AE894: .4byte 0x00002002
_080AE898:
	ldr r2, _080AE900 @ =0x0000204F
	mov r0, r8
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080AE8A4:
	mov r5, r8
	ldr r3, [r5, #0x08]
	movs r2, #0x00
	mov r0, r8
	adds r0, #0x84
	movs r5, #0x00
	ldsh r1, [r0, r5]
	movs r5, #0x02
	ldsh r0, [r0, r5]
	cmp r1, r0
	blt _080AE8BC
	movs r2, #0x01
_080AE8BC:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080AE8D8:
	ldrb r0, [r4, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080AE8E6
	cmp r2, #0x04
	bne _080AE8F2
_080AE8E6:
	movs r0, #0x00
	mov r1, r8
	str r0, [r1, #0x4C]
	mov r0, r8
	bl sub_808863C
_080AE8F2:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AE900: .4byte 0x0000204F
