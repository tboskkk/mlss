	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r9, r0
	ldr r3, _080B6F8C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r6, [r0, #0x74]
	adds r7, r6, #0x0
	adds r7, #0x08
	adds r0, r5, #0x0
	movs r1, #0x00
	bl sub_8083A8C
	movs r0, #0x01
	negs r0, r0
	mov r8, r0
	movs r0, #0x2B
	mov r1, r8
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6EFE
	cmp r1, #0x04
	bne _080B6F5A
_080B6EFE:
	adds r0, r4, #0x0
	adds r0, #0x4F
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	negs r0, r0
	mov r12, r0
	ldr r1, [r7, #0x38]
	cmp r1, #0x00
	bge _080B6F14
	adds r1, #0xFF
_080B6F14:
	asrs r1, r1, #0x08
	adds r0, r6, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r1, r0
	ldr r0, [r7, #0x3C]
	cmp r0, #0x00
	bge _080B6F2A
	adds r0, #0xFF
_080B6F2A:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xCC
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, r1
	ldr r3, [r7, #0x40]
	cmp r3, #0x00
	bge _080B6F40
	adds r3, #0xFF
_080B6F40:
	asrs r3, r3, #0x08
	add r3, r12
	mov r1, r8
	str r1, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
_080B6F5A:
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B6F6C
	cmp r1, #0x04
	bne _080B6FAC
_080B6F6C:
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B6F90
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	b _080B6F9C
_080B6F8C: .4byte 0x03000FD8
_080B6F90:
	ldr r2, _080B6FC0 @ =0x0000204D
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
_080B6F9C:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B6FAC:
	ldr r0, _080B6FC4 @ =0x080B6FC9
	mov r1, r9
	str r0, [r1, #0x4C]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B6FC0: .4byte 0x0000204D
_080B6FC4: .4byte sub_80B6FC8
