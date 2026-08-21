	.syntax unified
	.text

	thumb_func_start sub_806F978
sub_806F978:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806F9EC
	ldr r2, [r4, #0x08]
	ldrb r0, [r2, #0x11]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x11]
	movs r0, #0x8E
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r4, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x84
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x38]
	ldr r1, [r2, #0x10]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	ldr r0, [r2, #0x14]
	ldr r1, [r4, #0x3C]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806F9F4 @ =0x08070671
	str r0, [r4, #0x58]
	ldr r0, _0806F9F8 @ =0x08070605
	str r0, [r4, #0x60]
	ldr r0, _0806F9FC @ =0x08070711
	str r0, [r4, #0x4C]
_0806F9EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806F9F4: .4byte sub_8070670
_0806F9F8: .4byte sub_8070604
_0806F9FC: .4byte sub_8070710
