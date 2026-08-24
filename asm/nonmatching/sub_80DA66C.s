	push {r4, r5, lr}
	adds r3, r0, #0x0
	movs r0, #0xAE
	adds r0, r0, r3
	mov r12, r0
	ldrh r0, [r0, #0x00]
	mov r1, r12
	strh r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0xB0
	adds r4, r3, #0x0
	adds r4, #0xB2
	adds r0, r3, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	mov r5, r12
	movs r0, #0x00
	ldsh r1, [r5, r0]
	ldr r0, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	movs r5, #0x00
	ldsh r1, [r2, r5]
	ldr r0, [r3, #0x3C]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r3, #0x40]
	adds r1, r0, r1
	str r1, [r3, #0x18]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	bgt _080DA6CA
	adds r0, r3, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DA6CA
	str r0, [r3, #0x18]
	adds r0, r3, #0x0
	bl sub_807C298
_080DA6CA:
	pop {r4, r5}
	pop {r0}
	bx r0
