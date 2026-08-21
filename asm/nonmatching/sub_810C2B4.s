	.syntax unified
	.text

	thumb_func_start sub_810C2B4
sub_810C2B4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldrh r0, [r5, #0x16]
	movs r1, #0x01
	mov r12, r1
	mov r3, r12
	ands r3, r0
	ldr r2, _0810C2F8 @ =0x03000FD8
	ldr r4, [r2, #0x00]
	ldrb r1, [r4, #0x0B]
	movs r0, #0x80
	ands r0, r1
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _0810C2FC
	lsls r5, r3, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r0, r4, r2
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C38E
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	b _0810C386
	.byte 0x00, 0x00
_0810C2F8: .4byte 0x03000FD8
_0810C2FC:
	lsls r1, r3, #0x02
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r0, r4, r2
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r3, r3, #0x10
	mov r8, r3
	cmp r0, #0x00
	beq _0810C38E
	adds r0, r4, #0x0
	adds r0, #0x80
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r3, [r5, #0x08]
	ldr r1, _0810C340 @ =0x000002BF
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	mov r0, r12
	ands r0, r1
	cmp r0, #0x00
	beq _0810C33A
	movs r2, #0x8F
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0810C344
_0810C33A:
	movs r2, #0x01
	b _0810C346
	.byte 0x00, 0x00
_0810C340: .4byte 0x000002BF
_0810C344:
	movs r2, #0x00
_0810C346:
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x11]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	adds r0, r6, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	beq _0810C38E
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [r7, #0x00]
	lsls r5, r1, #0x02
	movs r1, #0xA1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r5
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0810C38E
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r0, [r7, #0x00]
	movs r2, #0xA1
	lsls r2, r2, #0x02
	adds r0, r0, r2
_0810C386:
	adds r0, r0, r5
	movs r1, #0x00
	str r1, [r0, #0x00]
	str r1, [r4, #0x04]
_0810C38E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
