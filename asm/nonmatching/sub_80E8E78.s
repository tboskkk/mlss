	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	ldr r3, [r2, #0x00]
	ldrh r0, [r2, #0x08]
	ldrh r1, [r2, #0x04]
	adds r0, r0, r1
	strh r0, [r3, #0x00]
	ldrh r1, [r2, #0x0A]
	ldrh r2, [r2, #0x06]
	adds r1, r1, r2
	strh r1, [r3, #0x02]
	ldr r2, _080E8E9C @ =0x00007FFF
	adds r0, r2, #0x0
	subs r0, r0, r1
	strh r0, [r3, #0x0E]
	bx lr
_080E8E9C: .4byte 0x00007FFF
