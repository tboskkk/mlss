	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F8740
sub_80F8740:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r6, #0x2C]
	ldr r1, _080F875C @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F8760
	subs r0, #0x01
	b _080F8762
	.byte 0x00, 0x00
_080F875C: .4byte 0x0000179C
_080F8760:
	subs r0, #0x07
_080F8762:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #0x0
	adds r0, #0x1C
	add r3, sp, #0x008
	add r1, sp, #0x00C
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	add r2, sp, #0x004
	bl sub_80EA6D4
	ldr r2, [r4, #0x10]
	movs r3, #0x00
	ldr r0, [r4, #0x0C]
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080F8788
	movs r3, #0x01
_080F8788:
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_80F6AC0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x008]
	ldr r3, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80F76FC
	adds r0, r5, #0x0
	movs r1, #0x01
	bl sub_80F7644
	adds r2, r7, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r0, #0x02
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F87C0
sub_80F87C0:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F87E8
	cmp r2, #0x01
	bgt _080F87D4
	cmp r2, #0x00
	beq _080F87DA
	b _080F880A
_080F87D4:
	cmp r2, #0x02
	beq _080F8800
	b _080F880A
_080F87DA:
	ldr r0, _080F87E4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r3, [r0, #0x40]
	b _080F880A
	.byte 0x00, 0x00
_080F87E4: .4byte 0x03000FD8
_080F87E8:
	ldr r0, _080F87FC @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0B]
	lsls r0, r1, #0x1E
	lsrs r3, r0, #0x1F
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0B]
	b _080F880A
_080F87FC: .4byte 0x03000FD8
_080F8800:
	ldr r0, _080F8814 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x1F
	lsrs r3, r0, #0x1F
_080F880A:
	cmp r3, #0x00
	bne _080F8818
	movs r0, #0x01
	b _080F881E
	.byte 0x00, 0x00
_080F8814: .4byte 0x03000FD8
_080F8818:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F881E:
	pop {r4}
	pop {r1}
	bx r1
