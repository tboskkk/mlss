	.syntax unified
	.text

	thumb_func_start sub_816D9A4
sub_816D9A4:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r2, #0x74
	movs r1, #0x01
	strb r1, [r2, #0x00]
	ldr r2, _0816DA68 @ =0x0821A996
	ldr r1, _0816DA6C @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r4, [r1, r2]
	lsls r4, r4, #0x06
	ldr r3, _0816DA70 @ =0x06007000
	adds r2, r4, r3
	adds r3, #0x2E
	ldrh r1, [r2, #0x00]
	strh r1, [r3, #0x00]
	ldrh r1, [r2, #0x02]
	strh r1, [r3, #0x02]
	ldrh r1, [r2, #0x04]
	strh r1, [r3, #0x04]
	ldrh r1, [r2, #0x06]
	strh r1, [r3, #0x06]
	ldr r2, _0816DA74 @ =0x0600706E
	adds r3, #0x12
	adds r1, r4, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	adds r2, #0x02
	adds r3, #0x02
	adds r1, r4, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	adds r2, #0x02
	adds r3, #0x02
	adds r1, r4, r3
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	adds r2, #0x02
	ldr r1, _0816DA78 @ =0x06007046
	adds r4, r4, r1
	ldrh r1, [r4, #0x00]
	strh r1, [r2, #0x00]
	ldr r3, [r0, #0x6C]
	movs r1, #0x00
	cmp r3, #0x63
	ble _0816DA12
_0816DA0A:
	subs r3, #0x64
	adds r1, #0x01
	cmp r3, #0x63
	bgt _0816DA0A
_0816DA12:
	lsls r1, r1, #0x01
	ldr r2, _0816DA7C @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816DA80 @ =0x060070B2
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816DA84 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	movs r1, #0x00
	cmp r3, #0x09
	ble _0816DA36
_0816DA2E:
	subs r3, #0x0A
	adds r1, #0x01
	cmp r3, #0x09
	bgt _0816DA2E
_0816DA36:
	lsls r1, r1, #0x01
	ldr r2, _0816DA7C @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816DA88 @ =0x060070B4
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r0, _0816DA84 @ =0x06007560
	adds r1, r1, r0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	lsls r1, r3, #0x01
	ldr r2, _0816DA7C @ =0x06007520
	adds r0, r1, r2
	ldr r2, _0816DA8C @ =0x060070B6
	ldrh r0, [r0, #0x00]
	strh r0, [r2, #0x00]
	adds r2, #0x40
	ldr r3, _0816DA84 @ =0x06007560
	adds r1, r1, r3
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_0816DA68: .4byte dword_821A996 @ =0x0821A996
_0816DA6C: .4byte 0x0300034C
_0816DA70: .4byte 0x06007000
_0816DA74: .4byte 0x0600706E
_0816DA78: .4byte 0x06007046
_0816DA7C: .4byte 0x06007520
_0816DA80: .4byte 0x060070B2
_0816DA84: .4byte 0x06007560
_0816DA88: .4byte 0x060070B4
_0816DA8C: .4byte 0x060070B6
