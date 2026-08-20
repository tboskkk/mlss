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
	thumb_func_start sub_80F7868
sub_80F7868:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	movs r6, #0x01
	negs r6, r6
	movs r1, #0x00
	ldr r0, _080F78C0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x58
_080F787A:
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	lsls r0, r3, #0x02
	adds r0, r7, r0
	ldr r2, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r2, #0x00
	beq _080F78A8
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080F78A8
	adds r0, r2, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r5
	bge _080F78A8
	adds r5, r0, #0x0
	adds r6, r3, #0x0
_080F78A8:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _080F787A
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F78C0: .4byte 0x03000FD8
	thumb_func_start sub_80F78C4
sub_80F78C4:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	movs r6, #0x01
	negs r6, r6
	movs r1, #0x00
	ldr r0, _080F791C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r7, r0, #0x0
	adds r7, #0x58
_080F78D6:
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	lsls r0, r3, #0x02
	adds r0, r7, r0
	ldr r2, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r2, #0x00
	beq _080F7904
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x04
	bne _080F7904
	adds r0, r2, #0x0
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r5
	ble _080F7904
	adds r5, r0, #0x0
	adds r6, r3, #0x0
_080F7904:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x05
	ble _080F78D6
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F791C: .4byte 0x03000FD8
	thumb_func_start sub_80F7920
sub_80F7920:
	push {r4, lr}
	adds r4, r2, #0x0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F7944
	ldr r0, _080F7940 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F7954
	.byte 0x00, 0x00
_080F7940: .4byte 0x03000FD8
_080F7944:
	ldr r1, _080F7980 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r1, r0, r2
_080F7954:
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _080F795C
	adds r0, #0xFF
