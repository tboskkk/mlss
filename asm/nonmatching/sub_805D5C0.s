	.syntax unified
	.text

	thumb_func_start sub_805D5C0
sub_805D5C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	movs r4, #0x00
	movs r0, #0x4C
	mov r8, r0
	movs r3, #0x00
	movs r7, #0xB6
	adds r7, r7, r6
	mov r12, r7
	movs r0, #0xD6
	adds r0, r0, r6
	mov r9, r0
_0805D5DE:
	mov r1, r8
	muls r1, r4
	adds r2, r6, r1
	adds r0, r2, #0x0
	adds r0, #0xAC
	strb r3, [r0, #0x00]
	adds r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, #0x02
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	adds r0, #0x01
	strb r3, [r0, #0x00]
	movs r2, #0x00
	adds r5, r4, #0x1
	adds r4, r1, #0x0
_0805D608:
	lsls r0, r2, #0x01
	adds r0, r0, r4
	mov r7, r12
	adds r1, r7, r0
	strh r3, [r1, #0x00]
	add r0, r9
	strh r3, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x0F
	bls _0805D608
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1F
	bls _0805D5DE
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
