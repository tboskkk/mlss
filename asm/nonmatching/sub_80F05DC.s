	.syntax unified
	.text

	thumb_func_start sub_80F05DC
sub_80F05DC:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r2, #0x0
	adds r1, #0x18
	ldr r2, _080F0614 @ =0x03000FC0
	ldr r2, [r2, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r2, r2, r5
	movs r5, #0x00
	ldsh r4, [r4, r5]
	str r4, [sp, #0x000]
	ldr r0, [r0, #0x14]
	movs r4, #0x8F
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0614: .4byte 0x03000FC0
