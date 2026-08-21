	.syntax unified
	.text

	thumb_func_start sub_80F03C8
sub_80F03C8:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, _080F041C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	adds r5, r0, r1
	adds r1, #0xA0
	adds r4, r0, r1
	ldrh r1, [r4, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F03FE
	ldr r0, [r6, #0x00]
	ldr r0, [r0, #0x14]
	bl sub_8028E70
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F03FE
	ldrh r1, [r4, #0x00]
	adds r0, r7, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
_080F03FE:
	adds r0, r5, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _080F0416
	ldr r0, [r6, #0x00]
	adds r0, #0x1C
	adds r1, r5, #0x0
	bl sub_80EA778
_080F0416:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F041C: .4byte 0x03000FD0
