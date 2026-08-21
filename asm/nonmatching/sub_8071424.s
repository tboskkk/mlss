	.syntax unified
	.text

	thumb_func_start sub_8071424
sub_8071424:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08071464
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08071442
	adds r1, #0xFF
_08071442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807144C
	adds r2, #0xFF
_0807144C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071456
	adds r3, #0xFF
_08071456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071484 @ =0x000021A6
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08071464:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807147C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r0, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _08071488 @ =0x0807249D
	str r0, [r4, #0x4C]
_0807147C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08071484: .4byte 0x000021A6
_08071488: .4byte sub_807249C
