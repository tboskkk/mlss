	.syntax unified
	.text

	thumb_func_start sub_80409F4
sub_80409F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r5, r0, r1
	ldr r1, [r5, #0x00]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x19
	movs r2, #0xA6
	lsls r2, r2, #0x02
	adds r6, r0, r2
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x01
	ldrb r3, [r6, #0x00]
	movs r4, #0x03
	negs r4, r4
	mov r8, r4
	mov r2, r8
	ands r2, r3
	orrs r2, r1
	strb r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r1, [r1, #0x1F]
	lsls r1, r1, #0x1E
	lsrs r1, r1, #0x1C
	movs r3, #0x0D
	negs r3, r3
	ands r3, r2
	orrs r3, r1
	strb r3, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r1, [r1, #0x1F]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	movs r2, #0x31
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x06
	movs r3, #0x3F
	ands r2, r3
	orrs r2, r1
	strb r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x1C
	ldr r7, _08040AD8 @ =0x00000299
	adds r4, r0, r7
	lsrs r1, r1, #0x1F
	ldrb r3, [r4, #0x00]
	movs r2, #0x02
	negs r2, r2
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #0x00]
	ldr r1, [r5, #0x00]
	ldrb r1, [r1, #0x12]
	lsls r1, r1, #0x1B
	movs r3, #0x01
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x01
	mov r7, r8
	ands r2, r7
	orrs r2, r1
	strb r2, [r4, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, #0x21
	ldrb r2, [r1, #0x00]
	ldr r4, _08040ADC @ =0x0000029B
	adds r1, r0, r4
	strb r2, [r1, #0x00]
	ldr r1, [r5, #0x00]
	adds r1, #0x23
	ldrb r2, [r1, #0x00]
	movs r7, #0xA7
	lsls r7, r7, #0x02
	adds r1, r0, r7
	strb r2, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrh r2, [r1, #0x2A]
	adds r4, #0x03
	adds r1, r0, r4
	strh r2, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrh r2, [r1, #0x2C]
	adds r7, #0x04
	adds r1, r0, r7
	strh r2, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrh r2, [r1, #0x04]
	adds r4, #0x04
	adds r1, r0, r4
	strh r2, [r1, #0x00]
	ldr r1, [r5, #0x00]
	ldrh r1, [r1, #0x06]
	adds r7, #0x04
	adds r0, r0, r7
	strh r1, [r0, #0x00]
	ldrb r0, [r6, #0x00]
	orrs r0, r3
	strb r0, [r6, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08040AD8: .4byte 0x00000299
_08040ADC: .4byte 0x0000029B
