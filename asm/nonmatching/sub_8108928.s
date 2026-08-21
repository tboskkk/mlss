	.syntax unified
	.text

	thumb_func_start sub_8108928
sub_8108928:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	subs r0, #0x1E
	ands r0, r1
	cmp r0, #0x00
	beq _0810899C
	ldr r0, _08108980 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _08108984 @ =0x00000121
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0810898C
	movs r0, #0x91
	lsls r0, r0, #0x01
	adds r4, r5, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _0810899C
	ldr r0, _08108988 @ =0x08108A9D
	bl sub_807FFB8
	str r5, [r0, #0x08]
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #0x00]
	b _0810899C
	.byte 0x00, 0x00
_08108980: .4byte 0x0000FEFF
_08108984: .4byte 0x00000121
_08108988: .4byte sub_8108A9C
_0810898C:
	adds r0, r5, #0x0
	adds r0, #0x08
	movs r2, #0x01
	negs r2, r2
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_0810899C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
