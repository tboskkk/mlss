	.syntax unified
	.text

	thumb_func_start sub_80F83A0
sub_80F83A0:
	push {r4, r5, lr}
	ldr r3, _080F83CC @ =0x03000FD8
	ldr r0, [r3, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r2, [r2, #0x00]
	movs r1, #0x01
	adds r0, r2, #0x0
	eors r0, r1
	ands r0, r1
	adds r5, r3, #0x0
	cmp r0, #0x00
	beq _080F83D0
	movs r0, #0x02
	ands r2, r0
	movs r3, #0x02
	cmp r2, #0x00
	beq _080F83D2
	movs r3, #0x01
	b _080F83D2
_080F83CC: .4byte 0x03000FD8
_080F83D0:
	movs r3, #0x00
_080F83D2:
	ldrb r1, [r4, #0x05]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x05]
	ldr r1, [r5, #0x00]
	ldr r0, _080F83EC @ =0x081054D5
	str r0, [r1, #0x24]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080F83EC: .4byte sub_81054D4
