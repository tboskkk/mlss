	.syntax unified
	.text

	thumb_func_start sub_80F7CD0
sub_80F7CD0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r1, r0, #0x1F
	movs r0, #0x04
	ands r1, r0
	movs r5, #0x00
	cmp r2, #0x01
	ble _080F7CEE
	ldr r5, _080F7D08 @ =0x00007FFF
_080F7CEE:
	ldr r2, [r4, #0x04]
	ldrh r3, [r4, #0x08]
	ldrh r0, [r4, #0x0C]
	str r0, [sp, #0x000]
	adds r0, r1, #0x0
	adds r1, r5, #0x0
	bl sub_807F708
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
_080F7D08: .4byte 0x00007FFF
