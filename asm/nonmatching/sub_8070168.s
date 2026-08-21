	.syntax unified
	.text

	thumb_func_start sub_8070168
sub_8070168:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	adds r0, #0xA4
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r1, [r5, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r6, r4, #0x0
	adds r6, #0xA0
	ldr r1, [r6, #0x00]
	bl __divsi3
	movs r3, #0xAE
	adds r3, r3, r4
	mov r8, r3
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r3, #0x00
	ldsh r1, [r5, r3]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r6, #0x00]
	bl __divsi3
	adds r7, r4, #0x0
	adds r7, #0xB0
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r3, #0x00
	ldsh r2, [r5, r3]
	ldr r0, [r6, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r4, #0x18]
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	movs r3, #0x00
	strh r0, [r5, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080701F8
	adds r1, #0xFF
_080701F8:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _0807020A
	adds r0, r4, #0x0
	bl sub_807C298
	b _0807023E
_0807020A:
	movs r1, #0x00
	ldsh r0, [r5, r1]
	ldr r1, [r6, #0x00]
	lsrs r2, r1, #0x1F
	adds r1, r1, r2
	asrs r1, r1, #0x01
	cmp r0, r1
	blt _0807023E
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _0807023E
	str r3, [r4, #0x18]
	strh r3, [r5, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0807022C
	adds r0, #0xFF
_0807022C:
	asrs r0, r0, #0x08
	mov r2, r8
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0807023A
	adds r0, #0xFF
_0807023A:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
_0807023E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
