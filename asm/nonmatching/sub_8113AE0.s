	.syntax unified
	.text

	thumb_func_start sub_8113AE0
sub_8113AE0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08113B7C
	adds r0, r6, #0x0
	movs r1, #0x1F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, _08113B84 @ =0x00004036
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r1, _08113B88 @ =0x08201140
	ldr r0, [r6, #0x28]
	ldr r2, _08113B8C @ =0x00000113
	adds r3, r0, r2
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	lsls r2, r2, #0x08
	str r2, [r4, #0x38]
	str r2, [r4, #0x10]
	ldr r1, _08113B90 @ =0x08201144
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r5, r0, #0x08
	str r5, [r4, #0x3C]
	str r5, [r4, #0x14]
	ldr r1, _08113B94 @ =0x08201148
	ldrb r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	lsls r3, r0, #0x08
	str r3, [r4, #0x40]
	str r3, [r4, #0x18]
	ldr r0, _08113B98 @ =0x08113E45
	str r0, [r4, #0x4C]
	asrs r1, r2, #0x08
	adds r0, r5, #0x0
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113B9C @ =0x00002AED
	bl sub_80DF024
	ldr r0, _08113BA0 @ =0x08113E79
	str r0, [r6, #0x4C]
	movs r0, #0xD5
	bl stop_sfx_80195A8
	movs r0, #0x8C
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08113B7C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08113B84: .4byte 0x00004036
_08113B88: .4byte dword_8201140 @ =0x08201140
_08113B8C: .4byte 0x00000113
_08113B90: .4byte dword_8201144 @ =0x08201144
_08113B94: .4byte dword_8201148 @ =0x08201148
_08113B98: .4byte sub_8113E44
_08113B9C: .4byte 0x00002AED
_08113BA0: .4byte sub_8113E78
