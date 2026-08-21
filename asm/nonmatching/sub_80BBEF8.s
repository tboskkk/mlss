	.syntax unified
	.text

	thumb_func_start sub_80BBEF8
sub_80BBEF8:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BC028 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r6, [r0, #0x70]
	adds r5, r6, #0x0
	adds r5, #0x08
	ldr r4, [r7, #0x2C]
	adds r0, r5, #0x0
	bl sub_8087EFC
	adds r0, r4, #0x0
	adds r0, #0xC5
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x08
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080BC02C @ =0xFFFFFC00
	adds r1, r1, r0
	ldr r2, [r5, #0x18]
	subs r2, r2, r1
	ldr r0, [r5, #0x40]
	subs r0, r0, r1
	muls r0, r2
	cmp r0, #0x00
	bge _080BBFB2
	adds r2, r6, #0x0
	adds r2, #0xD4
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xD2
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080BC030 @ =0x0403228A
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_810D738
	ldrh r0, [r5, #0x24]
	adds r0, #0x01
	strh r0, [r5, #0x24]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bgt _080BBF7C
	ldr r2, _080BC034 @ =0x00000111
	adds r0, r1, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080BBFB2
_080BBF7C:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080BBF84
	adds r1, #0xFF
_080BBF84:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080BBF9A
	adds r2, #0xFF
_080BBF9A:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xC4
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	ldr r0, _080BC038 @ =0x000006E3
	str r4, [sp, #0x000]
	movs r3, #0x14
	bl sub_80DF024
_080BBFB2:
	adds r0, r5, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BC020
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2E
	bl play_sfx_80195B4
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _080BBFD2
	adds r1, #0xFF
_080BBFD2:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _080BBFDC
	adds r0, #0xFF
_080BBFDC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _080BBFE8
	adds r3, #0xFF
_080BBFE8:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	movs r0, #0x1E
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC004
	cmp r1, #0x04
	bne _080BC01C
_080BC004:
	ldr r2, _080BC03C @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BC01C:
	ldr r0, _080BC040 @ =0x080C0A59
	str r0, [r7, #0x4C]
_080BC020:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BC028: .4byte 0x03000FD8
_080BC02C: .4byte 0xFFFFFC00
_080BC030: .4byte 0x0403228A
_080BC034: .4byte 0x00000111
_080BC038: .4byte 0x000006E3
_080BC03C: .4byte 0x00002033
_080BC040: .4byte sub_80C0A58
