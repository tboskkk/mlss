	.include "asm/macros.inc"

	.syntax unified
	.text

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
