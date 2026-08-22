	.syntax unified
	.text

	thumb_func_start sub_816624C
sub_816624C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x54]
	cmp r0, #0x07
	bhi _08166328
	lsls r0, r0, #0x02
	ldr r1, _08166260 @ =lbl_08166264
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08166260: .4byte lbl_08166264
lbl_08166264:
	.4byte _08166284
	.4byte _081662A8
	.4byte _081662C4
	.4byte _081662CC
	.4byte _081662D4
	.4byte _081662DC
	.4byte _081662E4
	.4byte _081662F8
_08166284:
	ldr r0, [pc, #24] @ (0x81662a0)
	ldr r1, [pc, #28] @ (0x81662a4)
	adds r0, r0, r1
	movs r2, #1
	negs r2, r2
	str r2, [r0, #0]
	movs r0, #0
	movs r1, #4
	bl sub_8019308
	movs r0, #1
	str r0, [r4, #84] @ 0x54
	b.n _08166328
	movs r0, r0
	lsls r4, r1, #13
	lsls r0, r0, #12
	lsrs r4, r0, #2
	movs r0, r0
_081662A8:
	adds r0, r4, #0
	adds r0, #80 @ 0x50
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _081662BC
	movs r0, #2
	str r0, [r4, #84] @ 0x54
	b.n _08166328
_081662BC:
	adds r0, r4, #0
	bl sub_8167D8C
	b.n _08166328
_081662C4:
	adds r0, r4, #0
	bl sub_8166594
	b.n _08166328
_081662CC:
	adds r0, r4, #0
	bl sub_8166DA8
	b.n _08166328
_081662D4:
	adds r0, r4, #0
	bl sub_8167510
	b.n _08166328
_081662DC:
	adds r0, r4, #0
	bl sub_8167DF8
	b.n _08166328
_081662E4:
	adds r0, r4, #0
	adds r0, #80 @ 0x50
	bl sub_81632C8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _08166328
	movs r0, #7
	str r0, [r4, #84] @ 0x54
	b.n _08166328
_081662F8:
	movs r0, #0
	bl sub_8163D80
	movs r0, #0
	bl sub_8019628
	ldr r0, [pc, #28] @ (0x8166324)
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	cmp r4, #0
	beq.n _0816633C
	ldr r1, [r4, #24]
	movs r2, #16
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #20]
	movs r1, #3
	bl _call_via_r2
	b.n _0816633C
	lsls r0, r2, #1
	lsls r0, r0, #8
_08166328:
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #0x01
	strh r0, [r1, #0x14]
	ldr r0, [r4, #0x3C]
	bl sub_816316C
_0816633C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
