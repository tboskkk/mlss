	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	ldr r1, _0809C64C @ =0x000040EA
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r6, #0x01
	orrs r0, r6
	movs r5, #0x08
	orrs r0, r5
	strb r0, [r2, #0x00]
	adds r7, r4, #0x0
	adds r7, #0x75
	ldrb r0, [r7, #0x00]
	subs r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C650 @ =0x000040EB
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x02
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C654 @ =0x000040EC
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x03
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C658 @ =0x000040ED
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x04
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r1, _0809C65C @ =0x000040EE
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r6
	orrs r0, r5
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	subs r0, #0x05
	adds r1, #0x75
	strb r0, [r1, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809C64C: .4byte 0x000040EA
_0809C650: .4byte 0x000040EB
_0809C654: .4byte 0x000040EC
_0809C658: .4byte 0x000040ED
_0809C65C: .4byte 0x000040EE
