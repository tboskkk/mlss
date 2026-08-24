	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _0809DFD6
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
_0809DFD6:
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bne _0809E020
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0809DFE6
	adds r1, #0xFF
_0809DFE6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0809DFF0
	adds r2, #0xFF
_0809DFF0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809DFFA
	adds r3, #0xFF
_0809DFFA:
	asrs r3, r3, #0x08
	str r0, [sp, #0x000]
	ldr r0, _0809E01C @ =0x000022AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x02
	negs r0, r0
	b _0809E052
	.byte 0x00, 0x00
_0809E01C: .4byte 0x000022AB
_0809E020:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0xC0
	lsls r1, r1, #0x02
	strh r1, [r0, #0x00]
	subs r0, #0x0A
	str r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
_0809E052:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
