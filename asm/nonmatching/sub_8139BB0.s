	.syntax unified
	.text

	thumb_func_start sub_8139BB0
sub_8139BB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	mov r12, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r6, r5, #0x0
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	mov r8, r7
	lsrs r2, r2, #0x14
	movs r1, #0x01
	adds r3, r1, #0x0
	bics r3, r2
	adds r2, r3, #0x0
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08139C00
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	ldrb r0, [r1, #0x01]
	b _08139C9E
_08139C00:
	movs r0, #0x02
	ands r0, r5
	cmp r0, #0x00
	beq _08139C30
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	ldrh r0, [r1, #0x00]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	ldrh r0, [r1, #0x02]
	b _08139C9E
_08139C30:
	movs r0, #0x04
	ands r0, r5
	cmp r0, #0x00
	beq _08139C68
	lsls r1, r3, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r7
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x01
	ldsb r0, [r1, r0]
	b _08139C9E
_08139C68:
	movs r0, #0x08
	ands r6, r0
	cmp r6, #0x00
	beq _08139CA2
	lsls r1, r2, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	add r1, r8
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r2, #0x02
	ldsh r0, [r1, r2]
_08139C9E:
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
_08139CA2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
