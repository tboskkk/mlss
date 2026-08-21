	.syntax unified
	.text

	thumb_func_start sub_8133658
sub_8133658:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r4, [r6, #0x08]
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _081336B2
	movs r6, #0x80
	lsls r6, r6, #0x02
	bl sub_80E3C3C
	ldr r5, [r4, #0x30]
	cmp r5, #0x00
	beq _0813375C
_08133674:
	adds r4, r5, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _081336AA
_0813367C:
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	bge _08133684
	adds r0, #0xFF
_08133684:
	asrs r0, r0, #0x08
	ldr r1, [r4, #0x08]
	cmp r1, #0x00
	bge _0813368E
	adds r1, #0xFF
_0813368E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x0C]
	cmp r2, #0x00
	bge _08133698
	adds r2, #0xFF
_08133698:
	asrs r2, r2, #0x08
	str r6, [sp, #0x000]
	movs r3, #0x01
	bl sub_80E38E8
	adds r6, #0x02
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _0813367C
_081336AA:
	ldr r5, [r5, #0x30]
	cmp r5, #0x00
	bne _08133674
	b _0813375C
_081336B2:
	ldr r2, _08133764 @ =0x03001034
	ldr r0, _08133768 @ =0x08198154
	ldr r1, _0813376C @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _08133770 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08133774 @ =0x00003CD0
	adds r0, r0, r1
	ldr r1, _08133778 @ =0x02000460
	movs r2, #0x20
	bl _call_via_r3
	ldr r2, _0813377C @ =0x0300034C
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r2, _08133780 @ =0x03000D74
	ldr r0, [r2, #0x00]
	ldrh r1, [r0, #0x28]
	strh r1, [r0, #0x2A]
	ldrh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	movs r3, #0x00
	ldr r5, _08133784 @ =0x00001FFF
	ldr r0, _08133788 @ =0x0000FFFF
	adds r4, r0, #0x0
_081336F0:
	ldr r0, [r2, #0x00]
	lsls r1, r3, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133702
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133702:
	adds r1, r3, #0x1
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133716
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133716:
	adds r1, r3, #0x2
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _0813372A
	orrs r0, r4
	strh r0, [r1, #0x00]
_0813372A:
	adds r1, r3, #0x3
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _0813373E
	orrs r0, r4
	strh r0, [r1, #0x00]
_0813373E:
	adds r1, r3, #0x4
	ldr r0, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, #0x0C
	adds r1, r0, r1
	ldrh r0, [r1, #0x00]
	cmp r0, r5
	bne _08133752
	orrs r0, r4
	strh r0, [r1, #0x00]
_08133752:
	adds r3, #0x05
	cmp r3, #0x0E
	ble _081336F0
	movs r0, #0x00
	str r0, [r6, #0x04]
_0813375C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08133764: .4byte 0x03001034
_08133768: .4byte 0x08198154
_0813376C: .4byte 0x081980D8
_08133770: .4byte 0x03000FDC
_08133774: .4byte 0x00003CD0
_08133778: .4byte 0x02000460
_0813377C: .4byte 0x0300034C
_08133780: .4byte 0x03000D74
_08133784: .4byte 0x00001FFF
_08133788: .4byte 0x0000FFFF
