	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F056C
sub_80F056C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r3, r2, #0x0
	ldr r2, _080F05C0 @ =0x03000FD0
	ldm r3!, {r1}
	movs r0, #0x2C
	muls r0, r1
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldm r3!, {r1}
	movs r2, #0x01
	adds r0, r1, #0x0
	ands r0, r2
	lsls r0, r0, #0x04
	adds r0, #0x0C
	adds r6, r4, r0
	movs r0, #0x02
	ands r1, r0
	cmp r1, #0x00
	beq _080F05C8
	ldr r0, [r5, #0x14]
	ldr r5, _080F05C4 @ =0x0000010B
	adds r1, r0, r5
	ldr r0, [r3, #0x00]
	ldrb r1, [r1, #0x00]
	cmp r0, r1
	blt _080F05BA
	ands r0, r2
	lsls r2, r0, #0x01
	ldrb r1, [r4, #0x0B]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x0B]
	movs r0, #0xFF
_080F05BA:
	strb r0, [r6, #0x0C]
	b _080F05D4
	.byte 0x00, 0x00
_080F05C0: .4byte 0x03000FD0
_080F05C4: .4byte 0x0000010B
_080F05C8:
	ldr r0, [r3, #0x00]
	ldr r1, [r5, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x28]
	str r0, [r4, #0x00]
_080F05D4:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80F05DC
sub_80F05DC:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r2, #0x0
	adds r1, #0x18
	ldr r2, _080F0614 @ =0x03000FC0
	ldr r2, [r2, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r2, r2, r5
	movs r5, #0x00
	ldsh r4, [r4, r5]
	str r4, [sp, #0x000]
	ldr r0, [r0, #0x14]
	movs r4, #0x8F
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0614: .4byte 0x03000FC0
	thumb_func_start sub_80F0618
sub_80F0618:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	adds r7, r3, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _080F0636
	ldr r0, [r4, #0x08]
	asrs r0, r0, #0x04
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x0C]
	asrs r0, r0, #0x04
	str r0, [r4, #0x0C]
_080F0636:
	ldr r0, [r5, #0x14]
	movs r1, #0xC1
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x08
	ldsh r1, [r4, r2]
	movs r3, #0x0C
	ldsh r2, [r4, r3]
	bl get_coldef_ptr_by_xz
	adds r1, r6, #0x0
	adds r1, #0x18
	ldr r2, _080F0674 @ =0x03000FC0
	ldr r2, [r2, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r2, r2, r5
	movs r5, #0x00
	ldsh r3, [r4, r5]
	str r3, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F0674: .4byte 0x03000FC0
	thumb_func_start sub_80F0678
sub_80F0678:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	adds r5, r2, #0x0
	mov r9, r3
	ldr r1, [r6, #0x14]
	ldr r0, [r5, #0x08]
	lsls r0, r0, #0x02
	adds r1, #0x28
	adds r0, r1, r0
	ldr r2, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r4, [r1, #0x00]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	bne _080F06BA
	adds r0, r6, #0x0
	adds r0, #0x1C
	ldr r1, [r2, #0x0C]
	ldr r2, [r2, #0x10]
	ldr r3, [r4, #0x0C]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x000]
	bl sub_80EA670
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080F06BA:
	mov r1, r8
	adds r1, #0x18
	ldr r0, _080F06E8 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	movs r0, #0xE3
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r9
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F06E8: .4byte 0x03000FC0
	thumb_func_start sub_80F06EC
sub_80F06EC:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080F06FC
	ldr r0, [r1, #0x14]
	bl sub_8029380
_080F06FC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0704
sub_80F0704:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r0, #0x14]
	bl sub_803C508
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F0718
	movs r0, #0x01
	b _080F071E
_080F0718:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F071E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_80F0724
sub_80F0724:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r0, #0x14]
	bl sub_803E9F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F0738
	movs r0, #0x01
	b _080F073E
_080F0738:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F073E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_start sub_80F0744
sub_80F0744:
	push {lr}
	ldm r2!, {r3}
	cmp r3, #0x01
	beq _080F0768
	cmp r3, #0x01
	bgt _080F0756
	cmp r3, #0x00
	beq _080F075C
	b _080F0778
_080F0756:
	cmp r3, #0x02
	beq _080F0772
	b _080F0778
_080F075C:
	ldr r0, [r0, #0x14]
	ldr r1, [r2, #0x00]
	movs r2, #0x00
	bl sub_803C8A4
	b _080F0778
_080F0768:
	ldr r0, [r0, #0x14]
	movs r1, #0x00
	bl sub_80297D8
	b _080F0778
_080F0772:
	ldr r0, [r0, #0x14]
	bl sub_8029788
_080F0778:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F0780
sub_80F0780:
	push {lr}
	ldr r1, [r2, #0x00]
	cmp r1, #0x05
	beq _080F078E
	ldr r0, [r0, #0x14]
	bl sub_803C898
_080F078E:
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F0794
sub_80F0794:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r2, #0x00]
	subs r0, r1, #0x5
	cmp r0, #0x06
	bhi _080F0806
	lsls r0, r0, #0x02
	ldr r1, _080F07AC @ =0x080F07B0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F07AC: .4byte 0x080F07B0
	.byte 0xCC, 0x07, 0x0F, 0x08, 0xD4, 0x07, 0x0F, 0x08, 0xDC, 0x07, 0x0F, 0x08, 0xE4, 0x07, 0x0F, 0x08
	.byte 0xEE, 0x07, 0x0F, 0x08, 0xF6, 0x07, 0x0F, 0x08, 0xFE, 0x07, 0x0F, 0x08, 0x58, 0x69, 0x4A, 0xF7
	.byte 0x5D, 0xFA, 0x1C, 0xE0, 0x58, 0x69, 0x4A, 0xF7, 0x85, 0xF9, 0x18, 0xE0, 0x58, 0x69, 0x4A, 0xF7
	.byte 0x2B, 0xFB, 0x14, 0xE0, 0x58, 0x69, 0x01, 0x21, 0x4A, 0xF7, 0xDE, 0xFA, 0x0F, 0xE0, 0x58, 0x69
	.byte 0x3F, 0xF7, 0x20, 0xF8, 0x0B, 0xE0, 0x58, 0x69, 0x4B, 0xF7, 0x1E, 0xFF, 0x07, 0xE0, 0x58, 0x69
	.byte 0x4B, 0xF7, 0x10, 0xFE, 0x03, 0xE0
_080F0806:
	ldr r0, [r3, #0x14]
	movs r2, #0x00
	bl sub_8029A0C
	movs r0, #0x01
	pop {r1}
	bx r1
	thumb_func_start sub_80F0814
sub_80F0814:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r2, #0x00]
	asrs r2, r1, #0x01
	movs r0, #0x0F
	ands r2, r0
	cmp r2, #0x00
	beq _080F082C
	cmp r2, #0x01
	beq _080F084A
	b _080F0872
_080F082C:
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F083A
	cmp r0, #0x01
	beq _080F0842
	b _080F0872
_080F083A:
	ldr r0, [r3, #0x14]
	bl sub_80326F4
	b _080F0872
_080F0842:
	ldr r0, [r3, #0x14]
	bl sub_803C4A0
	b _080F0864
_080F084A:
	ands r2, r1
	cmp r2, #0x00
	beq _080F0856
	cmp r2, #0x01
	beq _080F085E
	b _080F0872
_080F0856:
	ldr r0, [r3, #0x14]
	bl sub_80328B4
	b _080F0872
_080F085E:
	ldr r0, [r3, #0x14]
	bl sub_803C468
_080F0864:
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080F0872
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F0874
_080F0872:
	movs r0, #0x01
_080F0874:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
