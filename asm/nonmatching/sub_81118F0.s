	.syntax unified
	.text

	thumb_func_start sub_81118F0
sub_81118F0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r4, [r5, #0x30]
	cmp r4, #0x00
	bne _08111980
	ldr r1, _0811196C @ =0x00004040
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r0, r1
	str r0, [r4, #0x38]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x3C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r4, #0x3C]
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x40]
	movs r1, #0xA0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	ldr r1, _08111970 @ =0x083BA9E4
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08111974
	subs r1, r0, #0x1
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08111980
_0811196C: .4byte 0x00004040
_08111970: .4byte dword_83BA9E4 @ =0x083BA9E4
_08111974:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08111980:
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _081119CC @ =0x08111A89
	str r0, [r4, #0x60]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08111992
	adds r1, #0xFF
_08111992:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _0811199C
	adds r2, #0xFF
_0811199C:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _081119A6
	adds r3, #0xFF
_081119A6:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _081119D0 @ =0x00002716
	bl sub_80DF024
	ldr r0, _081119D4 @ =0x081119DD
	str r0, [r4, #0x4C]
	ldr r0, _081119D8 @ =0x081122D1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6A
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081119CC: .4byte sub_8111A88
_081119D0: .4byte 0x00002716
_081119D4: .4byte sub_81119DC
_081119D8: .4byte sub_81122D0
