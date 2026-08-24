	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	ldr r7, _080C2138 @ =0x03000FD8
	ldr r0, [r7, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	mov r0, r10
	ldr r0, [r0, #0x2C]
	mov r8, r0
	adds r0, r5, #0x0
	bl sub_80884AC
	ldr r1, [r5, #0x08]
	mov r9, r1
	adds r3, r4, #0x0
	adds r3, #0x86
	movs r2, #0x00
	ldsh r1, [r3, r2]
	cmp r1, #0x00
	bge _080C2050
	adds r1, #0x3F
_080C2050:
	asrs r1, r1, #0x06
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	subs r0, r0, r1
	mov r1, r9
	strh r0, [r1, #0x06]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0A]
	movs r2, #0xC0
	mov r12, r2
	mov r0, r12
	ands r0, r1
	cmp r0, #0x00
	bne _080C2070
	b _080C2650
_080C2070:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r2, #0x80
	lsls r2, r2, #0x07
	cmp r0, r2
	bge _080C208A
	adds r2, r4, #0x0
	adds r2, #0x81
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080C208A:
	adds r1, r4, #0x0
	adds r1, #0xB6
	ldrh r0, [r1, #0x00]
	lsrs r0, r0, #0x0C
	mov r9, r1
	cmp r0, #0x00
	beq _080C209A
	b _080C25DE
_080C209A:
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0A]
	mov r0, r12
	ands r0, r1
	adds r7, r3, #0x0
	cmp r0, #0x00
	beq _080C21A0
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0xB4
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, r2
	bgt _080C20C0
	movs r4, #0x00
	ldsh r0, [r7, r4]
	movs r1, #0x01
	cmp r0, r2
	bge _080C20C2
_080C20C0:
	movs r1, #0x00
_080C20C2:
	adds r7, r5, #0x0
	adds r7, #0x7E
	movs r0, #0xAE
	adds r0, r0, r5
	mov r9, r0
	cmp r1, #0x00
	beq _080C21A0
	ldr r2, _080C2138 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	beq _080C213C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C20F4
	movs r1, #0x33
_080C20E8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C20E8
_080C20F4:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2108
	movs r1, #0x33
_080C20FC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C20FC
_080C2108:
	mov r2, r8
	cmp r2, #0x00
	beq _080C211C
	movs r1, #0x33
_080C2110:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2110
_080C211C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2198
	movs r1, #0x03
_080C2126:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2130
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2130:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2126
	b _080C2198
_080C2138: .4byte 0x03000FD8
_080C213C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2152
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2146:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2146
_080C2152:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2168
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C215C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C215C
_080C2168:
	mov r2, r8
	cmp r2, #0x00
	beq _080C217E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2172:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2172
_080C217E:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2198
	movs r1, #0x10
_080C2188:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2192
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2192:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2188
_080C2198:
	movs r0, #0x4C
	movs r1, #0x0C
	bl sub_807E534
_080C21A0:
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C21B0
	adds r1, r0, #0x0
_080C21B0:
	ldr r0, _080C21FC @ =0x00007FFF
	cmp r2, r0
	ble _080C21B8
	adds r2, r0, #0x0
_080C21B8:
	cmp r2, r1
	bge _080C21BE
	adds r1, r2, #0x0
_080C21BE:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, r1
	blt _080C21D4
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	movs r1, #0x01
	cmp r0, r2
	ble _080C21D6
_080C21D4:
	movs r1, #0x00
_080C21D6:
	cmp r1, #0x00
	bne _080C21DC
	b _080C234E
_080C21DC:
	ldr r0, _080C2200 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0A]
	movs r1, #0xC0
	ands r1, r0
	cmp r1, #0x80
	bne _080C2204
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
	b _080C221A
_080C21FC: .4byte 0x00007FFF
_080C2200: .4byte 0x03000FD8
_080C2204:
	cmp r1, #0x40
	bne _080C221A
	movs r1, #0xFF
	lsls r1, r1, #0x18
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r2, #0x18
	movs r3, #0x00
	bl sub_807E680
_080C221A:
	ldr r0, _080C22D0 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C2228
	b _080C234E
_080C2228:
	movs r0, #0x07
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
	adds r0, r5, #0x0
	bl sub_807EA24
	ldr r4, _080C22D4 @ =0x03000FD8
	ldr r3, [r4, #0x00]
	ldrb r2, [r3, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0A]
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080C233A
	ldrb r1, [r2, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C22D8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C2288
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C227C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C227C
_080C2288:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C229E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2292:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2292
_080C229E:
	mov r2, r8
	cmp r2, #0x00
	beq _080C22B4
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22A8:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22A8
_080C22B4:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2336
	movs r1, #0x10
_080C22BE:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C22C8
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C22C8:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C22BE
	b _080C2336
_080C22D0: .4byte 0x0300034C
_080C22D4: .4byte 0x03000FD8
_080C22D8:
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	cmp r5, #0x00
	beq _080C22F0
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22E4:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22E4
_080C22F0:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2306
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C22FA:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C22FA
_080C2306:
	mov r2, r8
	cmp r2, #0x00
	beq _080C231C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2310:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2310
_080C231C:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2336
	movs r1, #0x10
_080C2326:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2330
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2330:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2326
_080C2336:
	bl sub_807F448
_080C233A:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	ldr r1, _080C241C @ =0x00000FFF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r2, #0x0
	orrs r1, r0
	mov r3, r9
	strh r1, [r3, #0x00]
_080C234E:
	mov r4, r9
	ldrh r0, [r4, #0x00]
	lsrs r0, r0, #0x0C
	cmp r0, #0x00
	beq _080C235A
	b _080C25DE
_080C235A:
	movs r1, #0x80
	lsls r1, r1, #0x07
	ldr r0, _080C2420 @ =0x00007FFF
	cmp r1, r0
	ble _080C2366
	adds r1, r0, #0x0
_080C2366:
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, r1
	bgt _080C237C
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r2, #0x01
	cmp r0, r1
	bge _080C237E
_080C237C:
	movs r2, #0x00
_080C237E:
	cmp r2, #0x00
	bne _080C2384
	b _080C2490
_080C2384:
	ldr r3, _080C2424 @ =0x03000FD8
	ldr r4, [r3, #0x00]
	ldrb r2, [r4, #0x0A]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x0A]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	ldr r0, _080C241C @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C2428
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C23D2
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23C6:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23C6
_080C23D2:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C23E8
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23DC:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23DC
_080C23E8:
	mov r2, r8
	cmp r2, #0x00
	beq _080C23FE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C23F2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C23F2
_080C23FE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2484
	movs r1, #0x10
_080C2408:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2412
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2412:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2408
	b _080C2484
	.byte 0x00, 0x00
_080C241C: .4byte 0x00000FFF
_080C2420: .4byte 0x00007FFF
_080C2424: .4byte 0x03000FD8
_080C2428:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C243E
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2432:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2432
_080C243E:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2454
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2448:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2448
_080C2454:
	mov r2, r8
	cmp r2, #0x00
	beq _080C246A
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C245E:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C245E
_080C246A:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C2484
	movs r1, #0x10
_080C2474:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C247E
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C247E:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C2474
_080C2484:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	b _080C25DE
_080C2490:
	movs r3, #0x00
	ldsh r0, [r7, r3]
	movs r4, #0x80
	lsls r4, r4, #0x07
	cmp r0, r4
	ble _080C249E
	b _080C25DE
_080C249E:
	ldr r0, _080C2560 @ =0x0300034C
	ldrh r1, [r0, #0x3E]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080C24B4
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _080C24B4
	b _080C25DE
_080C24B4:
	ldr r2, _080C2564 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r3, [r4, #0x0A]
	lsls r0, r3, #0x1A
	lsrs r0, r0, #0x1E
	movs r1, #0x01
	orrs r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x31
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x0A]
	ldr r4, [r2, #0x00]
	ldrb r0, [r4, #0x0A]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	adds r3, r2, #0x0
	cmp r0, #0x00
	bne _080C25DE
	mov r0, r9
	ldrh r1, [r0, #0x00]
	ldr r0, _080C2568 @ =0x00000FFF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r1, r2, #0x0
	orrs r0, r1
	mov r1, r9
	strh r0, [r1, #0x00]
	ldrb r1, [r4, #0x0C]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C256C
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2516
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C250A:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C250A
_080C2516:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C252C
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2520:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2520
_080C252C:
	mov r2, r8
	cmp r2, #0x00
	beq _080C2542
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2536:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2536
_080C2542:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C25C8
	movs r1, #0x10
_080C254C:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C2556
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C2556:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C254C
	b _080C25C8
	.byte 0x00, 0x00
_080C2560: .4byte 0x0300034C
_080C2564: .4byte 0x03000FD8
_080C2568: .4byte 0x00000FFF
_080C256C:
	adds r2, r5, #0x0
	cmp r5, #0x00
	beq _080C2582
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C2576:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C2576
_080C2582:
	adds r2, r6, #0x0
	cmp r6, #0x00
	beq _080C2598
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C258C:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C258C
_080C2598:
	mov r2, r8
	cmp r2, #0x00
	beq _080C25AE
	movs r1, #0x80
	lsls r1, r1, #0x01
_080C25A2:
	adds r0, r2, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _080C25A2
_080C25AE:
	ldr r0, [r3, #0x00]
	ldr r2, [r0, #0x78]
	cmp r2, #0x00
	beq _080C25C8
	movs r1, #0x10
_080C25B8:
	ldr r0, [r2, #0x08]
	cmp r0, #0x00
	beq _080C25C2
	adds r0, #0x20
	strb r1, [r0, #0x00]
_080C25C2:
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	bne _080C25B8
_080C25C8:
	bl sub_807F448
	adds r0, r5, #0x0
	bl sub_807EA24
	movs r0, #0x06
	adds r1, r5, #0x0
	movs r2, #0x16
	movs r3, #0x00
	bl sub_807EAE4
_080C25DE:
	mov r2, r9
	ldrh r0, [r2, #0x00]
	lsrs r3, r0, #0x0C
	cmp r3, #0x00
	beq _080C2650
	movs r1, #0x00
	movs r2, #0x80
	lsls r2, r2, #0x07
	movs r0, #0x80
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _080C25F8
	adds r1, r0, #0x0
_080C25F8:
	ldr r0, _080C2644 @ =0x00007FFF
	cmp r2, r0
	ble _080C2600
	adds r2, r0, #0x0
_080C2600:
	cmp r2, r1
	bge _080C2606
	adds r1, r2, #0x0
_080C2606:
	adds r0, r5, #0x0
	adds r0, #0x7E
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, r1
	blt _080C2620
	adds r0, r5, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	movs r1, #0x01
	cmp r0, r2
	ble _080C2622
_080C2620:
	movs r1, #0x00
_080C2622:
	cmp r1, #0x00
	beq _080C2650
	cmp r3, #0x01
	ble _080C2650
	mov r2, r9
	ldrh r0, [r2, #0x00]
	ldr r1, _080C2648 @ =0x00000FFF
	ands r1, r0
	strh r1, [r2, #0x00]
	ldr r1, _080C264C @ =0x080C3315
	mov r3, r10
	str r1, [r3, #0x4C]
	mov r0, r10
	bl _call_via_r1
	b _080C26C8
	.byte 0x00, 0x00
_080C2644: .4byte 0x00007FFF
_080C2648: .4byte 0x00000FFF
_080C264C: .4byte sub_80C3314
_080C2650:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080C26C8
	ldr r0, [r5, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x06]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C2678
	cmp r1, #0x04
	bne _080C2694
_080C2678:
	ldr r2, _080C26D8 @ =0x00002034
	adds r0, r5, #0x0
	movs r1, #0x02
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
_080C2694:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C26A6
	cmp r1, #0x04
	bne _080C26C2
_080C26A6:
	ldr r2, _080C26DC @ =0x00002063
	adds r0, r6, #0x0
	movs r1, #0x0C
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
_080C26C2:
	ldr r0, _080C26E0 @ =0x080C8745
	mov r4, r10
	str r0, [r4, #0x4C]
_080C26C8:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080C26D8: .4byte 0x00002034
_080C26DC: .4byte 0x00002063
_080C26E0: .4byte sub_80C8744
