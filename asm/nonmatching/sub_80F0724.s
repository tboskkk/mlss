	.syntax unified
	.text

	thumb_func_start sub_80F0724
sub_80F0724:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r0, #0x14]
	bl sub_803E9F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F0738
	movs r0, #0x01
	b _080F073E
_080F0738:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
_080F073E:
	pop {r4}
	pop {r1}
	bx r1
