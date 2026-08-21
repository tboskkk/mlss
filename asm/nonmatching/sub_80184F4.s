	.syntax unified
	.text

	thumb_func_start sub_80184F4
sub_80184F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0x0
	movs r3, #0x00
	ldr r0, _08018578 @ =0x0300034C
	adds r1, r0, #0x0
	ldrb r0, [r1, #0x08]
	cmp r3, r0
	bge _0801858A
	mov r8, r1
	ldr r5, _0801857C @ =0x04000208
	mov r12, r5
	mov r10, r3
	movs r4, #0x00
_08018516:
	mov r6, r8
	ldr r0, [r6, #0x04]
	adds r0, r4, r0
	ldr r0, [r0, #0x04]
	cmp r0, r2
	bne _08018580
	movs r0, #0x00
	mov r7, r12
	strh r0, [r7, #0x00]
	ldrb r0, [r1, #0x08]
	subs r0, #0x01
	cmp r3, r0
	bge _0801855A
	ldr r0, _08018578 @ =0x0300034C
	mov r9, r0
	lsls r0, r3, #0x04
	adds r2, r0, #0x0
	adds r2, #0x10
_0801853A:
	mov r1, r9
	ldr r0, [r1, #0x04]
	adds r1, r4, r0
	adds r0, r2, r0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r4, #0x10
	adds r2, #0x10
	adds r3, #0x01
	mov r1, r9
	ldrb r0, [r1, #0x08]
	subs r0, #0x01
	cmp r3, r0
	blt _0801853A
_0801855A:
	mov r2, r8
	ldr r0, [r2, #0x04]
	adds r0, r4, r0
	mov r5, r10
	str r5, [r0, #0x00]
	str r5, [r0, #0x04]
	ldrb r0, [r2, #0x08]
	subs r0, #0x01
	strb r0, [r2, #0x08]
	movs r0, #0x01
	mov r6, r12
	strh r0, [r6, #0x00]
	movs r0, #0x01
	b _0801858C
	.byte 0x00, 0x00
_08018578: .4byte 0x0300034C
_0801857C: .4byte 0x04000208
_08018580:
	adds r4, #0x10
	adds r3, #0x01
	ldrb r7, [r1, #0x08]
	cmp r3, r7
	blt _08018516
_0801858A:
	movs r0, #0x00
_0801858C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
