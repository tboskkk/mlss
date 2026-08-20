	.syntax unified
	.text

	thumb_func_start sub_80F110C
sub_80F110C:
	push {lr}
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	mvns r0, r0
	lsrs r0, r0, #0x1F
	ldm r3!, {r1}
	cmp r0, r1
	bne _080F1124
	ldr r0, [r3, #0x00]
	str r0, [r2, #0x00]
_080F1124:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
