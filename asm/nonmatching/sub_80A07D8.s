	.syntax unified
	.text

	thumb_func_start sub_80A07D8
sub_80A07D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r0, #0x00
	strh r0, [r5, #0x1C]
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	bl sub_8087CE4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	negs r4, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	negs r0, r0
	orrs r0, r4
	cmp r0, #0x00
	blt _080A0820
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xD8
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x30]
	adds r0, #0x84
	movs r1, #0xA0
	lsls r1, r1, #0x06
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x3C
	bl sub_80883A0
	ldr r0, _080A0828 @ =0x0809F479
	str r0, [r5, #0x4C]
_080A0820:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080A0828: .4byte sub_809F478
