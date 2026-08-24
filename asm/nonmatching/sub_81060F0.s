	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	beq _08106104
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _08106164
_08106104:
	ldr r0, [r4, #0x08]
	bl sub_807FB34
	ldr r7, _0810616C @ =0x03000FD8
	ldr r1, [r7, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x02
	adds r0, r1, r6
	ldrb r2, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r3, _08106170 @ =0x00002038
	cmp r2, #0x00
	beq _0810612C
	adds r3, #0x2F
_0810612C:
	adds r0, r5, #0x0
	movs r1, #0x03
	adds r2, r3, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08106174 @ =0x08106179
	str r0, [r4, #0x04]
	ldr r0, [r7, #0x00]
	adds r0, r0, r6
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	cmp r0, #0x00
	beq _0810615A
	adds r2, #0x19
_0810615A:
	movs r1, #0x01
	negs r1, r1
	adds r0, r2, #0x0
	bl play_sfx_80195B4
_08106164:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810616C: .4byte 0x03000FD8
_08106170: .4byte 0x00002038
_08106174: .4byte sub_8106178
