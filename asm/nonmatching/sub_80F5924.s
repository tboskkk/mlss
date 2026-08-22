	.syntax unified
	.text

	thumb_func_start sub_80F5924
sub_80F5924:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	ldm r4!, {r0}
	cmp r0, #0x05
	bls _080F5934
	b _080F5A90
_080F5934:
	lsls r0, r0, #0x02
	ldr r1, _080F5940 @ =lbl_080F5944
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F5940: .4byte lbl_080F5944
lbl_080F5944:
	.4byte _080F595C
	.4byte _080F59C8
	.4byte _080F5A18
	.4byte _080F5A00
	.4byte _080F5A38
	.4byte _080F5A50
_080F595C:
	ldr r0, [pc, #100] @ (0x80f59c4)
	ldr r0, [r0, #0]
	ldr r2, [r4, #0]
	lsls r1, r2, #2
	adds r0, #88 @ 0x58
	adds r0, r0, r1
	ldr r5, [r0, #0]
	adds r0, r5, #0
	adds r0, #236 @ 0xec
	movs r3, #0
	ldrsh r1, [r0, r3]
	subs r0, #20
	ldr r0, [r0, #0]
	cmp r0, #0
	bge.n _080F597C
	adds r0, #255 @ 0xff
_080F597C:
	asrs r6, r0, #8
	adds r0, r5, #0
	adds r0, #220 @ 0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	bge.n _080F598A
	adds r0, #255 @ 0xff
_080F598A:
	asrs r3, r0, #8
	adds r0, r5, #0
	adds r0, #224 @ 0xe0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge.n _080F5998
	adds r0, #255 @ 0xff
_080F5998:
	asrs r0, r0, #8
	str r0, [sp, #0]
	movs r7, #136 @ 0x88
	lsls r7, r7, #1
	adds r0, r5, r7
	ldrb r0, [r0, #0]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r2, #0
	adds r2, r6, #0
	bl sub_807AFD4
	ldr r0, [r4, #0]
	bl sub_8081F34
	ldr r0, [r5, #16]
	bl sub_807BC90
	b.n _080F5A90
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F59C8:
	ldr r0, [pc, #44] @ (0x80f59f8)
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #2
	adds r1, #88 @ 0x58
	adds r1, r1, r0
	ldr r4, [r1, #0]
	ldr r1, [pc, #36] @ (0x80f59fc)
	adds r0, r4, r1
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne.n _080F5A70
	adds r0, r4, #0
	adds r0, #8
	bl sub_8086700
	movs r3, #143 @ 0x8f
	lsls r3, r3, #1
	adds r0, r4, r3
	b.n _080F5A8E
	lsrs r0, r3, #31
	lsls r0, r0, #12
	lsls r1, r2, #4
	movs r0, r0
_080F5A00:
	ldr r0, [pc, #16] @ (0x80f5a14)
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #2
	adds r1, #88 @ 0x58
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_808738C
	b.n _080F5A90
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5A18:
	ldr r0, [pc, #24] @ (0x80f5a34)
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #2
	adds r1, #88 @ 0x58
	adds r1, r1, r0
	ldr r4, [r1, #0]
	adds r0, r4, #0
	bl sub_807B7A8
	adds r0, r4, #0
	bl sub_807FE40
	b.n _080F5A90
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5A38:
	ldr r0, [pc, #16] @ (0x80f5a4c)
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #2
	adds r1, #88 @ 0x58
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_807B7A8
	b.n _080F5A90
	lsrs r0, r3, #31
	lsls r0, r0, #12
_080F5A50:
	ldr r0, [pc, #36] @ (0x80f5a78)
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #2
	adds r1, #88 @ 0x58
	adds r1, r1, r0
	ldr r4, [r1, #0]
	ldr r7, [pc, #28] @ (0x80f5a7c)
	adds r0, r4, r7
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #0
	beq.n _080F5A80
_080F5A70:
	ldr r0, [r3, #20]
	str r0, [r3, #0]
	movs r0, #0
	b.n _080F5A92
	lsrs r0, r3, #31
	lsls r0, r0, #12
	lsls r1, r2, #4
	movs r0, r0
_080F5A80:
	adds r0, r4, #0
	adds r0, #8
	bl sub_8087444
	movs r1, #143 @ 0x8f
	lsls r1, r1, #1
	adds r0, r4, r1
_080F5A8E:
	strh r5, [r0, #0]
_080F5A90:
	movs r0, #0x01
_080F5A92:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
