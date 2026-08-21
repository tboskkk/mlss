	.syntax unified
	.text

	thumb_func_start sub_8082898
sub_8082898:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r1, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	bl sub_80E19CC
	adds r6, r0, #0x0
	ldr r0, [sp, #0x000]
	subs r0, #0x01
	str r0, [sp, #0x000]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _08082912
_080828B8:
	ldr r0, [sp, #0x000]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r5, [r0, #0x00]
	cmp r5, #0x00
	beq _08082904
	ldr r0, _080828D0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _080828D4 @ =0x00003660
	adds r4, r0, r1
	b _080828E0
	.byte 0x00, 0x00
_080828D0: .4byte 0x03000FDC
_080828D4: .4byte 0x00003660
_080828D8:
	ldrh r0, [r4, #0x00]
	cmp r0, r5
	beq _08082904
	subs r4, #0x08
_080828E0:
	ldrh r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080828D8
	movs r0, #0x00
	adds r1, r5, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_80213A0
	adds r1, r0, #0x0
	cmp r1, #0x00
	beq _08082904
	ldr r0, _0808291C @ =0x07FFFFFF
	cmp r1, r0
	bhi _08082904
	strh r5, [r4, #0x00]
	str r1, [r4, #0x04]
_08082904:
	ldr r1, [sp, #0x000]
	subs r1, #0x01
	str r1, [sp, #0x000]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080828B8
_08082912:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808291C: .4byte 0x07FFFFFF
