	.syntax unified
	.text

	thumb_func_start sub_806D7D0
sub_806D7D0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _0806D840
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D83C @ =0x0806E779
	b _0806D9DE
_0806D83C: .4byte sub_806E778
_0806D840:
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806D84C
	bl _call_via_r1
_0806D84C:
	ldr r2, [r4, #0x2C]
	ldr r0, _0806D894 @ =0x0806E791
	str r0, [r2, #0x4C]
	ldr r0, [r2, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r1, #0x03
	ands r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r5, r0, #0x1F
	ldr r0, [r2, #0x08]
	bl sub_807FB64
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D92C
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D8B8
	cmp r5, #0x00
	beq _0806D8A0
	ldr r0, [r4, #0x30]
	ldr r2, _0806D898 @ =0x0000411F
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D89C @ =0x0000411E
	b _0806D8CA
_0806D894: .4byte nullsub_15
_0806D898: .4byte 0x0000411F
_0806D89C: .4byte 0x0000411E
_0806D8A0:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D8B0 @ =0x00004117
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D8B4 @ =0x00004116
	b _0806D8CA
_0806D8B0: .4byte 0x00004117
_0806D8B4: .4byte 0x00004116
_0806D8B8:
	cmp r5, #0x00
	beq _0806D8E0
	ldr r0, [r4, #0x30]
	ldr r2, _0806D8D8 @ =0x00004123
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D8DC @ =0x00004122
_0806D8CA:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806D8F8
	.byte 0x00, 0x00
_0806D8D8: .4byte 0x00004123
_0806D8DC: .4byte 0x00004122
_0806D8E0:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D920 @ =0x0000411B
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D924 @ =0x0000411A
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806D8F8:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D900
	adds r1, #0xFF
_0806D900:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D90A
	adds r2, #0xFF
_0806D90A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D914
	adds r3, #0xFF
_0806D914:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D928 @ =0x00001F5B
	bl sub_80DF024
	b _0806D9D2
_0806D920: .4byte 0x0000411B
_0806D924: .4byte 0x0000411A
_0806D928: .4byte 0x00001F5B
_0806D92C:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D96C
	cmp r5, #0x00
	beq _0806D954
	ldr r0, [r4, #0x30]
	ldr r2, _0806D94C @ =0x00004121
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D950 @ =0x00004120
	b _0806D97E
	.byte 0x00, 0x00
_0806D94C: .4byte 0x00004121
_0806D950: .4byte 0x00004120
_0806D954:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D964 @ =0x00004119
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D968 @ =0x00004118
	b _0806D97E
_0806D964: .4byte 0x00004119
_0806D968: .4byte 0x00004118
_0806D96C:
	cmp r5, #0x00
	beq _0806D994
	ldr r0, [r4, #0x30]
	ldr r2, _0806D98C @ =0x00004125
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D990 @ =0x00004124
_0806D97E:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806D9AC
	.byte 0x00, 0x00
_0806D98C: .4byte 0x00004125
_0806D990: .4byte 0x00004124
_0806D994:
	ldr r0, [r4, #0x30]
	ldr r2, _0806D9E8 @ =0x0000411D
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _0806D9EC @ =0x0000411C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806D9AC:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D9B4
	adds r1, #0xFF
_0806D9B4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D9BE
	adds r2, #0xFF
_0806D9BE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D9C8
	adds r3, #0xFF
_0806D9C8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D9F0 @ =0x00001F74
	bl sub_80DF024
_0806D9D2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAE
	bl play_sfx_80195B4
	ldr r0, _0806D9F4 @ =0x0806D9F9
_0806D9DE:
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D9E8: .4byte 0x0000411D
_0806D9EC: .4byte 0x0000411C
_0806D9F0: .4byte 0x00001F74
_0806D9F4: .4byte sub_806D9F8
