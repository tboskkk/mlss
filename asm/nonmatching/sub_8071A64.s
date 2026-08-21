	.syntax unified
	.text

	thumb_func_start sub_8071A64
sub_8071A64:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08071AFE
	ldr r2, _08071B08 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071A96
	adds r1, #0xFF
_08071A96:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071AA0
	adds r2, #0xFF
_08071AA0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071AAA
	adds r3, #0xFF
_08071AAA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071B0C @ =0x000021FB
	bl sub_80DF024
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r2, #0xA0
	lsls r2, r2, #0x08
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x88
	movs r0, #0xD0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	subs r1, #0x0C
	movs r2, #0x00
	movs r0, #0xA0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x69
	bl play_sfx_80195B4
	ldr r0, _08071B10 @ =0x08072371
	str r0, [r4, #0x4C]
_08071AFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071B08: .4byte 0x000040B7
_08071B0C: .4byte 0x000021FB
_08071B10: .4byte sub_8072370
