	.syntax unified
	.text

	thumb_func_start sub_8085B38
sub_8085B38:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	adds r0, #0x7A
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r4, r0, #0x08
	movs r3, #0x84
	adds r3, r3, r5
	mov r8, r3
	ldr r6, [r3, #0x00]
	movs r0, #0x88
	adds r0, r0, r5
	mov r12, r0
	ldr r2, [r0, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x8C
	ldr r3, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08085B78
	ldr r0, [r5, #0x10]
	adds r6, r6, r0
	ldr r0, [r5, #0x14]
	adds r2, r2, r0
	ldr r0, [r5, #0x18]
	adds r3, r3, r0
_08085B78:
	mov r1, r8
	str r6, [r1, #0x00]
	mov r0, r12
	str r2, [r0, #0x00]
	str r3, [r7, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x7C
	cmp r4, #0x00
	bne _08085BE4
	ldr r0, [r5, #0x10]
	subs r0, r6, r0
	cmp r0, #0x00
	bge _08085B94
	adds r0, #0x03
_08085B94:
	asrs r6, r0, #0x02
	ldr r0, [r5, #0x14]
	subs r1, r2, r0
	cmp r1, #0x00
	bge _08085BA0
	adds r1, #0x03
_08085BA0:
	asrs r2, r1, #0x02
	ldr r0, [r5, #0x18]
	subs r1, r3, r0
	cmp r1, #0x00
	bge _08085BAC
	adds r1, #0x03
_08085BAC:
	asrs r3, r1, #0x02
	ldr r4, _08085C14 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r0, r1
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r4, #0x00]
	bl _call_via_r1
	ldr r1, _08085C18 @ =0x0819832C
	ldr r2, _08085C1C @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r4, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x06
	movs r3, #0x00
	ldsh r1, [r7, r3]
	cmp r1, #0x00
	bge _08085BDC
	adds r1, #0x0F
_08085BDC:
	asrs r1, r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
_08085BE4:
	adds r0, r5, #0x0
	adds r0, #0x80
	str r4, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	strh r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08085C14: .4byte 0x03001038
_08085C18: .4byte 0x0819832C
_08085C1C: .4byte 0x08198220
