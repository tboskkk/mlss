	.syntax unified
	.text

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
