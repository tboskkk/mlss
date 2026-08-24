	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xD8
	ldr r3, [r0, #0x00]
	movs r1, #0x00
	cmp r3, #0x63
	ble _0816F7FE
_0816F7F6:
	subs r3, #0x64
	adds r1, #0x01
	cmp r3, #0x63
	bgt _0816F7F6
_0816F7FE:
	lsls r1, r1, #0x01
	ldr r2, _0816F8B8 @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816F8BC @ =0x06007144
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816F8C0 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	movs r1, #0x00
	adds r4, #0xDC
	cmp r3, #0x09
	ble _0816F824
_0816F81C:
	subs r3, #0x0A
	adds r1, #0x01
	cmp r3, #0x09
	bgt _0816F81C
_0816F824:
	lsls r1, r1, #0x01
	ldr r2, _0816F8B8 @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816F8C4 @ =0x06007146
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816F8C0 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	lsls r1, r3, #0x01
	ldr r2, _0816F8B8 @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816F8C8 @ =0x06007148
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816F8C0 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldr r3, [r4, #0x00]
	movs r1, #0x00
	cmp r3, #0x63
	ble _0816F860
_0816F858:
	subs r3, #0x64
	adds r1, #0x01
	cmp r3, #0x63
	bgt _0816F858
_0816F860:
	lsls r1, r1, #0x01
	ldr r2, _0816F8B8 @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816F8CC @ =0x060073C4
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816F8C0 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	movs r1, #0x00
	cmp r3, #0x09
	ble _0816F884
_0816F87C:
	subs r3, #0x0A
	adds r1, #0x01
	cmp r3, #0x09
	bgt _0816F87C
_0816F884:
	lsls r1, r1, #0x01
	ldr r2, _0816F8B8 @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816F8D0 @ =0x060073C6
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816F8C0 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	lsls r1, r3, #0x01
	ldr r2, _0816F8B8 @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816F8D4 @ =0x060073C8
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816F8C0 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816F8B8: .4byte 0x06007520
_0816F8BC: .4byte 0x06007144
_0816F8C0: .4byte 0x06007560
_0816F8C4: .4byte 0x06007146
_0816F8C8: .4byte 0x06007148
_0816F8CC: .4byte 0x060073C4
_0816F8D0: .4byte 0x060073C6
_0816F8D4: .4byte 0x060073C8
