	.syntax unified
	.text

	thumb_func_start sub_80F9F2C
sub_80F9F2C:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r0, [r3, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldm r2!, {r0}
	cmp r0, #0x05
	bls _080F9F48
	b _080FA06E
_080F9F48:
	lsls r0, r0, #0x02
	ldr r1, _080F9F54 @ =lbl_080F9F58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F9F54: .4byte lbl_080F9F58
lbl_080F9F58:
	.4byte _080F9F70
	.4byte _080F9FA6
	.4byte _080F9FE2
	.4byte _080FA006
	.4byte _080FA02E
	.4byte _080FA044
_080F9F70:
	ldr r2, [r2, #0]
	movs r0, #64 @ 0x40
	ands r0, r2
	cmp r0, #0
	beq.n _080F9F92
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0, #0]
	lsls r1, r4, #6
	adds r1, r1, r0
	movs r0, #15
	ands r2, r0
	lsls r0, r2, #4
	strh r0, [r1, #58] @ 0x3a
	b.n _080FA06E
_080F9F92:
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	lsls r1, r2, #8
	strh r1, [r0, #58] @ 0x3a
	b.n _080FA06E
_080F9FA6:
	ldr r2, [r2, #0]
	movs r0, #64 @ 0x40
	ands r0, r2
	cmp r0, #0
	beq.n _080F9FCA
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #15
	ands r2, r1
	adds r0, #32
	strb r2, [r0, #0]
	b.n _080FA06E
_080F9FCA:
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r0, [r0, #0]
	lsls r1, r2, #4
	adds r0, #32
	strb r1, [r0, #0]
	b.n _080FA06E
_080F9FE2:
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r3, [r0, #0]
	ldr r0, [r2, #0]
	lsls r0, r0, #6
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r0, #14]
	cmp r1, #0
	beq.n _080FA06E
	subs r0, r1, #1
	strh r0, [r3, #14]
	b.n _080FA06E
_080FA006:
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r3, [r0, #0]
	ldr r0, [r2, #0]
	lsls r0, r0, #6
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r1, [r0, #14]
	movs r0, #240 @ 0xf0
	lsls r0, r0, #8
	cmp r1, r0
	bls.n _080FA06E
	adds r0, r1, #1
	strh r0, [r3, #14]
	b.n _080FA06E
_080FA02E:
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r1, [r2, #0]
	adds r0, #61 @ 0x3d
	strb r1, [r0, #0]
	b.n _080FA06E
_080FA044:
	ldr r0, [r3, #20]
	movs r1, #172 @ 0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0, #0]
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r4, [r0, #0]
	ldr r2, [r2, #0]
	movs r0, #3
	ands r2, r0
	lsls r3, r2, #2
	ldrb r1, [r4, #31]
	subs r0, #16
	ands r0, r1
	orrs r0, r3
	movs r1, #4
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #31]
_080FA06E:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
