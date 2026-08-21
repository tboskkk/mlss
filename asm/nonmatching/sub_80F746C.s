	.syntax unified
	.text

	thumb_func_start sub_80F746C
sub_80F746C:
	push {r4, r5, r6, lr}
	mov r12, r0
	mov r3, r12
	adds r3, #0xF0
	ldr r0, [r3, #0x00]
	cmp r0, #0x00
	beq _080F7520
	ldr r2, _080F74C8 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldrh r0, [r0, #0x24]
	ldrh r4, [r1, #0x16]
	adds r0, r0, r4
	strh r0, [r1, #0x16]
	ldr r0, [r3, #0x00]
	ldrh r0, [r0, #0x26]
	ldrh r6, [r1, #0x18]
	adds r0, r0, r6
	strh r0, [r1, #0x18]
	movs r4, #0x00
	ldr r0, _080F74CC @ =0x000003A6
	adds r1, r1, r0
	adds r5, r2, #0x0
	ldrb r1, [r1, #0x00]
	cmp r4, r1
	bge _080F74EA
_080F749E:
	mov r0, r12
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r2, [r0, r1]
	ldr r0, _080F74D0 @ =0x03000FDC
	ldr r3, [r0, #0x00]
	lsls r1, r4, #0x01
	ldr r6, _080F74D4 @ =0x00008E3E
	adds r0, r3, r6
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r2, r0
	bne _080F74DC
	ldr r1, _080F74D8 @ =0x00008E46
	adds r0, r3, r1
	adds r1, r0, r4
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFE
	bhi _080F7520
	b _080F751C
	.byte 0x00, 0x00
_080F74C8: .4byte 0x03000FD8
_080F74CC: .4byte 0x000003A6
_080F74D0: .4byte 0x03000FDC
_080F74D4: .4byte 0x00008E3E
_080F74D8: .4byte 0x00008E46
_080F74DC:
	adds r4, #0x01
	ldr r0, [r5, #0x00]
	ldr r3, _080F7528 @ =0x000003A6
	adds r0, r0, r3
	ldrb r0, [r0, #0x00]
	cmp r4, r0
	blt _080F749E
_080F74EA:
	ldr r0, [r5, #0x00]
	ldr r6, _080F7528 @ =0x000003A6
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	cmp r0, #0x03
	bhi _080F7520
	ldr r0, _080F752C @ =0x03000FDC
	ldr r2, [r0, #0x00]
	lsls r1, r4, #0x01
	ldr r3, _080F7530 @ =0x00008E3E
	adds r0, r2, r3
	adds r0, r0, r1
	mov r1, r12
	adds r1, #0xEC
	ldrh r1, [r1, #0x00]
	strh r1, [r0, #0x00]
	ldr r6, _080F7534 @ =0x00008E46
	adds r2, r2, r6
	adds r2, r2, r4
	movs r0, #0x01
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x00]
	ldr r0, _080F7528 @ =0x000003A6
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
_080F751C:
	adds r0, #0x01
	strb r0, [r1, #0x00]
_080F7520:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F7528: .4byte 0x000003A6
_080F752C: .4byte 0x03000FDC
_080F7530: .4byte 0x00008E3E
_080F7534: .4byte 0x00008E46
