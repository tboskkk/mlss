	.syntax unified
	.text

	thumb_func_start sub_804FBDC
sub_804FBDC:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r4, #0x00
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldrh r2, [r0, #0x00]
	ldr r1, _0804FC28 @ =0x00000801
	adds r0, r1, #0x0
	ands r0, r2
	cmp r0, r1
	bne _0804FC20
	ldr r1, _0804FC2C @ =0x0000035A
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0804FC20
	movs r0, #0xD2
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r3, #0x0C]
	str r0, [r1, #0x00]
	movs r0, #0xD3
	lsls r0, r0, #0x02
	adds r1, r3, r0
	ldr r0, [r3, #0x10]
	str r0, [r1, #0x00]
	adds r0, r3, #0x0
	bl sub_8041FFC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0804FC20:
	adds r0, r4, #0x0
	pop {r4}
	pop {r1}
	bx r1
_0804FC28: .4byte 0x00000801
_0804FC2C: .4byte 0x0000035A
