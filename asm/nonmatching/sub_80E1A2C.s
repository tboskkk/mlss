	.syntax unified
	.text

	thumb_func_start sub_80E1A2C
sub_80E1A2C:
	push {r4, r5, r6, lr}
	ldr r4, _080E1A90 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	ldr r2, _080E1A94 @ =0x040000B0
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E1A98 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E1A9C @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r0, [r2, #0x0A]
	ldr r3, _080E1AA0 @ =0x03000FDC
	ldr r5, [r4, #0x00]
	ldrb r1, [r5, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	ldr r6, _080E1AA4 @ =0x00003EF0
	adds r0, r0, r6
	ldr r3, [r3, #0x00]
	adds r0, r3, r0
	str r0, [r2, #0x00]
	ldr r4, _080E1AA8 @ =0x04000040
	str r4, [r2, #0x04]
	ldr r0, _080E1AAC @ =0xA6600001
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	ldrb r1, [r5, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x07
	adds r0, r0, r3
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080E1A90: .4byte 0x03000FD8
_080E1A94: .4byte 0x040000B0
_080E1A98: .4byte 0x0000C5FF
_080E1A9C: .4byte 0x00007FFF
_080E1AA0: .4byte 0x03000FDC
_080E1AA4: .4byte 0x00003EF0
_080E1AA8: .4byte 0x04000040
_080E1AAC: .4byte 0xA6600001
