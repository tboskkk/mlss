	.syntax unified
	.text

	thumb_func_start sub_806B424
sub_806B424:
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
	bgt _0806B464
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B442
	adds r1, #0xFF
_0806B442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B44C
	adds r2, #0xFF
_0806B44C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B456
	adds r3, #0xFF
_0806B456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B488 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B464:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B47E
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0806B48C @ =0x0806AA19
	str r0, [r4, #0x4C]
_0806B47E:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B488: .4byte 0x00000DB2
_0806B48C: .4byte sub_806AA18
