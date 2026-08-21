	.syntax unified
	.text

	thumb_func_start sub_808873C
sub_808873C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	adds r0, #0xAE
	str r0, [sp, #0x00C]
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r5, [r4, #0x38]
	mov r9, r5
	add r1, r9
	str r1, [r4, #0x10]
	adds r6, r4, #0x0
	adds r6, #0xB0
	str r6, [sp, #0x010]
	movs r3, #0x00
	ldsh r0, [r6, r3]
	ldr r5, [r4, #0x3C]
	mov r12, r5
	adds r5, r5, r0
	str r5, [r4, #0x14]
	adds r6, #0x02
	str r6, [sp, #0x014]
	movs r3, #0x00
	ldsh r0, [r6, r3]
	ldr r7, [r4, #0x40]
	adds r6, r7, r0
	str r6, [r4, #0x18]
	ldr r3, [r2, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r2, [r0, #0x00]
	subs r1, r1, r2
	cmp r1, #0x00
	bge _0808878C
	adds r1, #0x0F
_0808878C:
	asrs r1, r1, #0x04
	str r1, [sp, #0x018]
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	subs r0, r5, r1
	cmp r0, #0x00
	bge _0808879E
	adds r0, #0x0F
_0808879E:
	asrs r0, r0, #0x04
	mov r8, r0
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r3, [r0, #0x00]
	subs r0, r6, r3
	cmp r0, #0x00
	bge _080887B0
	adds r0, #0x0F
_080887B0:
	asrs r0, r0, #0x04
	str r0, [sp, #0x01C]
	mov r5, r9
	subs r0, r5, r2
	cmp r0, #0x00
	bge _080887BE
	adds r0, #0x0F
_080887BE:
	asrs r5, r0, #0x04
	mov r6, r12
	subs r0, r6, r1
	cmp r0, #0x00
	bge _080887CA
	adds r0, #0x0F
_080887CA:
	asrs r1, r0, #0x04
	subs r0, r7, r3
	cmp r0, #0x00
	bge _080887D4
	adds r0, #0x0F
_080887D4:
	asrs r3, r0, #0x04
	movs r0, #0x00
	mov r10, r0
	ldr r6, [sp, #0x018]
	adds r2, r6, #0x0
	muls r2, r6
	mov r6, r8
	mov r0, r8
	muls r0, r6
	adds r2, r2, r0
	ldr r6, [sp, #0x01C]
	adds r0, r6, #0x0
	muls r0, r6
	adds r2, r2, r0
	adds r0, r5, #0x0
	muls r0, r5
	adds r5, r1, #0x0
	muls r5, r1
	adds r1, r5, #0x0
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	cmp r2, r0
	bge _0808880A
	movs r6, #0x01
	mov r10, r6
_0808880A:
	mov r0, r10
	cmp r0, #0x00
	bne _08088844
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r3, [r0, #0x00]
	mov r2, r9
	subs r3, r3, r2
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	mov r5, r12
	subs r0, r0, r5
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	subs r0, r0, r7
	str r0, [sp, #0x004]
	movs r0, #0xA0
	lsls r0, r0, #0x03
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x010]
	ldr r2, [sp, #0x014]
	bl sub_8087968
	ldr r0, _08088854 @ =0x08088859
	str r0, [r4, #0x4C]
_08088844:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08088854: .4byte sub_8088858
