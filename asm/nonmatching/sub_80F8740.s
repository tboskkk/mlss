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
