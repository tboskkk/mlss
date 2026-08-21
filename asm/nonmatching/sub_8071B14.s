	.syntax unified
	.text

	thumb_func_start sub_8071B14
sub_8071B14:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08071BBE
	ldr r2, _08071BC8 @ =0x000040B7
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x66
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _08071B5A
	adds r2, #0xFF
_08071B5A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x3C]
	cmp r3, #0x00
	bge _08071B64
	adds r3, #0xFF
_08071B64:
	asrs r3, r3, #0x08
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08071B6E
	adds r0, #0xFF
_08071B6E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08071BCC @ =0x000040BB
	bl sub_807BF34
	adds r2, r0, #0x0
	ldr r0, [r4, #0x30]
	str r2, [r0, #0x30]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x0A
	adds r1, r2, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r3, r2, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0x00
	str r0, [r2, #0x4C]
	ldr r0, _08071BD0 @ =0x08071BD5
	str r0, [r4, #0x4C]
_08071BBE:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08071BC8: .4byte 0x000040B7
_08071BCC: .4byte 0x000040BB
_08071BD0: .4byte sub_8071BD4
