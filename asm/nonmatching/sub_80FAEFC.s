	.syntax unified
	.text

	thumb_func_start sub_80FAEFC
sub_80FAEFC:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80F94A8
	adds r0, r4, #0x0
	bl sub_80FADD4
	ldr r0, _080FAF24 @ =0x03000FC0
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	movs r2, #0x02
	negs r2, r2
	ands r0, r2
	str r0, [r1, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080FAF24: .4byte 0x03000FC0
