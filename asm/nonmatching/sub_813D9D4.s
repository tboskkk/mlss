	.syntax unified
	.text

	thumb_func_start sub_813D9D4
sub_813D9D4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r4, [r0, #0x00]
	adds r0, r5, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813DA52
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	add r0, sp, #0x004
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x00]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x06]
	adds r4, #0x02
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x02]
	movs r3, #0x02
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x04]
	ldr r2, _0813DA5C @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813DA52
	ldr r0, _0813DA60 @ =0x0813DA65
	str r0, [r7, #0x00]
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_0813DA52:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813DA5C: .4byte 0x00007FFF
_0813DA60: .4byte sub_813DA64
