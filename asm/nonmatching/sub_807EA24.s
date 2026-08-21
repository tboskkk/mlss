	.syntax unified
	.text

	thumb_func_start sub_807EA24
sub_807EA24:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r6, _0807EAE0 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EA82
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8C
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EA82:
	ldr r0, [r6, #0x00]
	ldr r1, [r5, #0x28]
	adds r1, #0xEC
	movs r2, #0x00
	ldsh r1, [r1, r2]
	adds r1, #0x02
	lsls r1, r1, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0807EADA
	adds r0, r4, #0x0
	bl sub_807BDDC
	ldrb r1, [r4, #0x13]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	strb r0, [r4, #0x13]
	adds r0, r4, #0x0
	bl sub_8084294
	adds r0, r4, #0x0
	bl sub_8021308
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r0, #0x02
	lsls r0, r0, #0x02
	movs r2, #0x8A
	lsls r2, r2, #0x02
	adds r1, r1, r2
	adds r1, r1, r0
	movs r0, #0x00
	str r0, [r1, #0x00]
_0807EADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0807EAE0: .4byte 0x03000FD8
