	.syntax unified
	.text

	thumb_func_start sub_8076C14
sub_8076C14:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076C7C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076C2C
	adds r2, #0xFF
_08076C2C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076C36
	adds r3, #0xFF
_08076C36:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076C4C
	movs r0, #0x13
	b _08076C4E
_08076C4C:
	movs r0, #0x12
_08076C4E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076C78 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x10
	str r0, [r1, #0x00]
	b _08076CF4
_08076C78: .4byte sub_80770BC
_08076C7C:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CBC
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r0, r4, #0x0
	bl sub_8076800
	strh r0, [r6, #0x00]
	movs r0, #0x32
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076CB2
	ldr r0, _08076CFC @ =0x08076D05
	str r0, [r4, #0x4C]
_08076CB2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_08076CBC:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CF4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076CD2
	adds r1, #0xFF
_08076CD2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076CDC
	adds r2, #0xFF
_08076CDC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076CE6
	adds r3, #0xFF
_08076CE6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076D00 @ =0x000025A3
	bl sub_80DF024
	movs r0, #0x14
	str r0, [r5, #0x00]
_08076CF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076CFC: .4byte sub_8076D04
_08076D00: .4byte 0x000025A3
