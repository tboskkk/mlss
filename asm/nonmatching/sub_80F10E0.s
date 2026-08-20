	.syntax unified
	.text

	thumb_func_start sub_80F10E0
sub_80F10E0:
	push {lr}
	adds r3, r1, #0x0
	ldm r2!, {r1}
	ldr r0, [r0, #0x14]
	lsls r1, r1, #0x02
	adds r1, r1, r0
	ldr r0, [r1, #0x28]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mvns r0, r0
	lsrs r0, r0, #0x1F
	ldm r2!, {r1}
	cmp r0, r1
	bne _080F1104
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
_080F1104:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
