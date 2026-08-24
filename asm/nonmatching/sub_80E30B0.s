	push {r4, r5, r6, r7, lr}
	ldr r7, _080E312C @ =0x03000FD8
	ldr r0, [r7, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E30C6
	bl _call_via_r0
_080E30C6:
	ldr r2, _080E3130 @ =0x03001034
	ldr r0, _080E3134 @ =0x08198154
	ldr r1, _080E3138 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r6, _080E313C @ =0x03000FDC
	ldr r0, [r7, #0x00]
	ldrb r0, [r0, #0x0B]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x02
	adds r1, r1, r0
	lsls r1, r1, #0x09
	ldr r4, _080E3140 @ =0x00003EF0
	adds r1, r1, r4
	ldr r0, [r6, #0x00]
	adds r0, r0, r1
	ldr r5, _080E3144 @ =0x04000010
	adds r1, r5, #0x0
	movs r2, #0x10
	bl _call_via_r3
	ldr r2, _080E3148 @ =0x040000B0
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E314C @ =0x0000C5FF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r1, [r2, #0x0A]
	ldr r0, _080E3150 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2, #0x0A]
	ldrh r0, [r2, #0x0A]
	ldr r0, [r7, #0x00]
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x09
	adds r0, r0, r4
	ldr r1, [r6, #0x00]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	str r5, [r2, #0x04]
	ldr r0, _080E3154 @ =0xA6600004
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E312C: .4byte 0x03000FD8
_080E3130: .4byte 0x03001034
_080E3134: .4byte 0x08198154
_080E3138: .4byte 0x081980D8
_080E313C: .4byte 0x03000FDC
_080E3140: .4byte 0x00003EF0
_080E3144: .4byte 0x04000010
_080E3148: .4byte 0x040000B0
_080E314C: .4byte 0x0000C5FF
_080E3150: .4byte 0x00007FFF
_080E3154: .4byte 0xA6600004
