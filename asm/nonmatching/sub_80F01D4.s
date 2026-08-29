	.syntax unified
	.text

	thumb_func_start sub_80F01D4
sub_80F01D4:
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _080F020C @ =0x03000D44
	ldr r3, [r0, #0x00]
	strh r1, [r3, #0x20]
	adds r3, #0x28
	movs r0, #0x0F
	ands r2, r0
	lsls r2, r2, #0x02
	ldrb r1, [r3, #0x00]
	subs r0, #0x4C
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
	ldr r4, _080F0210 @ =0x03000FC8
	ldr r2, _080F0214 @ =0x082001B8
	movs r0, #0x04
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	bl sub_80E87E4
	str r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_080F020C: .4byte 0x03000D44
_080F0210: .4byte 0x03000FC8
_080F0214: .4byte 0x082001B8
