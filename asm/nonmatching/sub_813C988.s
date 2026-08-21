	.syntax unified
	.text

	thumb_func_start sub_813C988
sub_813C988:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x58
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813C9B4
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813C9B4:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
	ldr r1, [r0, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	mov r0, r8
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813C9EE
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0813C9F0
_0813C9EE:
	ldr r1, _0813CAC0 @ =0x0000FFFF
_0813C9F0:
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _0813CA08
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80478AC
_0813CA08:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r7, r5, r2
	ldr r3, [r7, #0x00]
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r7, #0x0
	bl _call_via_r3
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0813CADA
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	mov r12, r0
	mov r3, r12
	adds r3, #0x30
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	add r0, sp, #0x008
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	adds r3, #0x01
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r1, [r0, r2]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	mov r2, r8
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CAD0
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813CAC4 @ =0x0813D779
	str r0, [r1, #0x00]
	movs r2, #0xA2
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813CAC8 @ =0x0813D851
	str r0, [r1, #0x00]
	ldr r1, _0813CACC @ =0x081392F5
	str r1, [r7, #0x00]
	adds r2, #0x08
	adds r0, r5, r2
	str r1, [r0, #0x00]
	b _0813CADA
_0813CAC0: .4byte 0x0000FFFF
_0813CAC4: .4byte sub_813D778
_0813CAC8: .4byte sub_813D850
_0813CACC: .4byte sub_81392F4
_0813CAD0:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813CAE8 @ =0x0813D851
	str r0, [r1, #0x00]
_0813CADA:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813CAE8: .4byte sub_813D850
