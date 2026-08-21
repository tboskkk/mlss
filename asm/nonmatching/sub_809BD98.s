	.syntax unified
	.text

	thumb_func_start sub_809BD98
sub_809BD98:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0809BE48 @ =0x03000FD8
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	str r0, [r5, #0x10]
	str r0, [r5, #0x38]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r5, #0x18]
	str r0, [r5, #0x40]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809BE26
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D50
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #0xE0
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8082D40
	adds r2, r0, #0x0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r2, #0x5C
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r3, #0x3C
	bl sub_808843C
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl sub_80880C4
_0809BE26:
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x88
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x8D
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r0, _0809BE4C @ =0x0809C215
	str r0, [r5, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809BE48: .4byte 0x03000FD8
_0809BE4C: .4byte sub_809C214
