	.syntax unified
	.text

	thumb_func_start sub_811448C
sub_811448C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _081144C0
	ldr r0, _081144C8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r0, [r2, #0x0C]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x0C]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	str r5, [r4, #0x4C]
_081144C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081144C8: .4byte 0x03000FD8
