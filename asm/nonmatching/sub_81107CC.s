	.syntax unified
	.text

	thumb_func_start sub_81107CC
sub_81107CC:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0811086E
	ldr r2, [r4, #0x28]
	adds r5, r2, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08110868
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r1, [r5, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bge _08110868
	str r1, [r4, #0x38]
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	adds r0, r2, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r2, [r5, #0x08]
	ldrh r1, [r2, #0x16]
	ldrb r0, [r2, #0x1E]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	orrs r1, r0
	ldr r0, _08110838 @ =0x00004136
	cmp r1, r0
	bne _0811083C
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	adds r1, r0, #0x2
	b _0811083E
	.byte 0x00, 0x00
_08110838: .4byte 0x00004136
_0811083C:
	movs r1, #0x00
_0811083E:
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x08]
	ldr r0, [r5, #0x08]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	adds r1, #0x23
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	movs r1, #0x0C
	bl sub_80883A0
	b _0811086E
_08110868:
	adds r0, r4, #0x0
	bl sub_807C298
_0811086E:
	pop {r4, r5}
	pop {r0}
	bx r0
