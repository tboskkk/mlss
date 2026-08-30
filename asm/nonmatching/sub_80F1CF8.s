	.syntax unified
	.text

	thumb_func_start sub_80F1CF8
sub_80F1CF8:
	push {lr}
	ldr r1, [r2, #0x04]
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	ldr r2, [r2, #0x00]
	cmp r2, #0x00
	beq _080F1D10
	cmp r2, #0x01
	beq _080F1D1C
	b _080F1D28
_080F1D10:
	adds r2, r0, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r0, #0x04
	orrs r0, r1
	b _080F1D26
_080F1D1C:
	adds r2, r0, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	ldr r0, _080F1D30 @ =0x0000FFFB
	ands r0, r1
_080F1D26:
	strh r0, [r2, #0x00]
_080F1D28:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1D30: .4byte 0x0000FFFB
