	.syntax unified
	.text

	thumb_func_start sub_8152BF4
sub_8152BF4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [sp, #0x00C]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #0x01
	cmp r0, #0x0C
	bhi _08152CD8
	lsls r0, r0, #0x02
	ldr r1, _08152C14 @ =lbl_08152C18
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08152C14: .4byte lbl_08152C18
lbl_08152C18:
	.4byte _08152C4C
	.4byte _08152CE6
	.4byte _08152CD8
	.4byte _08152CD8
	.4byte _08152C5C
	.4byte _08152CD8
	.4byte _08152CD8
	.4byte _08152CD8
	.4byte _08152CD8
	.4byte _08152CD8
	.4byte _08152CD8
	.4byte _08152CC6
	.4byte _08152CBC
_08152C4C:
	ldr r1, [r4, #48] @ 0x30
	movs r2, #48 @ 0x30
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #52] @ 0x34
	bl _call_via_r1
	b.n _08152CE6
_08152C5C:
	ldrh r2, [r4, #54] @ 0x36
	movs r1, #1
	adds r0, r1, #0
	eors r0, r2
	ands r0, r1
	cmp r0, #0
	beq.n _08152CE6
	movs r0, #1
	orrs r0, r2
	strh r0, [r4, #54] @ 0x36
	movs r0, #100 @ 0x64
	strh r0, [r4, #56] @ 0x38
	adds r0, r4, #0
	bl sub_815FA3C
	adds r0, #33 @ 0x21
	ldrb r0, [r0, #0]
	adds r1, r4, #0
	adds r1, #66 @ 0x42
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #37 @ 0x25
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne.n _08152C98
	adds r0, r4, #0
	movs r1, #40 @ 0x28
	bl sub_815FA70
	b.n _08152CA0
_08152C98:
	adds r0, r4, #0
	movs r1, #41 @ 0x29
	bl sub_815FA70
_08152CA0:
	ldr r0, [pc, #16] @ (0x8152cb4)
	ldr r0, [r0, #0]
	ldr r1, [pc, #16] @ (0x8152cb8)
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #3
	negs r1, r1
	bl sub_81582CC
	b.n _08152CE6
	asrs r0, r3, #32
	lsls r0, r0, #12
	adds r0, r6, #2
	movs r0, r0
_08152CBC:
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	movs r0, #8
	strb r0, [r1, #0]
	b.n _08152CE6
_08152CC6:
	ldr r0, [pc, #12] @ (0x8152cd4)
	strh r0, [r4, #24]
	adds r1, r4, #0
	adds r1, #36 @ 0x24
	movs r0, #2
	strb r0, [r1, #0]
	b.n _08152CE6
_08152CD4:
	.byte 0x18, 0xFC, 0x00, 0x00
_08152CD8:
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl sub_8152CF0
	b _08152CE8
_08152CE6:
	.byte 0x00, 0x20
_08152CE8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
