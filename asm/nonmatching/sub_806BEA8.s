	.syntax unified
	.text

	thumb_func_start sub_806BEA8
sub_806BEA8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806BEB8
	adds r1, #0xFF
_0806BEB8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806BEC2
	adds r2, #0xFF
_0806BEC2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806BECC
	adds r3, #0xFF
_0806BECC:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806BEF0 @ =0x00001C4A
	bl sub_80DF024
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BEF8
	ldr r0, _0806BEF4 @ =0x0806BF71
	b _0806BEFA
	.byte 0x00, 0x00
_0806BEF0: .4byte 0x00001C4A
_0806BEF4: .4byte sub_806BF70
_0806BEF8:
	ldr r0, _0806BF08 @ =0x0806BDA5
_0806BEFA:
	str r0, [r5, #0x4C]
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0806BF08: .4byte sub_806BDA4
