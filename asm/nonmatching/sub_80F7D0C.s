	.syntax unified
	.text

	thumb_func_start sub_80F7D0C
sub_80F7D0C:
	push {r4, lr}
	adds r4, r2, #0x0
	ldr r2, [r4, #0x00]
	movs r1, #0x01
	ands r1, r2
	negs r0, r1
	orrs r0, r1
	asrs r3, r0, #0x1F
	movs r0, #0x04
	ands r3, r0
	movs r1, #0x00
	cmp r2, #0x01
	ble _080F7D28
	ldr r1, _080F7D38 @ =0x00007FFF
_080F7D28:
	ldr r2, [r4, #0x04]
	adds r0, r3, #0x0
	bl sub_807F754
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
_080F7D38: .4byte 0x00007FFF
