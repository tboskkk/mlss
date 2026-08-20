	.syntax unified
	.text

	thumb_func_start sub_80F1A3C
sub_80F1A3C:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r4, r3, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x3F
	beq _080F1A50
	ldr r1, [r2, #0x14]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x28]
_080F1A50:
	adds r4, #0x04
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x11]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1F
	ldr r0, [r4, #0x00]
	eors r1, r0
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
