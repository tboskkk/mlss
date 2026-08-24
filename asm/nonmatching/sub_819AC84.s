	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x030
	adds r6, r0, #0x0
	mov r1, sp
	ldr r0, _0819ACF0 @ =0x0821CB20
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add r3, sp, #0x010
	adds r1, r3, #0x0
	ldr r0, _0819ACF4 @ =0x0821CB30
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	add r2, sp, #0x020
	adds r1, r2, #0x0
	ldr r0, _0819ACF8 @ =0x0821CB40
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, _0819ACFC @ =0x03007FF0
	lsls r0, r6, #0x01
	adds r0, r0, r6
	lsls r0, r0, #0x02
	movs r4, #0x99
	lsls r4, r4, #0x03
	adds r0, r0, r4
	ldr r1, [r1, #0x00]
	adds r5, r1, r0
	ldrb r0, [r5, #0x0A]
	adds r7, r3, #0x0
	mov r8, r2
	cmp r0, #0x00
	beq _0819ACDE
	ldrb r1, [r5, #0x05]
	adds r0, r1, #0x0
	cmp r0, #0xFF
	beq _0819ACDE
	adds r0, r1, #0x1
	strb r0, [r5, #0x05]
_0819ACDE:
	ldrb r0, [r5, #0x07]
	cmp r0, #0x06
	bls _0819ACE6
	b _0819AF0C
_0819ACE6:
	lsls r0, r0, #0x02
	ldr r1, _0819AD00 @ =lbl_0819AD04
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0819ACF0: .4byte 0x0821CB20
_0819ACF4: .4byte 0x0821CB30
_0819ACF8: .4byte 0x0821CB40
_0819ACFC: .4byte 0x03007FF0
_0819AD00: .4byte lbl_0819AD04
lbl_0819AD04:
	.4byte _0819AF0C
	.4byte _0819AD20
	.4byte _0819AD7C
	.4byte _0819AE04
	.4byte _0819AEDE
	.4byte _0819AE6C
	.4byte _0819AED0
_0819AD20:
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
	ldrb r0, [r5, #0]
	cmp r0, #255 @ 0xff
	beq.n _0819ADAC
	movs r0, #0
	strb r0, [r5, #5]
	lsls r2, r6, #2
	adds r0, r7, r2
	ldr r3, [r0, #0]
	ldrb r1, [r5, #0]
	movs r0, #255 @ 0xff
	subs r0, r0, r1
	asrs r0, r0, #5
	movs r1, #8
	orrs r0, r1
	strb r0, [r5, #10]
	movs r1, #255 @ 0xff
	ands r0, r1
	strb r0, [r3, #0]
	mov r7, sp
	adds r0, r7, r2
	ldr r3, [r0, #0]
	ldr r0, [pc, #36] @ (0x819ad78)
	ldr r0, [r0, #0]
	movs r1, #154 @ 0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r4, #128 @ 0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3, #0]
	add r2, r8
	ldr r2, [r2, #0]
	cmp r2, #0
	bne.n _0819AD70
	b.n _0819AF0C
_0819AD70:
	ldrb r0, [r5, #6]
	lsls r0, r0, #6
	strb r0, [r2, #0]
	b.n _0819AF0C
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819AD7C:
	adds r0, r6, #0
	bl sub_819AC14
	lsls r0, r0, #24
	lsrs r4, r0, #24
	ldrb r0, [r5, #4]
	cmp r4, r0
	bcs.n _0819ADAC
	lsls r0, r6, #2
	add r0, sp
	ldr r2, [r0, #0]
	ldr r0, [pc, #20] @ (0x819ada8)
	ldr r1, [r0, #0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r3, #154 @ 0x9a
	lsls r3, r3, #3
	adds r1, r1, r3
	b.n _0819AEF6
	movs r0, r0
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819ADAC:
	movs r0, #0
	strb r0, [r5, #5]
	lsls r2, r6, #2
	adds r0, r7, r2
	ldr r3, [r0, #0]
	ldrb r0, [r5, #1]
	movs r1, #255 @ 0xff
	subs r1, r1, r0
	asrs r1, r1, #5
	ldrb r0, [r5, #4]
	lsls r0, r0, #4
	orrs r1, r0
	strb r1, [r5, #10]
	movs r0, #255 @ 0xff
	ands r1, r0
	strb r1, [r3, #0]
	mov r4, sp
	adds r0, r4, r2
	ldr r3, [r0, #0]
	ldr r0, [pc, #44] @ (0x819ae00)
	ldr r1, [r0, #0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r7, #154 @ 0x9a
	lsls r7, r7, #3
	adds r1, r1, r7
	ldrh r0, [r1, #0]
	movs r4, #128 @ 0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3, #0]
	add r2, r8
	ldr r2, [r2, #0]
	cmp r2, #0
	beq.n _0819AEC4
	ldrb r0, [r5, #6]
	lsls r0, r0, #6
	strb r0, [r2, #0]
	b.n _0819AEC4
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819AE04:
	adds r0, r6, #0
	bl sub_819AC14
	lsls r0, r0, #24
	lsrs r4, r0, #24
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #2]
	muls r0, r1
	lsrs r1, r0, #8
	cmp r4, r1
	bls.n _0819AE38
	lsls r0, r6, #2
	add r0, sp
	ldr r2, [r0, #0]
	ldr r0, [pc, #16] @ (0x819ae34)
	ldr r1, [r0, #0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r5, #154 @ 0x9a
	lsls r5, r5, #3
	adds r1, r1, r5
	b.n _0819AEF6
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819AE38:
	movs r0, #0
	strb r0, [r5, #5]
	lsls r3, r6, #2
	adds r0, r7, r3
	ldr r2, [r0, #0]
	lsls r0, r1, #4
	strb r0, [r5, #10]
	movs r1, #255 @ 0xff
	ands r0, r1
	strb r0, [r2, #0]
	mov r7, sp
	adds r0, r7, r3
	ldr r2, [r0, #0]
	ldr r0, [pc, #20] @ (0x819ae68)
	ldr r1, [r0, #0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #154 @ 0x9a
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	b.n _0819AEBA
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819AE6C:
	adds r0, r6, #0
	bl sub_819AC14
	lsls r0, r0, #24
	lsrs r4, r0, #24
	movs r2, #0
	strb r2, [r5, #5]
	ldrb r1, [r5, #3]
	movs r0, #255 @ 0xff
	subs r0, r0, r1
	asrs r1, r0, #5
	cmp r1, #0
	beq.n _0819AE8A
	cmp r4, #0
	bne.n _0819AE96
_0819AE8A:
	lsls r0, r6, #2
	adds r0, r7, r0
	ldr r0, [r0, #0]
	strb r2, [r0, #0]
	strb r2, [r5, #7]
	b.n _0819AF0C
_0819AE96:
	lsls r2, r6, #2
	adds r0, r7, r2
	ldr r3, [r0, #0]
	lsls r0, r4, #4
	orrs r0, r1
	strb r0, [r5, #10]
	movs r1, #255 @ 0xff
	ands r0, r1
	strb r0, [r3, #0]
	mov r7, sp
	adds r0, r7, r2
	ldr r2, [r0, #0]
	ldr r0, [pc, #28] @ (0x819aecc)
	ldr r0, [r0, #0]
	movs r1, #154 @ 0x9a
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0]
_0819AEBA:
	movs r3, #128 @ 0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
_0819AEC4:
	ldrb r0, [r5, #7]
	adds r0, #1
	strb r0, [r5, #7]
	b.n _0819AF0C
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819AED0:
	adds r0, r6, #0
	bl sub_819AC14
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq.n _0819AF00
_0819AEDE:
	lsls r0, r6, #2
	add r0, sp
	ldr r2, [r0, #0]
	ldr r0, [pc, #20] @ (0x819aefc)
	ldr r1, [r0, #0]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r4, #154 @ 0x9a
	lsls r4, r4, #3
	adds r1, r1, r4
_0819AEF6:
	ldrh r0, [r1, #0]
	strh r0, [r2, #0]
	b.n _0819AF0C
	ldrb r0, [r6, #31]
	lsls r0, r0, #12
_0819AF00:
	lsls r0, r6, #2
	adds r0, r7, r0
	ldr r0, [r0, #0]
	strb r4, [r5, #10]
	strb r4, [r0, #0]
	strb r4, [r5, #7]
_0819AF0C:
	add sp, #0x030
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
