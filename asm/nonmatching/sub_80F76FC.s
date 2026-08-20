	.syntax unified
	.text

	thumb_func_start sub_80F76FC
sub_80F76FC:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [sp, #0x010]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x07
	bgt _080F7728
	ldr r0, _080F7724 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	mov r12, r0
	b _080F773A
	.byte 0x00, 0x00
_080F7724: .4byte 0x03000FD8
_080F7728:
	ldr r1, _080F776C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r12, r1
_080F773A:
	mov r1, r12
	adds r1, #0x84
	lsls r0, r4, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	lsls r0, r5, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	lsls r0, r3, #0x08
	str r0, [r1, #0x00]
	mov r3, r12
	adds r3, #0x79
	movs r1, #0x01
	ands r1, r6
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F776C: .4byte 0x03000FDC
