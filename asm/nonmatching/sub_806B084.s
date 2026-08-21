	.syntax unified
	.text

	thumb_func_start sub_806B084
sub_806B084:
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
	bgt _0806B0C4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B0A2
	adds r1, #0xFF
_0806B0A2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B0AC
	adds r2, #0xFF
_0806B0AC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B0B6
	adds r3, #0xFF
_0806B0B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B0E4 @ =0x00000DB2
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B0C4:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B0DA
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x14
	strh r1, [r0, #0x00]
	ldr r0, _0806B0E8 @ =0x0806B0ED
	str r0, [r4, #0x4C]
_0806B0DA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806B0E4: .4byte 0x00000DB2
_0806B0E8: .4byte sub_806B0EC
