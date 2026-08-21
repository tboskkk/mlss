	.syntax unified
	.text

	thumb_func_start sub_8071080
sub_8071080:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807108E
	adds r1, #0xFF
_0807108E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08071098
	adds r2, #0xFF
_08071098:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080710A2
	adds r3, #0xFF
_080710A2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080710D4 @ =0x0000209E
	bl sub_80DF024
	ldr r2, _080710D8 @ =0x000040E7
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _080710DC @ =0x0806F84D
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080710D4: .4byte 0x0000209E
_080710D8: .4byte 0x000040E7
_080710DC: .4byte sub_806F84C
