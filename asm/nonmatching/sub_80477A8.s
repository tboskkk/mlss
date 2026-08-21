	.syntax unified
	.text

	thumb_func_start sub_80477A8
sub_80477A8:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r3, _08047800 @ =0x0000020D
	adds r5, r0, r3
	ldrb r4, [r5, #0x00]
	movs r3, #0x11
	negs r3, r3
	ands r3, r4
	strb r3, [r5, #0x00]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r6, r0, r3
	ldr r5, [r6, #0x00]
	movs r3, #0x03
	mov r8, r3
	mov r3, r8
	ands r1, r3
	ldrb r4, [r5, #0x1F]
	movs r3, #0x04
	negs r3, r3
	ands r3, r4
	orrs r3, r1
	strb r3, [r5, #0x1F]
	ldr r5, [r6, #0x00]
	adds r3, r2, #0x0
	mov r1, r8
	ands r3, r1
	lsls r3, r3, #0x02
	ldrb r4, [r5, #0x1F]
	movs r1, #0x0D
	negs r1, r1
	ands r1, r4
	orrs r1, r3
	strb r1, [r5, #0x1F]
	movs r3, #0x8F
	lsls r3, r3, #0x02
	adds r0, r0, r3
	strb r2, [r0, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08047800: .4byte 0x0000020D
