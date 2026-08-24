	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809EDC8
	movs r0, #0x8B
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809EDBC
	ldr r2, _0809EDD0 @ =0x03001038
	ldr r0, _0809EDD4 @ =0x0819832C
	ldr r1, _0809EDD8 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	movs r1, #0x3C
	bl _call_via_r2
	adds r2, r4, #0x0
	adds r2, #0x7A
	movs r1, #0x00
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7E
	strh r1, [r0, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0809EDBC:
	adds r0, r4, #0x0
	adds r0, #0xA8
	movs r1, #0x00
	str r1, [r0, #0x00]
	ldr r0, _0809EDDC @ =0x0809EDE1
	str r0, [r4, #0x4C]
_0809EDC8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809EDD0: .4byte 0x03001038
_0809EDD4: .4byte 0x0819832C
_0809EDD8: .4byte 0x08198220
_0809EDDC: .4byte sub_809EDE0
