	push {lr}
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _0807FAB4
	ldr r0, [r3, #0x00]
	ldr r1, _0807FAB0 @ =0x03000FD8
	ldr r1, [r1, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r2, [r1, #0x00]
	str r2, [r3, #0x00]
	str r3, [r1, #0x00]
	b _0807FAB6
_0807FAB0: .4byte 0x03000FD8
_0807FAB4:
	movs r0, #0x00
_0807FAB6:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
