	.syntax unified
	.text

	thumb_func_start sub_814E108
sub_814E108:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r6, r1, #0x0
	mov r8, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r6, r0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r6, r1
	ldr r2, [r5, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	movs r3, #0x00
	strb r0, [r1, #0x00]
	movs r2, #0xDF
	lsls r2, r2, #0x01
	adds r0, r6, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0814E162
	cmp r0, #0x01
	beq _0814E174
	b _0814E184
_0814E162:
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x04
	movs r3, #0x00
	bl sub_801E150
	b _0814E184
_0814E174:
	ldr r0, [r5, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r3, #0x00
	bl sub_801E150
_0814E184:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0814E1B8 @ =0x08150619
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814E1B8: .4byte sub_8150618
