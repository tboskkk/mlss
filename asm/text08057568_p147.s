	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F7608
sub_80F7608:
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	beq _080F7618
	bl sub_810CA30
	b _080F761C
_080F7618:
	bl sub_810C950
_080F761C:
	ldr r0, _080F763C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, _080F7640 @ =0x000002BF
	adds r2, r2, r0
	movs r1, #0x01
	ands r1, r4
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F763C: .4byte 0x03000FD8
_080F7640: .4byte 0x000002BF
	thumb_func_start sub_80F7644
sub_80F7644:
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x07
	bgt _080F7668
	ldr r0, _080F7664 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	b _080F7678
_080F7664: .4byte 0x03000FD8
_080F7668:
	ldr r1, _080F76B4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r4, r0, r1
_080F7678:
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807FE7C
	ldr r2, [r4, #0x28]
	cmp r2, #0x00
	beq _080F76AE
	cmp r5, #0x00
	beq _080F76AE
	adds r1, r2, #0x0
	adds r1, #0xD8
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
_080F76AE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F76B4: .4byte 0x03000FDC
	thumb_func_start sub_80F76B8
sub_80F76B8:
	push {lr}
	adds r3, r1, #0x0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x07
	bgt _080F76D8
	ldr r0, _080F76D4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F76E8
_080F76D4: .4byte 0x03000FD8
_080F76D8:
	ldr r1, _080F76F8 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F76E8:
	adds r2, r0, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r3, [r2, #0x00]
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	pop {r0}
	bx r0
_080F76F8: .4byte 0x03000FDC
