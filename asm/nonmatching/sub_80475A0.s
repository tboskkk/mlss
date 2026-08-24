	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	lsls r1, r7, #0x01
	ldr r2, _08047610 @ =0x0203FFC4
	adds r1, r1, r2
	ldrh r2, [r1, #0x00]
	lsrs r3, r2, #0x0A
	movs r1, #0x0F
	ands r3, r1
	ldr r4, _08047614 @ =0x000003FF
	ands r4, r2
	adds r1, r3, #0x1
	lsls r1, r1, #0x0C
	orrs r1, r4
	ldr r5, _08047618 @ =0x0000021E
	adds r2, r0, r5
	movs r5, #0x00
	strh r1, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r6, r0, r1
	ldr r2, [r6, #0x00]
	lsls r3, r3, #0x04
	ldrb r1, [r2, #0x1E]
	movs r0, #0x0F
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x1E]
	ldr r0, [r6, #0x00]
	strh r4, [r0, #0x1C]
	ldr r0, [r6, #0x00]
	strh r5, [r0, #0x14]
	movs r4, #0x00
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x13]
	lsrs r0, r0, #0x04
	cmp r4, r0
	bcs _0804760A
	adds r3, r6, #0x0
	movs r5, #0x01
_080475F0:
	ldr r2, [r3, #0x00]
	adds r0, r5, #0x0
	lsls r0, r7
	ldrh r1, [r2, #0x14]
	orrs r0, r1
	strh r0, [r2, #0x14]
	adds r4, #0x01
	adds r7, #0x01
	ldr r0, [r3, #0x00]
	ldrb r0, [r0, #0x13]
	lsrs r0, r0, #0x04
	cmp r4, r0
	bcc _080475F0
_0804760A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047610: .4byte 0x0203FFC4
_08047614: .4byte 0x000003FF
_08047618: .4byte 0x0000021E
