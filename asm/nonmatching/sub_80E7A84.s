	.syntax unified
	.text

	thumb_func_start sub_80E7A84
sub_80E7A84:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldrh r1, [r5, #0x3C]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080E7B38
	ldr r2, [r5, #0x44]
	ldrh r1, [r5, #0x34]
	ldr r3, [r3, #0x04]
	movs r4, #0xCC
	lsls r4, r4, #0x01
	adds r0, r3, r4
	adds r1, r1, r2
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	ldr r2, [r5, #0x48]
	ldrh r0, [r5, #0x36]
	adds r4, #0x02
	adds r3, r3, r4
	adds r0, r0, r2
	ldrh r3, [r3, #0x00]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r1, r1, r0
	movs r0, #0x84
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _080E7B38
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x0C
	negs r0, r0
	cmp r2, r0
	blt _080E7B38
	cmp r2, #0xAC
	bgt _080E7B38
	ldr r4, _080E7B40 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r3, [r4, #0x00]
	movs r0, #0x43
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0F
	movs r1, #0xFF
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r3, #0x02
	mov r1, r12
	ldrb r2, [r1, #0x00]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0E
	ldr r0, _080E7B44 @ =0x000001FF
	ands r6, r0
	orrs r1, r6
	adds r0, r5, #0x0
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x0D
	orrs r1, r0
	lsls r2, r2, #0x1F
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0C
	orrs r1, r2
	strh r1, [r3, #0x00]
	adds r3, #0x02
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x03
	movs r2, #0xF0
	lsls r2, r2, #0x08
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r3, #0x04
	str r3, [r4, #0x00]
_080E7B38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E7B40: .4byte 0x0300034C
_080E7B44: .4byte 0x000001FF
