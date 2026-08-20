	.syntax unified
	.text

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
