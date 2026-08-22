	.syntax unified
	.text

	thumb_func_start sub_80ED4EC
sub_80ED4EC:
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0x0
	adds r5, r2, #0x0
	ldm r5!, {r0}
	cmp r0, #0x04
	bls _080ED4FA
	b _080ED694
_080ED4FA:
	lsls r0, r0, #0x02
	ldr r1, _080ED504 @ =lbl_080ED508
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080ED504: .4byte lbl_080ED508
lbl_080ED508:
	.4byte _080ED51C
	.4byte _080ED55E
	.4byte _080ED586
	.4byte _080ED5AC
	.4byte _080ED5C2
_080ED51C:
	ldr r2, [r5, #0]
	movs r0, #64 @ 0x40
	ands r0, r2
	cmp r0, #0
	beq.n _080ED538
	ldr r2, [r3, #20]
	movs r1, #130 @ 0x82
	lsls r1, r1, #2
	adds r0, r2, r1
	ldrb r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	adds r0, r0, r2
	b.n _080ED53E
_080ED538:
	ldr r1, [r3, #20]
	lsls r0, r2, #2
	adds r0, r0, r1
_080ED53E:
	ldr r4, [r0, #40] @ 0x28
	ldr r1, [r5, #4]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080ED552
	movs r0, #15
	ands r1, r0
	lsls r1, r1, #4
	b.n _080ED556
_080ED552:
	lsls r1, r1, #24
	asrs r1, r1, #16
_080ED556:
	adds r0, r4, #0
	bl sub_804794C
	b.n _080ED694
_080ED55E:
	ldmia r5!, {r0}
	ldr r1, [r3, #20]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0, #40] @ 0x28
	movs r2, #165 @ 0xa5
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r3, [r0, #0]
	ldr r1, [r5, #0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #17]
	movs r0, #13
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #17]
	b.n _080ED694
_080ED586:
	ldmia r5!, {r0}
	ldr r1, [r3, #20]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0, #40] @ 0x28
	ldr r1, [r5, #0]
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r3, r4, r0
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #0]
	movs r0, #15
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	b.n _080ED694
_080ED5AC:
	ldmia r5!, {r0}
	ldr r1, [r3, #20]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0, #40] @ 0x28
	ldr r1, [r5, #0]
	movs r2, #156 @ 0x9c
	lsls r2, r2, #2
	adds r0, r4, r2
	strh r1, [r0, #0]
	b.n _080ED694
_080ED5C2:
	ldmia r5!, {r0}
	ldr r1, [r3, #20]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0, #40] @ 0x28
	ldr r0, [r5, #0]
	asrs r6, r0, #15
	movs r0, #1
	mov ip, r0
	ands r6, r0
	adds r7, r4, #0
	adds r7, #84 @ 0x54
	ldrb r0, [r7, #0]
	cmp r0, #1
	bhi.n _080ED5FE
	ldr r0, [pc, #184] @ (0x80ed69c)
	ldr r2, [r0, #0]
	ldr r1, [pc, #184] @ (0x80ed6a0)
	adds r2, r2, r1
	ldrb r3, [r2, #0]
	lsrs r1, r3, #6
	mov r0, ip
	ldrb r7, [r7, #0]
	lsls r0, r7
	orrs r1, r0
	lsls r1, r1, #6
	movs r0, #63 @ 0x3f
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
_080ED5FE:
	ldr r0, [r5, #0]
	asrs r0, r0, #4
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq.n _080ED61E
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r2, r4, r0
	lsls r3, r6, #5
	ldrb r1, [r2, #0]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
_080ED61E:
	ldr r0, [r5, #0]
	asrs r0, r0, #3
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq.n _080ED63E
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r2, r4, r0
	lsls r3, r6, #6
	ldrb r1, [r2, #0]
	movs r0, #65 @ 0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
_080ED63E:
	ldr r0, [r5, #0]
	asrs r0, r0, #2
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq.n _080ED65C
	movs r0, #131 @ 0x83
	lsls r0, r0, #2
	adds r2, r4, r0
	lsls r3, r6, #7
	ldrb r1, [r2, #0]
	movs r0, #127 @ 0x7f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
_080ED65C:
	ldr r0, [r5, #0]
	asrs r0, r0, #1
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq.n _080ED678
	ldr r0, [pc, #56] @ (0x80ed6a4)
	adds r2, r4, r0
	ldrb r1, [r2, #0]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0]
_080ED678:
	ldr r0, [r5, #0]
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq.n _080ED694
	ldr r0, [pc, #32] @ (0x80ed6a4)
	adds r2, r4, r0
	lsls r3, r6, #1
	ldrb r1, [r2, #0]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
_080ED694:
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xD0, 0x0F, 0x00, 0x03, 0x5A, 0x05, 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00
