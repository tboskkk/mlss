	.syntax unified
	.text

	thumb_func_start sub_81DA7AC
sub_81DA7AC:
	push {r4, r5, r6, lr}
	add sp, #-0x088
	adds r5, r1, #0x0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _081DA7C4 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x04]
	cmp r3, r0
	bcc _081DA7CC
	ldr r0, _081DA7C8 @ =0x000080FF
	b _081DA84E
_081DA7C4: .4byte 0x03001BD0
_081DA7C8: .4byte 0x000080FF
_081DA7CC:
	ldr r0, _081DA858 @ =0x03001BD0
	adds r6, r0, #0x0
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x08]
	lsls r0, r1, #0x01
	mov r4, sp
	adds r2, r0, r4
	adds r2, #0x02
	movs r4, #0x00
	cmp r4, r1
	bcs _081DA7F6
_081DA7E2:
	strh r3, [r2, #0x00]
	subs r2, #0x02
	lsrs r3, r3, #0x01
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6, #0x00]
	ldrb r0, [r0, #0x08]
	cmp r4, r0
	bcc _081DA7E2
_081DA7F6:
	movs r0, #0x01
	strh r0, [r2, #0x00]
	subs r2, #0x02
	strh r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x14
	ldr r0, _081DA858 @ =0x03001BD0
	ldr r0, [r0, #0x00]
	ldrb r2, [r0, #0x08]
	adds r2, #0x03
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_81DA72C
	adds r0, r4, #0x0
	mov r1, sp
	movs r2, #0x44
	bl sub_81DA72C
	add r2, sp, #0x008
	adds r5, #0x06
	movs r4, #0x00
	movs r6, #0x01
_081DA824:
	movs r1, #0x00
	movs r3, #0x00
_081DA828:
	lsls r1, r1, #0x11
	ldrh r0, [r2, #0x00]
	ands r0, r6
	lsrs r1, r1, #0x10
	orrs r1, r0
	adds r2, #0x02
	adds r0, r3, #0x1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x0F
	bls _081DA828
	strh r1, [r5, #0x00]
	subs r5, #0x02
	adds r0, r4, #0x1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x03
	bls _081DA824
	movs r0, #0x00
_081DA84E:
	add sp, #0x088
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081DA858: .4byte 0x03001BD0
