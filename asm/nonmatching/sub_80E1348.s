	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _080E13A0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9B
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	ldr r1, _080E13A4 @ =0x084FB4FC
	adds r0, #0x01
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x02
	ldr r1, _080E13A8 @ =0x089F2CE0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldr r3, _080E13AC @ =0x80008000
	adds r0, r0, r1
	ldr r2, _080E13B0 @ =0x0600F000
	movs r4, #0x80
	lsls r4, r4, #0x02
_080E1374:
	ldr r1, [r0, #0x00]
	adds r1, r1, r3
	str r1, [r2, #0x00]
	ldr r1, [r0, #0x04]
	adds r1, r1, r3
	str r1, [r2, #0x04]
	ldr r1, [r0, #0x08]
	adds r1, r1, r3
	str r1, [r2, #0x08]
	ldr r1, [r0, #0x0C]
	adds r1, r1, r3
	str r1, [r2, #0x0C]
	adds r0, #0x10
	adds r2, #0x10
	subs r4, #0x04
	cmp r4, #0x00
	bne _080E1374
	str r4, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E13A0: .4byte 0x03000FD8
_080E13A4: .4byte 0x084FB4FC
_080E13A8: .4byte 0x089F2CE0
_080E13AC: .4byte 0x80008000
_080E13B0: .4byte 0x0600F000
