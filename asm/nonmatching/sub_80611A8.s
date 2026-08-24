	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806122C
	movs r0, #0xD9
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD9
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080611EC
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	ldr r2, _080611E8 @ =0xFFFFB000
	b _080611F4
_080611E8: .4byte 0xFFFFB000
_080611EC:
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	ldr r2, _08061234 @ =0xFFFFA000
_080611F4:
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08061238 @ =0x0806123D
	str r0, [r4, #0x4C]
_0806122C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08061234: .4byte 0xFFFFA000
_08061238: .4byte sub_806123C
