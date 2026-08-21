	.syntax unified
	.text

	thumb_func_start sub_8139CAC
sub_8139CAC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	mov r12, r1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r6, r3, #0x0
	lsrs r2, r2, #0x14
	movs r1, #0x01
	bics r1, r2
	adds r2, r1, #0x0
	movs r0, #0x04
	ands r0, r5
	cmp r0, #0x00
	beq _08139D00
	lsls r1, r1, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r3
	movs r0, #0x00
	ldsb r0, [r1, r0]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x01
	movs r0, #0x00
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x01
	ldsb r0, [r1, r0]
	b _08139D3A
_08139D00:
	movs r0, #0x08
	ands r0, r5
	cmp r0, #0x00
	beq _08139D3E
	lsls r1, r2, #0x02
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	adds r1, r1, r6
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	negs r0, r0
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	adds r1, #0x02
	movs r2, #0x00
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r2, #0x02
	ldsh r0, [r1, r2]
_08139D3A:
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
_08139D3E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
