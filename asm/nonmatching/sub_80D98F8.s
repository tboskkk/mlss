	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r3, [r4, #0x38]
	adds r0, r3, r0
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r5, [r4, #0x3C]
	adds r0, r5, r0
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r6, [r4, #0x40]
	adds r1, r6, r1
	str r1, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080D9978
	str r0, [r4, #0x18]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080D9946
	adds r0, #0xFF
_080D9946:
	asrs r7, r0, #0x08
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _080D9950
	adds r0, #0xFF
_080D9950:
	asrs r2, r0, #0x08
	adds r1, r6, #0x0
	cmp r1, #0x00
	bge _080D995A
	adds r1, #0xFF
_080D995A:
	asrs r3, r1, #0x08
	ldr r0, [r4, #0x2C]
	str r0, [sp, #0x000]
	ldr r0, _080D9980 @ =0x00000C6E
	adds r1, r7, #0x0
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080D9978:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D9980: .4byte 0x00000C6E
