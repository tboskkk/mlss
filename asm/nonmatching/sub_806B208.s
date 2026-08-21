	.syntax unified
	.text

	thumb_func_start sub_806B208
sub_806B208:
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
	bgt _0806B248
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806B226
	adds r1, #0xFF
_0806B226:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806B230
	adds r2, #0xFF
_0806B230:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806B23A
	adds r3, #0xFF
_0806B23A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806B268 @ =0x00000DBB
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806B248:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806B260
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_0806B260:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806B268: .4byte 0x00000DBB
