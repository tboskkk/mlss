	.syntax unified
	.text

	thumb_func_start sub_8146E9C
sub_8146E9C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r7, r5, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r6, [r0, #0x00]
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08146ECA
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _08146ED6
_08146ECA:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08146ED6:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r3, [r0, #0x2E]
	ldr r1, [r4, #0x0C]
	ldr r2, [r4, #0x10]
	mov r12, sp
	movs r0, #0x00
	mov r4, r12
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A284
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	movs r4, #0xC4
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	ldr r0, _08146F28 @ =0x0814704D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08146F28: .4byte sub_814704C
