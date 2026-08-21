	.syntax unified
	.text

	thumb_func_start sub_8025584
sub_8025584:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x20]
	adds r0, #0x04
	ldr r1, _08025634 @ =0x03000FC0
	ldr r1, [r1, #0x00]
	ldr r2, _08025638 @ =0x0400015D
	bl CpuSet
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r4, r5, r1
	lsrs r0, r0, #0x1F
	ldrb r2, [r4, #0x00]
	movs r6, #0x02
	negs r6, r6
	adds r1, r6, #0x0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x01
	movs r2, #0x03
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x02
	movs r1, #0x05
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x03
	movs r3, #0x09
	negs r3, r3
	ands r3, r1
	orrs r3, r0
	strb r3, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x04
	movs r2, #0x11
	negs r2, r2
	ands r2, r3
	orrs r2, r0
	strb r2, [r4, #0x00]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #0x00]
	movs r1, #0x40
	ands r1, r0
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r5, #0x20]
	ldrb r1, [r1, #0x00]
	lsrs r1, r1, #0x07
	lsls r1, r1, #0x07
	movs r2, #0x7F
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r1, [r5, #0x20]
	ldrb r0, [r1, #0x00]
	ands r6, r0
	strb r6, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08025634: .4byte 0x03000FC0
_08025638: .4byte 0x0400015D
