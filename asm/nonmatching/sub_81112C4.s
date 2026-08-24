	.syntax unified
	.text

	thumb_func_start sub_81112C4
sub_81112C4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08111328
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08111330 @ =0x081123B1
	str r0, [r4, #0x58]
	ldr r0, _08111334 @ =0x08112395
	str r0, [r4, #0x60]
	adds r0, r4, #0x0
	adds r0, #0x98
	str r5, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x94
	ldr r1, _08111338 @ =0x083BA964
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x03
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	subs r0, #0x01
	muls r0, r1
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r5, [r0, #0x00]
	subs r0, #0x34
	strh r5, [r0, #0x00]
	adds r0, #0x30
	strh r5, [r0, #0x00]
	ldr r0, _0811133C @ =0x08111345
	str r0, [r4, #0x4C]
	ldr r1, _08111340 @ =0x083BA994
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08111328
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08111328:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08111330: .4byte dword_81123B1 @ =0x081123B1
_08111334: .4byte sub_8112394
_08111338: .4byte dword_83BA964 @ =0x083BA964
_0811133C: .4byte sub_8111344
_08111340: .4byte word_83BA994 @ =0x083BA994
