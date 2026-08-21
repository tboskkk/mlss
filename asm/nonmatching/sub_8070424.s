	.syntax unified
	.text

	thumb_func_start sub_8070424
sub_8070424:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0807048C
	adds r0, r4, #0x0
	movs r1, #0x20
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08070488 @ =0x080704F1
	str r0, [r4, #0x4C]
	movs r0, #0x00
	b _0807048E
_08070488: .4byte sub_80704F0
_0807048C:
	adds r0, r5, #0x0
_0807048E:
	pop {r4, r5}
	pop {r1}
	bx r1
