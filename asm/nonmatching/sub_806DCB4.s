	.syntax unified
	.text

	thumb_func_start sub_806DCB4
sub_806DCB4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x10]
	ldr r1, _0806DD3C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x33
	str r0, [r2, #0x00]
	ldr r1, [r5, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x01
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r5, #0x18]
	movs r6, #0xC0
	lsls r6, r6, #0x06
	cmp r0, r6
	bgt _0806DD34
	movs r4, #0x01
	negs r4, r4
	movs r0, #0x8B
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	movs r0, #0x6C
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0806DD08
	adds r1, #0xFF
_0806DD08:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0806DD12
	adds r2, #0xFF
_0806DD12:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0806DD1C
	adds r3, #0xFF
_0806DD1C:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0806DD40 @ =0x00001FC7
	bl sub_80DF024
	str r6, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _0806DD44 @ =0x0806DD49
	str r0, [r5, #0x4C]
_0806DD34:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806DD3C: .4byte 0xFFFFFD00
_0806DD40: .4byte 0x00001FC7
_0806DD44: .4byte sub_806DD48
