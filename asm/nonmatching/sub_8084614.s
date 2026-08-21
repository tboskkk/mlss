	.syntax unified
	.text

	thumb_func_start sub_8084614
sub_8084614:
	push {r4, r5, r6, lr}
	mov r12, r0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r2, r4, r6
	movs r5, #0x00
	movs r0, #0xFA
	lsls r0, r0, #0x01
	add r0, r12
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	beq _0808467A
	movs r1, #0x04
	ldsh r0, [r3, r1]
	cmp r2, r0
	blt _0808467A
_08084634:
	movs r5, #0x04
	ldsh r1, [r3, r5]
	movs r5, #0x06
	ldsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r0, r4
	bge _08084654
	adds r5, r3, #0x0
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	beq _0808467A
	movs r1, #0x04
	ldsh r0, [r3, r1]
	cmp r2, r0
	bge _08084634
	b _0808467A
_08084654:
	cmp r4, r1
	bge _08084664
	ldrh r0, [r3, #0x04]
	subs r0, r0, r4
	ldrh r5, [r3, #0x06]
	adds r0, r0, r5
	strh r0, [r3, #0x06]
	strh r4, [r3, #0x04]
_08084664:
	movs r1, #0x04
	ldsh r0, [r3, r1]
	movs r4, #0x06
	ldsh r1, [r3, r4]
	adds r0, r0, r1
	cmp r0, r2
	bge _0808469C
	ldrh r0, [r3, #0x04]
	subs r0, r2, r0
	strh r0, [r3, #0x06]
	b _0808469C
_0808467A:
	movs r1, #0xF8
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, [r1, #0x00]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	cmp r5, #0x00
	beq _0808468E
	str r2, [r5, #0x00]
	b _08084696
_0808468E:
	movs r0, #0xFA
	lsls r0, r0, #0x01
	add r0, r12
	str r2, [r0, #0x00]
_08084696:
	str r3, [r2, #0x00]
	strh r4, [r2, #0x04]
	strh r6, [r2, #0x06]
_0808469C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
