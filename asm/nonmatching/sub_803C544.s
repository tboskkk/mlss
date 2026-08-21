	.syntax unified
	.text

	thumb_func_start sub_803C544
sub_803C544:
	push {r4, r5, lr}
	ldr r4, _0803C58C @ =0x03000FC0
	ldr r0, [r4, #0x00]
	movs r5, #0xE3
	lsls r5, r5, #0x02
	adds r0, r0, r5
	ldr r2, _0803C590 @ =0x00000205
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0803C59C
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	movs r2, #0x81
	lsls r2, r2, #0x02
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0803C598
	ldr r0, [r4, #0x00]
	adds r0, r0, r5
	ldr r2, _0803C594 @ =0x00000203
	movs r1, #0x00
	bl sub_80E98C0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r1, r0
	orrs r1, r0
	lsrs r0, r1, #0x1F
	b _0803C59E
	.byte 0x00, 0x00
_0803C58C: .4byte 0x03000FC0
_0803C590: .4byte 0x00000205
_0803C594: .4byte 0x00000203
_0803C598:
	movs r0, #0x02
	b _0803C59E
_0803C59C:
	movs r0, #0x03
_0803C59E:
	pop {r4, r5}
	pop {r1}
	bx r1
