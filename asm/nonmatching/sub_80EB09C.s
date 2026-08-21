	.syntax unified
	.text

	thumb_func_start sub_80EB09C
sub_80EB09C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r3, #0x0
	ldr r1, [r5, #0x00]
	cmp r1, #0x04
	bgt _080EB0C4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0x0
	bl sub_80E6FB8
	ldr r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r0
	lsrs r1, r1, #0x18
	adds r0, r4, #0x0
	bl sub_80E7118
	b _080EB0D8
_080EB0C4:
	adds r0, r4, #0x0
	bl sub_80E6E68
	ldr r0, [r4, #0x04]
	ldr r1, _080EB0EC @ =0x000001B3
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_80E7118
_080EB0D8:
	ldr r0, _080EB0F0 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	adds r0, #0x31
	movs r1, #0x00
	strb r1, [r0, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EB0EC: .4byte 0x000001B3
_080EB0F0: .4byte 0x03000FB8
