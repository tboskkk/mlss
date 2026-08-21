	.syntax unified
	.text

	thumb_func_start sub_8047EB8
sub_8047EB8:
	mov r12, r0
	movs r0, #0x97
	lsls r0, r0, #0x02
	add r0, r12
	movs r2, #0x01
	negs r2, r2
	str r2, [r0, #0x00]
	ldr r3, _08047EF4 @ =0x00000213
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	add r1, r12
	movs r0, #0x94
	lsls r0, r0, #0x02
	add r0, r12
	str r2, [r0, #0x00]
	str r2, [r1, #0x00]
	movs r0, #0x90
	lsls r0, r0, #0x02
	add r0, r12
	ldrh r1, [r0, #0x00]
	ldr r0, _08047EF8 @ =0x0000023E
	add r0, r12
	strh r1, [r0, #0x00]
	bx lr
_08047EF4: .4byte 0x00000213
_08047EF8: .4byte 0x0000023E
