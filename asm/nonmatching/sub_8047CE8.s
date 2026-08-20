	.syntax unified
	.text

	thumb_func_start sub_8047CE8
sub_8047CE8:
	mov r12, r0
	movs r0, #0xFF
	mov r1, r12
	strb r0, [r1, #0x00]
	movs r0, #0x01
	negs r0, r0
	strb r0, [r1, #0x01]
	movs r1, #0x8E
	lsls r1, r1, #0x02
	add r1, r12
	strb r0, [r1, #0x00]
	mov r2, r12
	adds r2, #0x24
	ldrb r1, [r2, #0x00]
	movs r3, #0x79
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, r12
	ldrh r1, [r0, #0x24]
	ldr r0, _08047D3C @ =0xFFFFFE7F
	ands r0, r1
	mov r1, r12
	strh r0, [r1, #0x24]
	adds r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	ands r0, r3
	strb r0, [r2, #0x00]
	mov r1, r12
	ldr r0, [r1, #0x24]
	ldr r1, _08047D40 @ =0xFFFE7FFF
	ands r0, r1
	mov r1, r12
	str r0, [r1, #0x24]
	bx lr
_08047D3C: .4byte 0xFFFFFE7F
_08047D40: .4byte 0xFFFE7FFF
