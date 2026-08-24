	.syntax unified
	.text

	thumb_func_start sub_8018080
sub_8018080:
	push {r4, r5, lr}
	bl sub_801A2A0
	ldr r5, _080180D0 @ =0x0300034C
	ldr r1, _080180D4 @ =0x0000088C
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	bne _0801809A
	bl sub_80196BC
_0801809A:
	bl sub_80187A8
	ldr r1, _080180D8 @ =0x00000888
	adds r0, r5, r1
	ldrb r4, [r0, #0x00]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0x00
	bne _080180E4
	ldr r2, _080180DC @ =0x040000D4
	lsls r1, r4, #0x1C
	lsrs r1, r1, #0x1F
	lsls r0, r4, #0x1A
	lsrs r0, r0, #0x1F
	eors r1, r0
	lsls r1, r1, #0x0A
	adds r0, r5, #0x0
	adds r0, #0x80
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x13
	str r0, [r2, #0x04]
	ldr r0, _080180E0 @ =0x84000100
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	b _0801810E
_080180D0: .4byte 0x0300034C
_080180D4: .4byte 0x0000088C
_080180D8: .4byte 0x00000888
_080180DC: .4byte 0x040000D4
_080180E0: .4byte 0x84000100
_080180E4:
	ldr r2, _08018150 @ =0x03001034
	ldr r0, _08018154 @ =0x08198154
	ldr r1, _08018158 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	lsls r0, r4, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r4, #0x1A
	lsrs r1, r1, #0x1F
	eors r0, r1
	lsls r0, r0, #0x0A
	adds r1, r5, #0x0
	adds r1, #0x80
	adds r0, r0, r1
	movs r1, #0xE0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #0x03
	bl _call_via_r3
_0801810E:
	bl sub_8018170
	bl sub_801859C
	ldr r4, _0801815C @ =0x0300034C
	ldr r1, _08018160 @ =0x000008C4
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	bl sub_8019694
	ldr r0, _08018164 @ =0x000008C1
	adds r1, r4, r0
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	movs r2, #0x00
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x20]
	adds r0, #0x01
	str r0, [r4, #0x20]
	ldr r3, _08018168 @ =0x04000208
	strh r2, [r3, #0x00]
	ldr r2, _0801816C @ =0x03007FF8
	ldrh r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	strh r1, [r3, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08018150: .4byte 0x03001034
_08018154: .4byte dword_8198154 @ =0x08198154
_08018158: .4byte dword_81980D8 @ =0x081980D8
_0801815C: .4byte 0x0300034C
_08018160: .4byte 0x000008C4
_08018164: .4byte 0x000008C1
_08018168: .4byte 0x04000208
_0801816C: .4byte 0x03007FF8
