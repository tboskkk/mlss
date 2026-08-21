	.syntax unified
	.text

	thumb_func_start sub_806F47C
sub_806F47C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0806F488
	adds r0, #0xFF
_0806F488:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _0806F498
	adds r0, #0xFF
_0806F498:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xB0
	strh r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xA4
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r6, #0x00
	ldsh r1, [r1, r6]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0806F4FC @ =0x08070891
	str r0, [r5, #0x58]
	ldr r0, _0806F500 @ =0x08070819
	str r0, [r5, #0x60]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806F504 @ =0x0806F509
	str r0, [r5, #0x4C]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0806F4FC: .4byte sub_8070890
_0806F500: .4byte sub_8070818
_0806F504: .4byte sub_806F508
