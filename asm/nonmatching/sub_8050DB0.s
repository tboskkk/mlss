	.syntax unified
	.text

	thumb_func_start sub_8050DB0
sub_8050DB0:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	movs r1, #0xCF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x05
	ands r0, r1
	cmp r0, #0x00
	bne _08050EA0
	movs r3, #0xD3
	lsls r3, r3, #0x02
	adds r6, r7, r3
	ldr r0, [r6, #0x00]
	cmp r0, #0x00
	beq _08050EA0
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	movs r1, #0xA6
	lsls r1, r1, #0x02
	adds r4, r7, r1
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	ldrb r2, [r4, #0x00]
	movs r5, #0x03
	negs r5, r5
	adds r1, r5, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1C
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1E
	lsls r0, r0, #0x06
	movs r2, #0x3F
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1C
	ldr r1, _08050E98 @ =0x00000299
	adds r3, r7, r1
	lsrs r0, r0, #0x1F
	ldrb r2, [r3, #0x00]
	movs r1, #0x02
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1B
	movs r2, #0x01
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	ands r1, r5
	orrs r1, r0
	strb r1, [r3, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	ldr r3, _08050E9C @ =0x0000029B
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	adds r0, #0x23
	ldrb r1, [r0, #0x00]
	adds r3, #0x01
	adds r0, r7, r3
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x2A]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x2C]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x04]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldr r0, [r6, #0x00]
	ldrh r1, [r0, #0x06]
	adds r3, #0x02
	adds r0, r7, r3
	strh r1, [r0, #0x00]
	ldrb r0, [r4, #0x00]
	orrs r0, r2
	strb r0, [r4, #0x00]
	b _08050EA6
	.byte 0x00, 0x00
_08050E98: .4byte 0x00000299
_08050E9C: .4byte 0x0000029B
_08050EA0:
	adds r0, r7, #0x0
	bl sub_80409F4
_08050EA6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
