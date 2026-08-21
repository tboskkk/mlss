	.syntax unified
	.text

	thumb_func_start sub_80717F0
sub_80717F0:
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
	bgt _08071830
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807180E
	adds r1, #0xFF
_0807180E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071818
	adds r2, #0xFF
_08071818:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08071822
	adds r3, #0xFF
_08071822:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08071850 @ =0x000021E9
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08071830:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08071848
	ldr r2, _08071854 @ =0x000040AA
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08071848:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08071850: .4byte 0x000021E9
_08071854: .4byte 0x000040AA
