	.syntax unified
	.text

	thumb_func_start sub_80FBD44
sub_80FBD44:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0x0
	adds r6, r1, #0x0
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrb r4, [r0, #0x00]
	lsls r0, r4, #0x1D
	lsrs r5, r0, #0x1F
	lsls r0, r5, #0x02
	adds r0, r0, r3
	ldr r2, [r0, #0x28]
	movs r7, #0x83
	lsls r7, r7, #0x02
	mov r12, r7
	mov r1, r12
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r7, _080FBDBC @ =0x00000352
	mov r8, r7
	adds r0, r2, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	ldr r7, _080FBDC0 @ =0x0000020D
	adds r0, r2, r7
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _080FBDD0
	adds r1, r3, #0x0
	adds r1, #0x28
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	bne _080FBD9C
	adds r1, #0x04
_080FBD9C:
	ldr r2, [r1, #0x00]
	mov r1, r12
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	mov r3, r8
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	bne _080FBDC4
	movs r0, #0x00
	b _080FBDD4
_080FBDBC: .4byte 0x00000352
_080FBDC0: .4byte 0x0000020D
_080FBDC4:
	lsrs r0, r4, #0x02
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	b _080FBDD2
_080FBDD0:
	strb r5, [r6, #0x00]
_080FBDD2:
	movs r0, #0x01
_080FBDD4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
