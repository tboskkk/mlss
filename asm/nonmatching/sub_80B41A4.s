	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r0, _080B4248 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r7, r5, #0x0
	adds r7, #0x08
	ldr r0, [r0, #0x74]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, r4, #0x0
	bl sub_8087EFC
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080B41CA
	adds r0, #0xFF
_080B41CA:
	asrs r6, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCD
	movs r5, #0x00
	ldsb r5, [r0, r5]
	cmp r6, r5
	bge _080B4208
	ldr r0, [r7, #0x08]
	movs r2, #0x06
	ldsh r1, [r0, r2]
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _080B41F0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x7C
	bl play_sfx_80195B4
_080B41F0:
	ldr r2, _080B424C @ =0x03001038
	ldr r0, _080B4250 @ =0x0819832C
	ldr r1, _080B4254 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	lsls r0, r6, #0x08
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r1, [r7, #0x08]
	strh r0, [r1, #0x06]
_080B4208:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080B427A
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B4228
	cmp r1, #0x04
	bne _080B4274
_080B4228:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080B4258
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080B4264
_080B4248: .4byte 0x03000FD8
_080B424C: .4byte 0x03001038
_080B4250: .4byte 0x0819832C
_080B4254: .4byte 0x08198220
_080B4258:
	ldr r2, _080B4284 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080B4264:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_080B4274:
	ldr r0, _080B4288 @ =0x080B428D
	mov r1, r8
	str r0, [r1, #0x4C]
_080B427A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080B4284: .4byte 0x0000204D
_080B4288: .4byte sub_80B428C
