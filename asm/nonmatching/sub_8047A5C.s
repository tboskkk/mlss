	.syntax unified
	.text

	thumb_func_start sub_8047A5C
sub_8047A5C:
	push {r4, r5, lr}
	mov r12, r0
	adds r4, r1, #0x0
	ldr r0, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r4, #0x02
	bne _08047A78
	cmp r2, #0x00
	bne _08047A78
	movs r0, #0x00
	b _08047AE6
_08047A78:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	add r0, r12
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x0C]
	ldr r0, _08047A90 @ =0x00000322
	add r0, r12
	strh r1, [r0, #0x00]
	cmp r3, #0x00
	blt _08047A94
	movs r3, #0x01
	b _08047A98
_08047A90: .4byte 0x00000322
_08047A94:
	movs r3, #0x01
	negs r3, r3
_08047A98:
	movs r0, #0xCA
	lsls r0, r0, #0x02
	add r0, r12
	lsls r1, r3, #0x08
	muls r1, r2
	str r1, [r0, #0x00]
	cmp r4, #0x01
	bne _08047AB6
	adds r1, r5, #0x0
	muls r1, r3
	movs r0, #0xC9
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	b _08047ABC
_08047AB6:
	ldr r0, _08047AEC @ =0x00000332
	add r0, r12
	strh r5, [r0, #0x00]
_08047ABC:
	movs r0, #0xCB
	lsls r0, r0, #0x02
	add r0, r12
	movs r1, #0x00
	str r1, [r0, #0x00]
	movs r0, #0xCC
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	ldr r3, _08047AF0 @ =0x000002B6
	add r3, r12
	movs r0, #0x03
	ands r4, r0
	lsls r2, r4, #0x04
	ldrb r1, [r3, #0x00]
	movs r0, #0x31
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	movs r0, #0x01
_08047AE6:
	pop {r4, r5}
	pop {r1}
	bx r1
_08047AEC: .4byte 0x00000332
_08047AF0: .4byte 0x000002B6
