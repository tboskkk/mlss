	.syntax unified
	.text

	thumb_func_start strlen
strlen:
	push {r4, r5, lr}
	adds r1, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	bne _081DD5A4
	adds r2, r1, #0x0
	ldr r1, [r2, #0x00]
	ldr r4, _081DD588 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _081DD58C @ =0x80808080
	b _081DD598
_081DD588: .4byte 0xFEFEFEFF
_081DD58C: .4byte 0x80808080
_081DD590:
	adds r2, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r1, r4
	bics r0, r1
_081DD598:
	ands r0, r3
	cmp r0, #0x00
	beq _081DD590
	adds r1, r2, #0x0
	b _081DD5A4
_081DD5A2:
	adds r1, #0x01
_081DD5A4:
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081DD5A2
	subs r0, r1, r5
	pop {r4, r5, pc}
	.byte 0x00, 0x00
