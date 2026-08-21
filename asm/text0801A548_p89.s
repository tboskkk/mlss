	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80502C8
sub_80502C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	movs r0, #0x83
	lsls r0, r0, #0x02
	mov r8, r0
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r7, #0x02
	negs r7, r7
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r6, r5, r1
	ldrb r1, [r6, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldr r2, _080503B4 @ =0x0000033E
	adds r1, r5, r2
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	ands r0, r2
	cmp r0, #0x00
	beq _08050358
	movs r0, #0x04
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	ldr r0, _080503B8 @ =0x0000020D
	adds r3, r5, r0
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, _080503BC @ =0x0000033F
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	strb r0, [r5, #0x02]
	ldr r2, _080503C0 @ =0x0000023A
	adds r0, r5, r2
	strb r4, [r0, #0x00]
	ldrb r1, [r6, #0x00]
	lsls r1, r1, #0x19
	ldr r0, _080503C4 @ =0x0000033D
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r6, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r6, #0x00]
_08050358:
	movs r4, #0xCE
	lsls r4, r4, #0x02
	adds r0, r5, r4
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _080503AA
	ldr r1, _080503C8 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080503AA
	add r2, r8
	ldrb r1, [r2, #0x00]
	adds r0, r7, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	adds r1, r0, r4
	ldr r1, [r1, #0x00]
	adds r1, #0x80
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #0x04]
	movs r1, #0x01
	bl _call_via_r2
_080503AA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080503B4: .4byte 0x0000033E
_080503B8: .4byte 0x0000020D
_080503BC: .4byte 0x0000033F
_080503C0: .4byte 0x0000023A
_080503C4: .4byte 0x0000033D
_080503C8: .4byte 0x0000020F
	thumb_func_start sub_80503CC
sub_80503CC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	movs r0, #0xCF
	lsls r0, r0, #0x02
	mov r12, r0
	adds r0, r5, r0
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x00
	beq _080504A8
	ldr r1, _080504B0 @ =0x00000212
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _080504A8
	cmp r2, #0x04
	bne _08050498
	movs r7, #0x83
	lsls r7, r7, #0x02
	adds r1, r5, r7
	ldrb r0, [r1, #0x00]
	movs r3, #0x01
	orrs r0, r3
	strb r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _0805045C
	ldr r1, _080504B4 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r6, #0x02
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805045C
	adds r1, r2, r7
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	ldr r3, [r4, #0x00]
	mov r1, r12
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0805045C
	lsls r1, r1, #0x1B
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r3, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r1, [r4, #0x00]
	add r1, r12
	ldrb r2, [r1, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
_0805045C:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldrb r1, [r4, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08050490
	ldr r1, _080504B8 @ =0x0000033D
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r5, r0
	lsrs r1, r1, #0x1D
	ldrb r2, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r4, #0x00]
_08050490:
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
_08050498:
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080504A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080504B0: .4byte 0x00000212
_080504B4: .4byte 0x0000020F
_080504B8: .4byte 0x0000033D
