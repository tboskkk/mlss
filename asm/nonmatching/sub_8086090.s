	.syntax unified
	.text

	thumb_func_start sub_8086090
sub_8086090:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	ldr r3, [r2, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x38]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080860A6
	adds r1, #0x1F
_080860A6:
	asrs r5, r1, #0x05
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x40]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _080860B8
	adds r0, #0x1F
_080860B8:
	asrs r4, r0, #0x05
	adds r3, r2, #0x0
	adds r3, #0xAE
	ldrh r0, [r3, #0x00]
	adds r0, r0, r5
	strh r0, [r3, #0x00]
	movs r0, #0xB2
	adds r0, r0, r2
	mov r12, r0
	ldrh r0, [r0, #0x00]
	adds r0, r0, r4
	mov r1, r12
	strh r0, [r1, #0x00]
	movs r6, #0x00
	ldsh r0, [r3, r6]
	movs r1, #0xF2
	muls r0, r1
	cmp r0, #0x00
	bge _080860E0
	adds r0, #0xFF
_080860E0:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	mov r7, r12
	movs r6, #0x00
	ldsh r0, [r7, r6]
	muls r0, r1
	cmp r0, #0x00
	bge _080860F2
	adds r0, #0xFF
_080860F2:
	asrs r0, r0, #0x08
	mov r7, r12
	strh r0, [r7, #0x00]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r2, #0x10]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r6, #0x00
	ldsh r1, [r7, r6]
	ldr r0, [r2, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x18]
	movs r7, #0x00
	ldsh r0, [r3, r7]
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	cmp r0, #0x40
	bgt _0808614A
	mov r3, r12
	movs r6, #0x00
	ldsh r0, [r3, r6]
	adds r7, r0, #0x0
	muls r7, r0
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	cmp r0, #0x40
	bgt _0808614A
	ldr r0, [r2, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	str r1, [r2, #0x10]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x18]
	movs r0, #0x00
	str r0, [r2, #0x4C]
_0808614A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
