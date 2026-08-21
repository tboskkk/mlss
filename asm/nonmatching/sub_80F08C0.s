	.syntax unified
	.text

	thumb_func_start sub_80F08C0
sub_80F08C0:
	push {r4, r5, lr}
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	movs r0, #0x00
	movs r1, #0x03
	movs r2, #0x00
	bl sub_8116B48
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080F08F8
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _080F08F8
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x01
	bl sub_811795C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080F08F8:
	movs r1, #0x00
	cmp r0, #0x00
	bne _080F0900
	movs r1, #0x01
_080F0900:
	ldm r4!, {r0}
	cmp r1, r0
	bne _080F090A
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
_080F090A:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
