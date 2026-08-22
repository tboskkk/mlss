	.syntax unified
	.text

	thumb_func_start sub_80EE26C
sub_80EE26C:
	push {lr}
	ldm r3!, {r0}
	cmp r0, #0x00
	beq _080EE27C
	movs r2, #0xD1
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r1, [r0, #0x00]
_080EE27C:
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r1, r0
	mov r12, r2
	ldm r3!, {r0}
	cmp r0, #0x0A
	bls _080EE28C
	b _080EE438
_080EE28C:
	lsls r0, r0, #0x02
	ldr r1, _080EE298 @ =lbl_080EE29C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EE298: .4byte lbl_080EE29C
lbl_080EE29C:
	.4byte _080EE2C8
	.4byte _080EE326
	.4byte _080EE382
	.4byte _080EE394
	.4byte _080EE3AC
	.4byte _080EE3BE
	.4byte _080EE3D0
	.4byte _080EE3E2
	.4byte _080EE402
	.4byte _080EE416
	.4byte _080EE428
_080EE2C8:
	ldr r1, [r3, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE2DA
	movs r0, #15
	ands r1, r0
	strh r1, [r2, #8]
	b.n _080EE2DE
_080EE2DA:
	lsls r0, r1, #4
	strh r0, [r2, #8]
_080EE2DE:
	adds r3, #4
	ldr r1, [r3, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE2F2
	movs r0, #15
	ands r1, r0
	strh r1, [r2, #10]
	b.n _080EE2F6
_080EE2F2:
	lsls r0, r1, #4
	strh r0, [r2, #10]
_080EE2F6:
	adds r3, #4
	ldr r1, [r3, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE30A
	movs r0, #15
	ands r1, r0
	strh r1, [r2, #12]
	b.n _080EE30E
_080EE30A:
	lsls r0, r1, #4
	strh r0, [r2, #12]
_080EE30E:
	ldr r1, [r3, #4]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE320
	movs r0, #15
	ands r1, r0
	strh r1, [r2, #14]
	b.n _080EE438
_080EE320:
	lsls r0, r1, #4
	strh r0, [r2, #14]
	b.n _080EE438
_080EE326:
	ldr r1, [r3, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE338
	movs r0, #15
	ands r1, r0
	lsls r0, r1, #4
	b.n _080EE33A
_080EE338:
	lsls r0, r1, #8
_080EE33A:
	strh r0, [r2, #0]
	adds r3, #4
	ldr r1, [r3, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE350
	movs r0, #15
	ands r1, r0
	lsls r0, r1, #4
	b.n _080EE352
_080EE350:
	lsls r0, r1, #8
_080EE352:
	strh r0, [r2, #2]
	adds r3, #4
	ldr r1, [r3, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE368
	movs r0, #15
	ands r1, r0
	lsls r0, r1, #4
	b.n _080EE36A
_080EE368:
	lsls r0, r1, #8
_080EE36A:
	strh r0, [r2, #4]
	ldr r1, [r3, #4]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EE37E
	movs r0, #15
	ands r1, r0
	lsls r0, r1, #4
	b.n _080EE436
_080EE37E:
	lsls r0, r1, #8
	b.n _080EE436
_080EE382:
	ldmia r3!, {r0}
	strh r0, [r2, #40] @ 0x28
	ldmia r3!, {r0}
	strh r0, [r2, #42] @ 0x2a
	ldmia r3!, {r0}
	strh r0, [r2, #44] @ 0x2c
	ldr r0, [r3, #0]
	strh r0, [r2, #46] @ 0x2e
	b.n _080EE438
_080EE394:
	ldr r0, [r3, #0]
	lsls r0, r0, #4
	str r0, [r3, #0]
	ldr r0, [r3, #4]
	lsls r0, r0, #4
	str r0, [r3, #4]
	ldr r0, [r3, #8]
	lsls r0, r0, #4
	str r0, [r3, #8]
	ldr r0, [r3, #12]
	lsls r0, r0, #4
	str r0, [r3, #12]
_080EE3AC:
	ldmia r3!, {r0}
	strh r0, [r2, #32]
	ldmia r3!, {r0}
	strh r0, [r2, #34] @ 0x22
	ldmia r3!, {r0}
	strh r0, [r2, #36] @ 0x24
	ldr r0, [r3, #0]
	strh r0, [r2, #38] @ 0x26
	b.n _080EE438
_080EE3BE:
	ldmia r3!, {r0}
	strh r0, [r2, #16]
	ldmia r3!, {r0}
	strh r0, [r2, #18]
	ldmia r3!, {r0}
	strh r0, [r2, #20]
	ldr r0, [r3, #0]
	strh r0, [r2, #22]
	b.n _080EE438
_080EE3D0:
	ldmia r3!, {r0}
	strh r0, [r2, #24]
	ldmia r3!, {r0}
	strh r0, [r2, #26]
	ldmia r3!, {r0}
	strh r0, [r2, #28]
	ldr r0, [r3, #0]
	strh r0, [r2, #30]
	b.n _080EE438
_080EE3E2:
	ldmia r3!, {r0}
	mov r1, ip
	strh r0, [r1, #62] @ 0x3e
	ldmia r3!, {r1}
	mov r0, ip
	adds r0, #64 @ 0x40
	strh r1, [r0, #0]
	ldmia r3!, {r0}
	mov r1, ip
	adds r1, #66 @ 0x42
	strh r0, [r1, #0]
	ldr r1, [r3, #0]
	mov r0, ip
	adds r0, #68 @ 0x44
	strh r1, [r0, #0]
	b.n _080EE438
_080EE402:
	ldmia r3!, {r0}
	mov r2, ip
	strh r0, [r2, #54] @ 0x36
	ldmia r3!, {r0}
	strh r0, [r2, #56] @ 0x38
	ldmia r3!, {r0}
	strh r0, [r2, #58] @ 0x3a
	ldr r0, [r3, #0]
	strh r0, [r2, #60] @ 0x3c
	b.n _080EE438
_080EE416:
	ldmia r3!, {r0}
	strh r0, [r2, #8]
	ldmia r3!, {r0}
	strh r0, [r2, #10]
	ldmia r3!, {r0}
	strh r0, [r2, #12]
	ldr r0, [r3, #0]
	strh r0, [r2, #14]
	b.n _080EE438
_080EE428:
	ldmia r3!, {r0}
	strh r0, [r2, #0]
	ldmia r3!, {r0}
	strh r0, [r2, #2]
	ldmia r3!, {r0}
	strh r0, [r2, #4]
	ldr r0, [r3, #0]
_080EE436:
	strh r0, [r2, #6]
_080EE438:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
