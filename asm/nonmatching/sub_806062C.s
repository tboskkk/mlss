	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060684
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _08060684
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08060662
	adds r1, #0xFF
_08060662:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806066C
	adds r2, #0xFF
_0806066C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08060676
	adds r3, #0xFF
_08060676:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806068C @ =0x00001107
	bl sub_80DF024
	ldr r0, _08060690 @ =0x08060091
	str r0, [r4, #0x4C]
_08060684:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806068C: .4byte 0x00001107
_08060690: .4byte sub_8060090
