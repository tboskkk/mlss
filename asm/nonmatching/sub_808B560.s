	.syntax unified
	.text

	thumb_func_start sub_808B560
sub_808B560:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r1, #0x0
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	movs r1, #0x00
	mov r9, r1
	strh r0, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_808AC10
	movs r2, #0x00
	ldsh r1, [r4, r2]
	lsls r1, r1, #0x01
	cmp r1, r0
	blt _0808B668
	ldr r6, [r7, #0x28]
	movs r0, #0x08
	adds r0, r0, r6
	mov r8, r0
	adds r0, r6, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B5A4
	adds r0, #0xFF
_0808B5A4:
	asrs r2, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x90
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B5B2
	adds r0, #0xFF
_0808B5B2:
	asrs r3, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0808B5C0
	adds r0, #0xFF
_0808B5C0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r1, r9
	str r1, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r6, #0x0
	ldr r1, _0808B678 @ =0x00004066
	bl sub_807BF34
	adds r4, r0, #0x0
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
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	mov r2, r8
	ldr r0, [r2, #0x2C]
	str r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x6C]
	str r0, [r4, #0x6C]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_807F4C4
	adds r3, r6, #0x0
	adds r3, #0x7F
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	movs r2, #0x77
	adds r2, r2, r4
	mov r12, r2
	adds r2, r5, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	mov r1, r12
	ldrb r0, [r1, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	mov r2, r12
	strb r1, [r2, #0x00]
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r5, r0
	lsls r5, r5, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r5
	strb r1, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x3C
	strh r0, [r1, #0x00]
	ldr r0, _0808B67C @ =0x0808B749
	str r0, [r4, #0x4C]
	str r4, [r7, #0x30]
	adds r0, r7, #0x0
	adds r0, #0xAC
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _0808B680 @ =0x0808B685
	str r0, [r7, #0x4C]
_0808B668:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B678: .4byte 0x00004066
_0808B67C: .4byte sub_808B748
_0808B680: .4byte sub_808B684
