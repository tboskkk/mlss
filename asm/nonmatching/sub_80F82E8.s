	.syntax unified
	.text

	thumb_func_start sub_80F82E8
sub_80F82E8:
	push {r4, lr}
	adds r3, r2, #0x0
	ldm r3!, {r0}
	cmp r0, #0x04
	bhi _080F838E
	lsls r0, r0, #0x02
	ldr r1, _080F82FC @ =lbl_080F8300
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080F82FC: .4byte lbl_080F8300
lbl_080F8300:
	.4byte _080F8314
	.4byte _080F8326
	.4byte _080F832E
	.4byte _080F8362
	.4byte _080F8374
_080F8314:
	ldr r0, [r3, #0]
	cmp r0, #0
	beq.n _080F8320
	bl sub_810CBC8
	b.n _080F838E
_080F8320:
	bl sub_810CAD0
	b.n _080F838E
_080F8326:
	ldrb r0, [r3, #0]
	bl sub_80F7608
	b.n _080F838E
_080F832E:
	ldr r0, [pc, #40] @ (0x80f8358)
	ldr r4, [r0, #0]
	movs r2, #0
	ldr r0, [r3, #0]
	cmp r0, #0
	bne.n _080F833C
	movs r2, #1
_080F833C:
	lsls r2, r2, #3
	ldrb r1, [r4, #11]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #11]
	ldr r0, [r3, #0]
	cmp r0, #0
	beq.n _080F835C
	bl sub_810CA30
	b.n _080F838E
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F835C:
	bl sub_810C950
	b.n _080F838E
_080F8362:
	ldr r0, [r3, #0]
	cmp r0, #0
	beq.n _080F836E
	bl sub_810CF04
	b.n _080F838E
_080F836E:
	bl sub_810CDB4
	b.n _080F838E
_080F8374:
	ldr r0, [pc, #32] @ (0x80f8398)
	ldr r2, [r0, #0]
	ldr r1, [r3, #0]
	ldr r0, [pc, #32] @ (0x80f839c)
	adds r2, r2, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	ldrb r3, [r2, #0]
	subs r0, #18
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
_080F838E:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00, 0xD8, 0x0F, 0x00, 0x03, 0xBF, 0x02, 0x00, 0x00
