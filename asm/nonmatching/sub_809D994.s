	.syntax unified
	.text

	thumb_func_start sub_809D994
sub_809D994:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r12, r0
	movs r1, #0x06
	ldr r2, _0809D9EC @ =0x0809D4E5
	mov r8, r2
	ldr r4, _0809D9F0 @ =0x03000FD8
	movs r7, #0x06
	movs r6, #0x39
	negs r6, r6
	movs r5, #0x08
	ldr r2, [r4, #0x00]
	ldr r2, [r2, #0x70]
	adds r2, #0x7E
	ldrb r3, [r2, #0x00]
	ands r1, r3
	cmp r1, #0x02
	bne _0809D9C2
	adds r1, r6, #0x0
	ands r1, r3
	orrs r1, r5
	strb r1, [r2, #0x00]
_0809D9C2:
	ldr r1, [r4, #0x00]
	ldr r1, [r1, #0x74]
	adds r2, r1, #0x0
	adds r2, #0x7E
	ldrb r3, [r2, #0x00]
	adds r1, r7, #0x0
	ands r1, r3
	cmp r1, #0x02
	bne _0809D9DC
	adds r1, r6, #0x0
	ands r1, r3
	orrs r1, r5
	strb r1, [r2, #0x00]
_0809D9DC:
	mov r1, r8
	mov r2, r12
	str r1, [r2, #0x4C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0809D9EC: .4byte sub_809D4E4
_0809D9F0: .4byte 0x03000FD8
