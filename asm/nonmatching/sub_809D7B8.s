	.syntax unified
	.text

	thumb_func_start sub_809D7B8
sub_809D7B8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r0, [r1, #0x18]
	str r0, [r5, #0x10]
	ldr r0, [r1, #0x1C]
	str r0, [r5, #0x14]
	ldr r0, [r1, #0x20]
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x08]
	ldrh r0, [r1, #0x06]
	adds r0, #0x04
	strh r0, [r1, #0x06]
	ldr r2, [r5, #0x08]
	ldrh r6, [r2, #0x06]
	movs r1, #0x06
	ldsh r0, [r2, r1]
	movs r7, #0x80
	lsls r7, r7, #0x01
	cmp r0, r7
	ble _0809D7EA
	strh r7, [r2, #0x06]
	movs r0, #0x00
	b _0809D8B8
_0809D7EA:
	ldr r4, [r5, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	movs r3, #0x02
	cmp r1, r0
	bne _0809D800
	movs r3, #0x01
_0809D800:
	ldr r0, _0809D8C4 @ =0x0300034C
	ldrh r0, [r0, #0x3E]
	ands r0, r3
	cmp r0, #0x00
	beq _0809D8BA
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _0809D8BA
	adds r0, r6, #0x0
	subs r0, #0x18
	strh r0, [r2, #0x06]
	ldr r1, [r5, #0x08]
	movs r2, #0x06
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bgt _0809D830
	movs r0, #0x02
	strh r0, [r1, #0x06]
_0809D830:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0809D838
	adds r1, #0xFF
_0809D838:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0809D842
	adds r2, #0xFF
_0809D842:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0809D84C
	adds r3, #0xFF
_0809D84C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0xDF
	bl sub_80DF024
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809D85E
	adds r1, #0xFF
_0809D85E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809D868
	adds r2, #0xFF
_0809D868:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _0809D872
	adds r3, #0xFF
_0809D872:
	asrs r3, r3, #0x08
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	ldr r1, [r5, #0x28]
	adds r1, #0x7E
	ldrb r2, [r1, #0x00]
	movs r4, #0x39
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0x08
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x28]
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	ands r4, r0
	movs r0, #0x08
	orrs r4, r0
	strb r4, [r1, #0x00]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x18]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r0, [r5, #0x18]
	str r0, [r1, #0x20]
	ldr r0, _0809D8C8 @ =0x0809D8CD
_0809D8B8:
	str r0, [r5, #0x4C]
_0809D8BA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809D8C4: .4byte 0x0300034C
_0809D8C8: .4byte sub_809D8CC
