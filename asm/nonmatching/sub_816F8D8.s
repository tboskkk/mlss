	.syntax unified
	.text

	thumb_func_start sub_816F8D8
sub_816F8D8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0xE8
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _0816F990 @ =0x0300034C
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r5, r0, r1
	ldrb r1, [r5, #0x00]
	cmp r1, #0x04
	bgt _0816F9B8
	cmp r1, #0x02
	blt _0816F9B8
	ldr r4, _0816F994 @ =0x0821A996
	lsls r0, r1, #0x01
	adds r0, r0, r4
	movs r2, #0x00
	ldsh r3, [r0, r2]
	lsls r3, r3, #0x06
	ldr r0, _0816F998 @ =0x06007018
	adds r1, r3, r0
	ldr r2, _0816F99C @ =0x060070C0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x06]
	ldr r1, _0816F9A0 @ =0x06007100
	subs r2, #0x68
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, _0816F9A4 @ =0x0600705E
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x06
	subs r2, #0x4C
	adds r1, r3, r2
	ldr r2, _0816F9A8 @ =0x06007340
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x06]
	ldr r1, _0816F9AC @ =0x06007380
	ldr r2, _0816F9B0 @ =0x06007050
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, _0816F9B4 @ =0x06007056
	b _0816FA98
	.byte 0x00, 0x00
_0816F990: .4byte 0x0300034C
_0816F994: .4byte dword_821A996 @ =0x0821A996
_0816F998: .4byte 0x06007018
_0816F99C: .4byte 0x060070C0
_0816F9A0: .4byte 0x06007100
_0816F9A4: .4byte 0x0600705E
_0816F9A8: .4byte 0x06007340
_0816F9AC: .4byte 0x06007380
_0816F9B0: .4byte 0x06007050
_0816F9B4: .4byte 0x06007056
_0816F9B8:
	ldr r5, _0816FAAC @ =0x0821A996
	movs r1, #0x8C
	lsls r1, r1, #0x04
	adds r4, r0, r1
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	movs r2, #0x00
	ldsh r3, [r0, r2]
	lsls r3, r3, #0x06
	ldr r0, _0816FAB0 @ =0x06007018
	adds r1, r3, r0
	ldr r2, _0816FAB4 @ =0x060070C0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x06]
	ldr r1, _0816FAB8 @ =0x06007100
	subs r2, #0x68
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, _0816FABC @ =0x0600705E
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x06
	subs r2, #0x4C
	adds r1, r3, r2
	ldr r2, _0816FAC0 @ =0x060072C0
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x06]
	ldr r1, _0816FAC4 @ =0x06007300
	ldr r2, _0816FAC8 @ =0x06007050
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, _0816FACC @ =0x06007056
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	movs r1, #0x00
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x06
	subs r2, #0x3C
	adds r1, r3, r2
	ldr r2, _0816FAD0 @ =0x06007340
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	ldrh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	ldrh r0, [r1, #0x06]
	strh r0, [r2, #0x06]
	ldr r1, _0816FAD4 @ =0x06007380
	ldr r2, _0816FAD8 @ =0x06007058
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	adds r2, #0x02
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, #0x02
	ldr r0, _0816FABC @ =0x0600705E
_0816FA98:
	adds r3, r3, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_816F7E8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816FAAC: .4byte dword_821A996 @ =0x0821A996
_0816FAB0: .4byte 0x06007018
_0816FAB4: .4byte 0x060070C0
_0816FAB8: .4byte 0x06007100
_0816FABC: .4byte 0x0600705E
_0816FAC0: .4byte 0x060072C0
_0816FAC4: .4byte 0x06007300
_0816FAC8: .4byte 0x06007050
_0816FACC: .4byte 0x06007056
_0816FAD0: .4byte 0x06007340
_0816FAD4: .4byte 0x06007380
_0816FAD8: .4byte 0x06007058
