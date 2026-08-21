	.syntax unified
	.text

	thumb_func_start sub_814437C
sub_814437C:
	push {r4, lr}
	adds r4, r1, #0x0
	bl sub_8138C8C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x01
	bne _08144394
	adds r0, r4, #0x0
	bl sub_81382A8
	b _081443C4
_08144394:
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _081443CC @ =0x0000020D
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldrb r0, [r3, #0x00]
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
_081443C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081443CC: .4byte 0x0000020D
