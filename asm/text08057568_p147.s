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
	thumb_func_start sub_80F76FC
sub_80F76FC:
	push {r4, r5, r6, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r1, [sp, #0x010]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0x07
	bgt _080F7728
	ldr r0, _080F7724 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	mov r12, r0
	b _080F773A
	.byte 0x00, 0x00
_080F7724: .4byte 0x03000FD8
_080F7728:
	ldr r1, _080F776C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r1, r1, r0
	mov r12, r1
_080F773A:
	mov r1, r12
	adds r1, #0x84
	lsls r0, r4, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	lsls r0, r5, #0x08
	str r0, [r1, #0x00]
	adds r1, #0x04
	lsls r0, r3, #0x08
	str r0, [r1, #0x00]
	mov r3, r12
	adds r3, #0x79
	movs r1, #0x01
	ands r1, r6
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F776C: .4byte 0x03000FDC
	thumb_func_start sub_80F7770
sub_80F7770:
	push {r4, lr}
	ldr r4, _080F77A4 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	adds r0, #0xE8
	ldr r2, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_80F2524
	ldr r1, [r4, #0x00]
	ldr r0, _080F77A8 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F77A4: .4byte 0x03000FD8
_080F77A8: .4byte 0x000002BF
	thumb_func_start sub_80F77AC
sub_80F77AC:
	push {r4, lr}
	add sp, #-0x008
	ldr r4, _080F77FC @ =0x03000FD8
	ldr r1, [r4, #0x00]
	adds r2, r0, #0x0
	adds r2, #0xF4
	ldrb r3, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r2, [r1, #0x00]
	adds r0, #0xE8
	ldr r1, [r0, #0x00]
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r1, [sp, #0x004]
	ldr r1, [r2, #0x2C]
	lsls r0, r3, #0x08
	adds r0, r0, r1
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x2C]
	adds r0, r2, #0x0
	mov r2, sp
	bl sub_80F8984
	ldr r1, [r4, #0x00]
	ldr r2, _080F7800 @ =0x000002BF
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	add sp, #0x008
	pop {r4}
	pop {r0}
	bx r0
_080F77FC: .4byte 0x03000FD8
_080F7800: .4byte 0x000002BF
	thumb_func_start sub_80F7804
sub_80F7804:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	movs r6, #0x01
	negs r6, r6
	movs r1, #0x00
	ldr r0, _080F7864 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x58
	mov r12, r0
_080F7816:
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	lsls r0, r3, #0x02
	add r0, r12
	ldr r2, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r2, #0x00
	beq _080F784C
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080F784C
	adds r0, r2, #0x0
	adds r0, #0xF8
	movs r7, #0x00
	ldsh r1, [r0, r7]
	subs r0, #0x02
	movs r2, #0x00
	ldsh r0, [r0, r2]
	subs r0, r1, r0
	cmp r0, r5
	ble _080F784C
	adds r5, r0, #0x0
	adds r6, r3, #0x0
_080F784C:
	movs r7, #0x80
	lsls r7, r7, #0x09
	adds r0, r4, r7
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _080F7816
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F7864: .4byte 0x03000FD8
