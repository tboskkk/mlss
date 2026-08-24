	.syntax unified
	.text

	thumb_func_start sub_8029934
sub_8029934:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0x0
	ldr r0, _080299F8 @ =0x03001034
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	movs r2, #0x30
	bl _call_via_r3
	movs r7, #0x00
	movs r5, #0xFF
	ldr r6, _080299FC @ =0x0839F900
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r3, r4, r0
	movs r1, #0x00
	mov r8, r1
	movs r2, #0x86
	lsls r2, r2, #0x02
	adds r2, r2, r4
	mov r9, r2
	movs r0, #0x80
	negs r0, r0
	mov r10, r0
	movs r1, #0x01
	mov r12, r1
_08029974:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r4, r2
	strb r7, [r0, #0x00]
	ldr r0, [r6, #0x00]
	str r0, [r3, #0x00]
	mov r1, r9
	add r1, r8
	ldr r0, [r6, #0x04]
	str r0, [r1, #0x00]
	movs r1, #0x87
	lsls r1, r1, #0x02
	adds r0, r4, r1
	strb r7, [r0, #0x00]
	adds r2, #0x11
	adds r0, r4, r2
	strb r7, [r0, #0x00]
	ldr r0, _08029A00 @ =0x0000021E
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x02
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r1, _08029A04 @ =0x0000020E
	adds r0, r4, r1
	strb r7, [r0, #0x00]
	ldr r0, _08029A08 @ =0x00000222
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	mov r0, r10
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r6, #0x08
	adds r3, #0x18
	adds r4, #0x18
	movs r1, #0x18
	add r8, r1
	movs r2, #0x01
	negs r2, r2
	add r12, r2
	mov r0, r12
	cmp r0, #0x00
	bge _08029974
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080299F8: .4byte 0x03001034
_080299FC: .4byte 0x0839F900
_08029A00: .4byte 0x0000021E
_08029A04: .4byte 0x0000020E
_08029A08: .4byte 0x00000222
