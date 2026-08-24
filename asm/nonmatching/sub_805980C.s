	.syntax unified
	.text

	thumb_func_start sub_805980C
sub_805980C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r6, _08059830 @ =0x086527F4
	adds r7, r6, #0x0
	ldr r0, _08059834 @ =0x03000DE8
	ldrb r5, [r0, #0x03]
	ldrh r0, [r4, #0x1C]
	adds r0, #0x05
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bls _08059826
	b _0805991C
_08059826:
	lsls r0, r0, #0x02
	ldr r1, _08059838 @ =lbl_0805983C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08059830: .4byte dword_86527F4 @ =0x086527F4
_08059834: .4byte 0x03000DE8
_08059838: .4byte lbl_0805983C
lbl_0805983C:
	.4byte _08059850
	.4byte _08059888
	.4byte _080598C4
	.4byte _08059900
	.4byte _08059910
_08059850:
	adds r0, r4, #0
	bl sub_8059D8C
	movs r3, #0
	ldr r2, [pc, #36] @ (0x8059880)
	str r3, [r2, #0]
	ldr r0, [pc, #36] @ (0x8059884)
	lsls r1, r5, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _08059916
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0, #0]
	adds r0, r6, r0
	str r0, [r2, #4]
	ldr r0, [r4, #112] @ 0x70
	str r0, [r2, #8]
	str r3, [r2, #12]
	adds r0, r2, #0
	bl sub_8019808
	b.n _08059916
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_08059888:
	ldr r3, [pc, #48] @ (0x80598bc)
	ldr r2, [r3, #0]
	cmp r2, #0
	bne.n _0805991C
	ldr r0, [pc, #44] @ (0x80598c0)
	lsls r1, r5, #2
	adds r1, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _08059916
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0, #0]
	adds r0, r6, r0
	str r0, [r3, #4]
	ldr r0, [r4, #112] @ 0x70
	movs r1, #128 @ 0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r3, #8]
	str r2, [r3, #12]
	adds r0, r3, #0
	bl sub_8019808
	b.n _08059916
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_080598C4:
	ldr r3, [pc, #48] @ (0x80598f8)
	ldr r2, [r3, #0]
	cmp r2, #0
	bne.n _0805991C
	ldr r0, [pc, #44] @ (0x80598fc)
	lsls r1, r5, #2
	adds r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #255 @ 0xff
	beq.n _08059916
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0, #0]
	adds r0, r6, r0
	str r0, [r3, #4]
	ldr r0, [r4, #112] @ 0x70
	movs r1, #128 @ 0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r3, #8]
	str r2, [r3, #12]
	adds r0, r3, #0
	bl sub_8019808
	b.n _08059916
	lsrs r0, r0, #23
	lsls r0, r0, #12
	add r2, sp, #432 @ 0x1b0
	lsrs r2, r7, #32
_08059900:
	ldr r0, [pc, #8] @ (0x805990c)
	ldr r0, [r0, #0]
	cmp r0, #0
	bne.n _0805991C
	b.n _08059916
	movs r0, r0
	lsrs r0, r0, #23
	lsls r0, r0, #12
_08059910:
	adds r0, r4, #0
	bl sub_8059DDC
_08059916:
	ldrh r0, [r4, #28]
	adds r0, #1
	strh r0, [r4, #28]
_0805991C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