_080F795C:
	asrs r0, r0, #0x08
	strh r0, [r4, #0x00]
	ldr r0, [r1, #0x14]
	cmp r0, #0x00
	bge _080F7968
	adds r0, #0xFF
_080F7968:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bge _080F7974
	adds r0, #0xFF
_080F7974:
	asrs r1, r0, #0x08
	ldr r0, [sp, #0x008]
	strh r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080F7980: .4byte 0x03000FDC
	thumb_func_start sub_80F7984
sub_80F7984:
	push {r4, r5, lr}
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F79A8
	ldr r0, _080F79A4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x08
	b _080F79B8
_080F79A4: .4byte 0x03000FD8
_080F79A8:
	ldr r1, _080F79EC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r3, r0, r1
_080F79B8:
	ldr r0, [r3, #0x28]
	mov r12, r0
	mov r2, r12
	adds r2, #0xD8
	lsls r0, r4, #0x08
	ldr r1, [r3, #0x38]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	str r0, [r2, #0x00]
	adds r2, #0x04
	lsls r0, r5, #0x08
	ldr r1, [r3, #0x3C]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, [sp, #0x00C]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F79EC: .4byte 0x03000FDC
	thumb_func_start sub_80F79F0
sub_80F79F0:
	push {r4, lr}
	adds r4, r2, #0x0
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F7A14
	ldr r0, _080F7A10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x08
	b _080F7A24
	.byte 0x00, 0x00
_080F7A10: .4byte 0x03000FD8
_080F7A14:
	ldr r1, _080F7A4C @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r2, r0, r1
_080F7A24:
	ldr r0, [r2, #0x28]
	mov r12, r0
	mov r1, r12
	adds r1, #0xD8
	lsls r0, r4, #0x08
	str r0, [r2, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	lsls r0, r3, #0x08
	str r0, [r2, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	lsls r0, r0, #0x08
	str r0, [r2, #0x18]
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080F7A4C: .4byte 0x03000FDC
	thumb_func_start sub_80F7A50
sub_80F7A50:
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	cmp r2, #0x07
	bgt _080F7A74
	ldr r0, _080F7A70 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F7A84
_080F7A70: .4byte 0x03000FD8
_080F7A74:
	ldr r1, _080F7AD4 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F7A84:
	ldr r4, [r0, #0x08]
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x07
	bgt _080F7AB4
	ldr r0, _080F7AD8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r2, r2, r0
	movs r0, #0x01
	adds r1, r5, #0x0
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r3, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
_080F7AB4:
	cmp r4, #0x00
	beq _080F7ACE
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r4, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x11]
_080F7ACE:
	pop {r4, r5}
	pop {r0}
	bx r0
_080F7AD4: .4byte 0x03000FDC
_080F7AD8: .4byte 0x03000FD8
	thumb_func_start sub_80F7ADC
sub_80F7ADC:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0x07
	bgt _080F7B00
	ldr r0, _080F7AFC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F7B10
	.byte 0x00, 0x00
_080F7AFC: .4byte 0x03000FD8
_080F7B00:
	ldr r1, _080F7B18 @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r0, r1
_080F7B10:
	adds r0, #0xC5
	strb r2, [r0, #0x00]
	pop {r0}
	bx r0
_080F7B18: .4byte 0x03000FDC
	thumb_func_start sub_80F7B1C
sub_80F7B1C:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	ldr r6, [sp, #0x020]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	cmp r3, #0x07
	bgt _080F7B44
	ldr r2, _080F7B40 @ =0x03000FD8
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	b _080F7B56
_080F7B40: .4byte 0x03000FD8
_080F7B44:
	ldr r1, _080F7BAC @ =0x03000FDC
	movs r0, #0xD0
	muls r0, r3
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, _080F7BB0 @ =0x03000FD8
_080F7B56:
	cmp r4, #0x00
	bne _080F7B5C
	add r4, sp, #0x004
_080F7B5C:
	cmp r5, #0x00
	bne _080F7B62
	add r5, sp, #0x008
_080F7B62:
	cmp r6, #0x00
	bne _080F7B68
	add r6, sp, #0x00C
_080F7B68:
	ldr r0, [r1, #0x38]
	cmp r0, #0x00
	bge _080F7B70
	adds r0, #0xFF
_080F7B70:
	asrs r0, r0, #0x08
	str r0, [r4, #0x00]
	ldr r0, [r1, #0x3C]
	cmp r0, #0x00
	bge _080F7B7C
	adds r0, #0xFF
_080F7B7C:
	asrs r0, r0, #0x08
	str r0, [r5, #0x00]
	ldr r0, [r1, #0x40]
	cmp r0, #0x00
	bge _080F7B88
	adds r0, #0xFF
_080F7B88:
	asrs r0, r0, #0x08
	str r0, [r6, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8082C58
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080F7BAC: .4byte 0x03000FDC
_080F7BB0: .4byte 0x03000FD8
	thumb_func_start sub_80F7BB4
sub_80F7BB4:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r2, #0x00
	ldr r0, [r0, #0x28]
	ldr r1, [r0, #0x00]
_080F7BC0:
	ldrb r0, [r1, #0x0F]
	cmp r0, #0x00
	beq _080F7BDA
	ldrb r0, [r1, #0x0C]
	ldr r3, [r5, #0x00]
	cmp r0, r3
	beq _080F7BD2
	cmp r3, #0x3F
	bne _080F7BDA
_080F7BD2:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F7BEE
_080F7BDA:
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r1, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F7BC0
	movs r0, #0x01
_080F7BEE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F7BF4
sub_80F7BF4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
_080F7BFE:
	ldrb r0, [r3, #0x0F]
	cmp r0, #0x00
	beq _080F7C22
	ldrb r1, [r3, #0x0C]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _080F7C22
	lsls r0, r4, #0x18
	ldr r1, [r5, #0x28]
	lsrs r0, r0, #0x14
	ldr r4, [r1, #0x00]
	adds r4, r4, r0
	ldr r0, [r4, #0x00]
	bl sub_807FB64
	movs r0, #0x00
	strb r0, [r4, #0x0F]
	b _080F7C34
_080F7C22:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r3, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F7BFE
_080F7C34:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F7C3C
sub_80F7C3C:
	push {lr}
	ldr r2, [r2, #0x00]
	cmp r2, #0x01
	beq _080F7C60
	cmp r2, #0x01
	bgt _080F7C4E
	cmp r2, #0x00
	beq _080F7C54
	b _080F7C70
_080F7C4E:
	cmp r2, #0x02
	beq _080F7C6C
	b _080F7C70
_080F7C54:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x00
	bl sub_807F6EC
	b _080F7C70
_080F7C60:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x01
	bl sub_807F6EC
	b _080F7C70
_080F7C6C:
	bl sub_807F6D0
_080F7C70:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80F7C78
sub_80F7C78:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r5, _080F7CC0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7CB8
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7CB8
	ldr r2, [r5, #0x00]
	ldr r1, _080F7CC4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080F7CB8
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F7CC8
_080F7CB8:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F7CCA
_080F7CC0: .4byte 0x03000FD8
_080F7CC4: .4byte 0x000002BF
_080F7CC8:
	movs r0, #0x01
_080F7CCA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_80F7CD0
sub_80F7CD0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r1, r0, #0x1F
	movs r0, #0x04
	ands r1, r0
	movs r5, #0x00
	cmp r2, #0x01
	ble _080F7CEE
	ldr r5, _080F7D08 @ =0x00007FFF
_080F7CEE:
	ldr r2, [r4, #0x04]
	ldrh r3, [r4, #0x08]
	ldrh r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807F708
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080F7D08: .4byte 0x00007FFF
	thumb_func_start sub_80F7D0C
sub_80F7D0C:
	push {r4, lr}
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r3, r0, #0x1F
	movs r0, #0x04
	ands r3, r0
	movs r1, #0x00
	cmp r2, #0x01
	ble _080F7D28
	ldr r1, _080F7D38 @ =0x00007FFF
_080F7D28:
	ldr r2, [r4, #0x04]
	adds r0, r3, #0x0
	bl sub_807F754
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F7D38: .4byte 0x00007FFF
