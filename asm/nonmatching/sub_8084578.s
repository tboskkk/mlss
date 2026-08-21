	.syntax unified
	.text

	thumb_func_start sub_8084578
sub_8084578:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	mov r8, r3
	ldr r7, [sp, #0x020]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldrb r0, [r4, #0x02]
	cmp r0, #0x00
	beq _0808459E
	adds r0, r6, #0x0
	bl sub_8085260
_0808459E:
	movs r0, #0x01
	ands r5, r0
	lsls r2, r5, #0x06
	ldrb r1, [r4, #0x05]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x7F
	ands r0, r1
	strb r0, [r4, #0x05]
	ldr r0, [sp, #0x01C]
	adds r1, r0, #0x0
	muls r1, r7
	ldr r2, _0808460C @ =0x00003FFF
	adds r0, r2, #0x0
	ands r1, r0
	ldrh r2, [r4, #0x04]
	ldr r0, _08084610 @ =0xFFFFC000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x04]
	movs r2, #0x00
	mov r3, r8
	strb r3, [r4, #0x00]
	mov r0, sp
	ldrb r0, [r0, #0x18]
	strb r0, [r4, #0x01]
	mov r1, sp
	ldrb r1, [r1, #0x1C]
	strb r1, [r4, #0x02]
	strb r7, [r4, #0x03]
	ldrb r1, [r4, #0x05]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	ldr r3, [sp, #0x018]
	lsls r1, r3, #0x05
	adds r0, r0, r1
	add r0, r8
	strh r0, [r4, #0x08]
	subs r0, r7, #0x1
	lsls r0, r0, #0x05
	ldr r1, [sp, #0x01C]
	adds r0, r0, r1
	strh r0, [r4, #0x06]
	str r2, [r4, #0x0C]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808460C: .4byte 0x00003FFF
_08084610: .4byte 0xFFFFC000
