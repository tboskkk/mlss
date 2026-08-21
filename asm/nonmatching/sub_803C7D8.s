	.syntax unified
	.text

	thumb_func_start sub_803C7D8
sub_803C7D8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, r1, #0x0
	bl sub_804FB3C
	adds r1, r0, #0x0
	cmp r1, #0x00
	blt _0803C82C
	adds r5, r6, #0x0
	adds r5, #0xFA
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	movs r4, #0x01
	lsls r4, r1
	ands r0, r4
	cmp r0, #0x00
	bne _0803C82C
	movs r2, #0xC1
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_805C908
	ldrb r2, [r5, #0x00]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1C
	orrs r1, r4
	movs r0, #0x0F
	ands r1, r0
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x53
	bl play_sfx_80195B4
_0803C82C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
