	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	mov r8, r3
	ldr r0, [r7, #0x04]
	cmp r0, #0x09
	bls _080F4F00
	b _080F5012
_080F4F00:
	lsls r0, r0, #0x02
	ldr r1, _080F4F0C @ =lbl_080F4F10
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F4F0C: .4byte lbl_080F4F10
lbl_080F4F10:
	.4byte _080F4F38
	.4byte _080F4F4C
	.4byte _080F4F72
	.4byte _080F4F98
	.4byte _080F4FB2
	.4byte _080F4FC4
	.4byte _080F4FD8
	.4byte _080F4FE2
	.4byte _080F4FEC
	.4byte _080F5004
_080F4F38:
	ldr r0, [pc, #8] @ (0x80f4f44)
	ldr r0, [r0, #0]
	ldr r1, [pc, #8] @ (0x80f4f48)
	adds r0, r0, r1
	ldrb r4, [r0, #0]
	b.n _080F5012
	lsrs r0, r3, #31
	lsls r0, r0, #12
	lsls r3, r7, #10
	movs r0, r0
_080F4F4C:
	ldr r0, [pc, #20] @ (0x80f4f64)
	ldr r0, [r0, #0]
	ldr r0, [r0, #124] @ 0x7c
	adds r1, r0, #0
	adds r1, #236 @ 0xec
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	blt.n _080F4F68
	adds r4, r0, #0
	b.n _080F5012
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F4F68:
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r0, #5
	subs r4, r0, r1
	b.n _080F5012
_080F4F72:
	ldr r0, [pc, #32] @ (0x80f4f94)
	ldr r0, [r0, #0]
	ldr r1, [r0, #124] @ 0x7c
	adds r0, r1, #0
	adds r0, #236 @ 0xec
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge.n _080F4FAC
	movs r2, #136 @ 0x88
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #27
	lsrs r4, r0, #27
	b.n _080F5012
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F4F98:
	ldr r0, [pc, #12] @ (0x80f4fa8)
	ldr r0, [r0, #0]
	ldr r0, [r0, #124] @ 0x7c
	ldr r0, [r0, #52] @ 0x34
	cmp r0, #0
	beq.n _080F4FAC
	ldr r0, [r0, #40] @ 0x28
	b.n _080F4FB8
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F4FAC:
	movs r4, #1
	negs r4, r4
	b.n _080F5012
_080F4FB2:
	ldr r0, [pc, #12] @ (0x80f4fc0)
	ldr r0, [r0, #0]
	ldr r0, [r0, #124] @ 0x7c
_080F4FB8:
	adds r0, #244 @ 0xf4
	ldrb r4, [r0, #0]
	b.n _080F5012
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F4FC4:
	ldr r0, [pc, #8] @ (0x80f4fd0)
	ldr r0, [r0, #0]
	ldr r1, [pc, #8] @ (0x80f4fd4)
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	b.n _080F5012
	lsrs r0, r3, #31
	lsls r0, r0, #12
	lsls r6, r6, #10
	movs r0, r0
_080F4FD8:
	adds r0, r5, #0
	bl sub_80F6E38
	adds r4, r0, #0
	b.n _080F5012
_080F4FE2:
	adds r0, r5, #0
	bl sub_80F6EF8
	adds r4, r0, #0
	b.n _080F5012
_080F4FEC:
	ldr r0, [pc, #12] @ (0x80f4ffc)
	ldr r0, [r0, #0]
	ldr r0, [r0, #124] @ 0x7c
	ldr r2, [pc, #12] @ (0x80f5000)
	adds r0, r0, r2
	ldrb r4, [r0, #0]
	b.n _080F5012
	movs r0, r0
	lsrs r0, r3, #31
	lsls r0, r0, #12
	lsls r3, r2, #4
	movs r0, r0
_080F5004:
	ldr r0, [pc, #52] @ (0x80f503c)
	ldr r0, [r0, #0]
	ldr r1, [pc, #52] @ (0x80f5040)
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	lsls r0, r0, #30
	lsrs r4, r0, #31
_080F5012:
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r2, [r5, #0x2C]
	ldr r5, _080F5044 @ =0x00001794
	adds r2, r2, r5
	adds r3, r6, #0x0
	adds r3, #0xA8
	movs r5, #0x00
	ldsh r0, [r7, r5]
	str r0, [sp, #0x000]
	str r4, [sp, #0x004]
	mov r0, r8
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0xD8, 0x0F, 0x00, 0x03, 0xC1, 0x02, 0x00, 0x00
_080F5044: .4byte 0x00001794
