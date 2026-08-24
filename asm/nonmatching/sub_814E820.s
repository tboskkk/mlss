	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r1, r4, r2
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	bne _0814E884
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0814E8A8
	ldr r2, _0814E878 @ =0x03001038
	ldr r0, _0814E87C @ =0x0819832C
	ldr r1, _0814E880 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [r4, #0x0C]
	subs r0, r2, r3
	ldr r1, [r5, #0x0C]
	cmp r0, r1
	bgt _0814E8A8
	adds r0, r2, r3
	cmp r0, r1
	blt _0814E8A8
_0814E874:
	movs r0, #0x01
	b _0814E8AA
_0814E878: .4byte 0x03001038
_0814E87C: .4byte 0x0819832C
_0814E880: .4byte 0x08198220
_0814E884:
	cmp r1, #0x01
	bne _0814E8A8
	ldrb r0, [r0, #0x09]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	bne _0814E8A8
	ldr r2, [r4, #0x10]
	ldr r1, [r5, #0x10]
	cmp r2, r1
	blt _0814E8A8
	movs r3, #0x9F
	lsls r3, r3, #0x02
	adds r0, r4, r3
	ldrh r0, [r0, #0x00]
	subs r0, r2, r0
	cmp r0, r1
	ble _0814E874
_0814E8A8:
	movs r0, #0x00
_0814E8AA:
	pop {r4, r5}
	pop {r1}
	bx r1
