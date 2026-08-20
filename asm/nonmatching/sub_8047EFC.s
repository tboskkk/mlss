	.syntax unified
	.text

	thumb_func_start sub_8047EFC
sub_8047EFC:
	push {r4, r5, lr}
	mov r12, r0
	ldr r5, [sp, #0x00C]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08047F54 @ =0x0000023E
	add r0, r12
	movs r4, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x98
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	ldr r0, _08047F58 @ =0x00000262
	add r0, r12
	strh r2, [r0, #0x00]
	movs r0, #0x99
	lsls r0, r0, #0x02
	add r0, r12
	strh r3, [r0, #0x00]
	ldr r0, _08047F5C @ =0x00000266
	add r0, r12
	strh r5, [r0, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x02
	add r0, r12
	str r4, [r0, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r12
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	add r0, r12
	str r1, [r0, #0x00]
	movs r0, #0x94
	lsls r0, r0, #0x02
	add r0, r12
	str r1, [r0, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08047F54: .4byte 0x0000023E
_08047F58: .4byte 0x00000262
_08047F5C: .4byte 0x00000266
