	.syntax unified
	.text

	thumb_func_start sub_80F85B4
sub_80F85B4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F68C4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x04
	ldsh r2, [r4, r0]
	adds r0, r5, #0x0
	bl sub_80F6A0C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r2, #0x08
	ldsb r2, [r4, r2]
	adds r0, r5, #0x0
	bl sub_80F7A50
	ldr r4, [r4, #0x00]
	cmp r4, #0x07
	bgt _080F85FC
	ldr r0, _080F85F8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r4, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F860C
	.byte 0x00, 0x00
_080F85F8: .4byte 0x03000FD8
_080F85FC:
	ldr r1, _080F8620 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r4
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F860C:
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F8620: .4byte 0x03000FDC
