	.syntax unified
	.text

	thumb_func_start sub_809E05C
sub_809E05C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r7, r6, #0x0
	adds r7, #0xB2
	movs r0, #0x00
	strh r0, [r7, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xA8
	ldr r0, _0809E0E0 @ =0x083B8996
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_809E2E8
	ldr r0, [r6, #0x30]
	ldr r0, [r0, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809E0D8
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r4, #0x07
	negs r4, r4
	adds r0, r4, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r5, [r6, #0x30]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	ands r4, r0
	strb r4, [r1, #0x12]
	ldr r2, _0809E0E4 @ =0x0809E411
	str r2, [r6, #0x4C]
	ldr r1, _0809E0E8 @ =0x083B899C
	movs r3, #0x00
	ldsh r0, [r7, r3]
	adds r0, r0, r1
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	bl _call_via_r2
_0809E0D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809E0E0: .4byte byte_83B8996 @ =0x083B8996
_0809E0E4: .4byte sub_809E410
_0809E0E8: .4byte dword_83B899C @ =0x083B899C
