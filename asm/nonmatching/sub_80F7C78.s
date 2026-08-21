	.syntax unified
	.text

	thumb_func_start sub_80F7C78
sub_80F7C78:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	ldr r5, _080F7CC0 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7CB8
	bl sub_80E3CF4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080F7CB8
	ldr r2, [r5, #0x00]
	ldr r1, _080F7CC4 @ =0x000002BF
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080F7CB8
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F7CC8
_080F7CB8:
	ldr r0, [r4, #0x14]
	str r0, [r4, #0x00]
	movs r0, #0x00
	b _080F7CCA
_080F7CC0: .4byte 0x03000FD8
_080F7CC4: .4byte 0x000002BF
_080F7CC8:
	movs r0, #0x01
_080F7CCA:
	pop {r4, r5}
	pop {r1}
	bx r1
