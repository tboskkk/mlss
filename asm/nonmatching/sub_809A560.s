	.syntax unified
	.text

	thumb_func_start sub_809A560
sub_809A560:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0809A5B0
	ldr r1, [r4, #0x08]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r2, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_0809A5B0:
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r2, [r0, #0x00]
	ldr r1, [r4, #0x18]
	adds r5, r0, #0x0
	cmp r2, r1
	blt _0809A62A
	ldr r0, [r4, #0x08]
	ldrh r1, [r0, #0x16]
	ldrb r0, [r0, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	orrs r1, r0
	ldr r0, _0809A5E4 @ =0x000040D7
	cmp r1, r0
	bne _0809A5E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6A
	bl play_sfx_80195B4
	b _0809A5F2
	.byte 0x00, 0x00
_0809A5E4: .4byte 0x000040D7
_0809A5E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6A
	bl play_sfx_80195B4
_0809A5F2:
	adds r2, r4, #0x0
	adds r2, #0x98
	ldr r1, [r2, #0x00]
	movs r3, #0x04
	adds r0, r1, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _0809A624
	orrs r1, r3
	str r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x00]
	str r0, [r4, #0x18]
	ldr r0, _0809A620 @ =0x0809A365
	str r0, [r4, #0x4C]
	b _0809A62A
_0809A620: .4byte sub_809A364
_0809A624:
	adds r0, r4, #0x0
	bl sub_807C298
_0809A62A:
	pop {r4, r5}
	pop {r0}
	bx r0
