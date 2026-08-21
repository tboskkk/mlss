	.syntax unified
	.text

	thumb_func_start sub_810835C
sub_810835C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r3, r1, #0x0
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _081083E4
	ldr r0, _0810839C @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r1, [r0, r4]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	adds r2, #0x37
	ldrb r0, [r2, #0x00]
	cmp r0, #0x10
	beq _081083A0
	cmp r0, #0x12
	bne _081083A2
	subs r3, #0x3C
	b _081083A2
	.byte 0x00, 0x00
_0810839C: .4byte 0x03000FF4
_081083A0:
	subs r3, #0x1E
_081083A2:
	lsrs r4, r3, #0x1F
	adds r4, r3, r4
	asrs r4, r4, #0x01
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r4, r0
	blt _081083E4
	movs r0, #0x8F
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r4, _081083E0 @ =0x00000121
	adds r2, r5, r4
	ldrb r1, [r2, #0x00]
	movs r0, #0x71
	negs r0, r0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	b _081083E6
_081083E0: .4byte 0x00000121
_081083E4:
	movs r0, #0x00
_081083E6:
	pop {r4, r5}
	pop {r1}
	bx r1
