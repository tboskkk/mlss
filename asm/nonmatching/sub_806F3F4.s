	.syntax unified
	.text

	thumb_func_start sub_806F3F4
sub_806F3F4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, _0806F474 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	adds r0, #0x05
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bne _0806F430
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _0806F430
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_0806F430:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806F46C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806F448
	adds r1, #0xFF
_0806F448:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806F452
	adds r2, #0xFF
_0806F452:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806F45C
	adds r3, #0xFF
_0806F45C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806F478 @ =0x00002071
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
_0806F46C:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806F474: .4byte 0x03000FD8
_0806F478: .4byte 0x00002071
