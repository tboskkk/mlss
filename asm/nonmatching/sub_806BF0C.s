	.syntax unified
	.text

	thumb_func_start sub_806BF0C
sub_806BF0C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806BF4C
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BF2E
	adds r1, #0xFF
_0806BF2E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BF38
	adds r2, #0xFF
_0806BF38:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BF42
	adds r3, #0xFF
_0806BF42:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806BF6C @ =0x00001C5B
	bl sub_80DF024
_0806BF4C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806BF64
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806BF64:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806BF6C: .4byte 0x00001C5B
