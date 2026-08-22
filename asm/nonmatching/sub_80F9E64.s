	.syntax unified
	.text

	thumb_func_start sub_80F9E64
sub_80F9E64:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x04
	bhi _080F9F24
	lsls r0, r0, #0x02
	ldr r1, _080F9E7C @ =lbl_080F9E80
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F9E7C: .4byte lbl_080F9E80
lbl_080F9E80:
	.4byte _080F9E94
	.4byte _080F9E94
	.4byte _080F9EC0
	.4byte _080F9EE0
	.4byte _080F9F02
_080F9E94:
	ldr r2, [r3, #20]
	ldr r0, [r3, #36] @ 0x24
	movs r1, #154 @ 0x9a
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	movs r0, #172 @ 0xac
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r2, #0]
	lsls r1, r1, #6
	adds r1, r1, r0
	ldr r2, [r4, #0]
	movs r0, #1
	ands r2, r0
	subs r1, #4
	ldrb r3, [r1, #0]
	subs r0, #3
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0]
	b.n _080F9F24
_080F9EC0:
	ldr r1, [r3, #20]
	ldr r0, [r3, #36] @ 0x24
	movs r2, #154 @ 0x9a
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	movs r2, #172 @ 0xac
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r1, [r1, #0]
	lsls r0, r0, #6
	adds r0, r0, r1
	subs r0, #64 @ 0x40
	ldr r1, [r0, #0]
	movs r0, #0
	b.n _080F9F22
_080F9EE0:
	ldr r1, [r3, #20]
	ldr r0, [r3, #36] @ 0x24
	movs r2, #154 @ 0x9a
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	movs r2, #172 @ 0xac
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r1, [r1, #0]
	lsls r0, r0, #6
	adds r0, r0, r1
	subs r0, #64 @ 0x40
	ldr r1, [r0, #0]
	movs r0, #240 @ 0xf0
	lsls r0, r0, #8
	b.n _080F9F22
_080F9F02:
	ldr r1, [r3, #20]
	ldr r0, [r3, #36] @ 0x24
	movs r2, #154 @ 0x9a
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	movs r2, #172 @ 0xac
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r1, [r1, #0]
	lsls r0, r0, #6
	adds r0, r0, r1
	subs r0, #64 @ 0x40
	ldr r1, [r0, #0]
	movs r0, #128 @ 0x80
	lsls r0, r0, #8
_080F9F22:
	strh r0, [r1, #14]
_080F9F24:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
