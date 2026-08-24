	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	mov r10, r1
	str r2, [sp, #0x000]
	adds r7, r3, #0x0
	ldr r3, [sp, #0x028]
	ldr r6, [sp, #0x02C]
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08087988
	adds r0, r7, #0x3
_08087988:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08087992
	adds r0, r3, #0x3
_08087992:
	asrs r3, r0, #0x02
	adds r0, r6, #0x0
	cmp r6, #0x00
	bge _0808799C
	adds r0, r6, #0x3
_0808799C:
	asrs r6, r0, #0x02
	cmp r7, #0x00
	bne _080879BA
	cmp r3, #0x00
	bne _080879BA
	cmp r6, #0x00
	bne _080879BA
	mov r0, r9
	strh r6, [r0, #0x00]
	mov r1, r10
	strh r6, [r1, #0x00]
	ldr r2, [sp, #0x000]
	strh r6, [r2, #0x00]
	movs r0, #0x00
	b _08087A26
_080879BA:
	ldr r0, _08087A38 @ =0x03001038
	mov r8, r0
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	adds r5, r0, #0x0
	ldr r4, _08087A3C @ =0x0819832C
	ldr r0, _08087A40 @ =0x08198220
	subs r4, r4, r0
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r7, #0x0
	muls r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r2, r9
	strh r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x004]
	ldr r1, [sp, #0x030]
	adds r0, r3, #0x0
	muls r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	mov r2, r10
	strh r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x030]
	adds r0, r6, #0x0
	muls r0, r1
	adds r1, r5, #0x0
	bl _call_via_r2
	ldr r2, [sp, #0x000]
	strh r0, [r2, #0x00]
	adds r0, r5, #0x0
_08087A26:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087A38: .4byte 0x03001038
_08087A3C: .4byte 0x0819832C
_08087A40: .4byte 0x08198220
