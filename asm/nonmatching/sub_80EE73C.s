	.syntax unified
	.text

	thumb_func_start sub_80EE73C
sub_80EE73C:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	ldr r0, _080EE7C0 @ =0x03000FD0
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldm r2!, {r3}
	ldr r0, _080EE7C4 @ =0x0000055F
	mov r10, r0
	add r1, r10
	lsls r3, r3, #0x07
	ldrb r4, [r1, #0x00]
	movs r6, #0x7F
	adds r0, r6, #0x0
	ands r0, r4
	orrs r0, r3
	strb r0, [r1, #0x00]
	mov r1, r8
	ldr r4, [r1, #0x00]
	ldm r2!, {r1}
	ldr r0, _080EE7C8 @ =0x0000055E
	mov r9, r0
	adds r5, r4, r0
	ands r1, r6
	lsls r1, r1, #0x06
	ldrh r3, [r5, #0x00]
	ldr r0, _080EE7CC @ =0xFFFFE03F
	ands r0, r3
	orrs r0, r1
	strh r0, [r5, #0x00]
	ldm r2!, {r0}
	ldr r1, _080EE7D0 @ =0x0000055D
	adds r4, r4, r1
	strb r0, [r4, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	add r3, r9
	movs r0, #0x3F
	ldrb r1, [r2, #0x00]
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	ldr r2, [r1, #0x00]
	add r2, r10
	ldrb r1, [r2, #0x00]
	movs r0, #0x61
	negs r0, r0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080EE7C0: .4byte 0x03000FD0
_080EE7C4: .4byte 0x0000055F
_080EE7C8: .4byte 0x0000055E
_080EE7CC: .4byte 0xFFFFE03F
_080EE7D0: .4byte 0x0000055D
