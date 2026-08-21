	.syntax unified
	.text

	thumb_func_start sub_809AAF4
sub_809AAF4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r5, #0x00
	str r5, [r4, #0x2C]
	adds r0, #0xA8
	str r5, [r0, #0x00]
	ldr r2, _0809AB40 @ =0x000040C0
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x00
	bl sub_81DD77C
	adds r0, #0x14
	strh r0, [r4, #0x1C]
	strh r5, [r4, #0x1E]
	adds r1, r4, #0x0
	adds r1, #0x74
	movs r0, #0x7F
	strb r0, [r1, #0x00]
	ldr r0, _0809AB44 @ =0x0809AF61
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0809AB40: .4byte 0x000040C0
_0809AB44: .4byte sub_809AF60
