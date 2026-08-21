	.syntax unified
	.text

	thumb_func_start sub_813CBEC
sub_813CBEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r7, r5, #0x0
	adds r7, #0x58
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813CC18
	add r1, sp, #0x004
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	strb r0, [r1, #0x00]
_0813CC18:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0813CC4E
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
	b _0813CC50
_0813CC4E:
	ldr r1, _0813CD88 @ =0x0000FFFF
_0813CC50:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r1, r0
	beq _0813CC68
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0x0
	bl sub_80478AC
_0813CC68:
	movs r2, #0xA4
	lsls r2, r2, #0x01
	adds r2, r2, r7
	mov r8, r2
	ldr r3, [r2, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl _call_via_r3
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0813CC8C
	b _0813CDA6
_0813CC8C:
	movs r2, #0xAE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r1, [r0, #0x00]
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r6, [r0, #0x28]
	add r4, sp, #0x008
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0813CD8C @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CD9C
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x30
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x31
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	adds r0, r1, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	adds r0, r1, #0x0
	adds r0, #0x33
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	adds r0, r1, #0x0
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r0, r1, #0x0
	adds r0, #0x35
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CD9C
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0813CD90 @ =0x0813D779
	str r0, [r1, #0x00]
	movs r0, #0xA2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0813CD94 @ =0x0813D6FD
	str r0, [r1, #0x00]
	ldr r1, _0813CD98 @ =0x081392F5
	mov r2, r8
	str r1, [r2, #0x00]
	movs r2, #0xA6
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r1, [r0, #0x00]
	b _0813CDA6
_0813CD88: .4byte 0x0000FFFF
_0813CD8C: .4byte 0x00007FFF
_0813CD90: .4byte sub_813D778
_0813CD94: .4byte sub_813D6FC
_0813CD98: .4byte sub_81392F4
_0813CD9C:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0813CDB4 @ =0x0813D6FD
	str r0, [r1, #0x00]
_0813CDA6:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813CDB4: .4byte sub_813D6FC
