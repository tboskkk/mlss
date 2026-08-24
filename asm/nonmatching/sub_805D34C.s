	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	ldr r0, [sp, #0x014]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r12, r0
	adds r0, r6, #0x0
	adds r0, #0xA8
	ldr r7, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0x00
	bne _0805D394
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	b _0805D3BE
_0805D394:
	movs r4, #0x0F
	lsls r2, r1, #0x0B
	adds r1, r4, #0x0
	ands r1, r5
	lsls r0, r1, #0x06
	adds r0, r2, r0
	ands r3, r4
	lsls r3, r3, #0x01
	adds r0, r0, r3
	movs r5, #0x80
	lsls r5, r5, #0x03
	adds r4, r5, #0x0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x01
	adds r1, #0x01
	lsls r1, r1, #0x05
	adds r2, r2, r1
	adds r2, r2, r3
	adds r2, r2, r4
_0805D3BE:
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r4, r6, #0x0
	adds r4, #0x94
	ldr r1, [r4, #0x00]
	lsls r2, r0, #0x01
	adds r1, r2, r1
	mov r0, r12
	lsls r3, r0, #0x03
	adds r3, r3, r7
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x02]
	strh r0, [r2, #0x02]
	ldr r0, [r4, #0x00]
	lsls r2, r5, #0x01
	adds r0, r2, r0
	ldrh r1, [r3, #0x04]
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	adds r2, r2, r0
	ldrh r0, [r3, #0x06]
	strh r0, [r2, #0x02]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
