	.syntax unified
	.text

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
