	.syntax unified
	.text

	thumb_func_start sub_8081444
sub_8081444:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	movs r5, #0x00
	movs r6, #0x00
	mov r8, r6
	movs r7, #0x00
	ldr r0, _08081558 @ =0x03001038
	mov r10, r0
	ldr r0, _0808155C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x58
	movs r1, #0x05
	mov r12, r1
_08081468:
	ldr r2, [r4, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _0808149C
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _0808149A
	mov r8, r0
_0808149A:
	adds r7, #0x01
_0808149C:
	ldr r2, [r4, #0x04]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080814D0
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _080814CE
	mov r8, r0
_080814CE:
	adds r7, #0x01
_080814D0:
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _08081504
	ldr r0, [r3, #0x38]
	adds r5, r5, r0
	ldr r0, [r3, #0x3C]
	adds r6, r6, r0
	adds r0, r2, #0x0
	adds r0, #0xCD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r1, r0
	cmp r8, r0
	bge _08081502
	mov r8, r0
_08081502:
	adds r7, #0x01
_08081504:
	adds r4, #0x0C
	movs r0, #0x03
	negs r0, r0
	add r12, r0
	mov r1, r12
	cmp r1, #0x00
	bge _08081468
	ldr r0, _08081560 @ =0x0819832C
	ldr r1, _08081564 @ =0x08198220
	subs r4, r0, r1
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r5, r0, #0x0
	mov r1, r10
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	mov r0, r9
	str r5, [r0, #0x10]
	str r5, [r0, #0x38]
	str r6, [r0, #0x14]
	str r6, [r0, #0x3C]
	mov r1, r8
	str r1, [r0, #0x18]
	str r1, [r0, #0x40]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081558: .4byte 0x03001038
_0808155C: .4byte 0x03000FD8
_08081560: .4byte 0x0819832C
_08081564: .4byte 0x08198220
