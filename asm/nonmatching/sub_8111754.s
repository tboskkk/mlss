	.syntax unified
	.text

	thumb_func_start sub_8111754
sub_8111754:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08111834
	adds r0, r5, #0x0
	movs r1, #0x06
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
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0811178A
	adds r1, #0xFF
_0811178A:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08111794
	adds r2, #0xFF
_08111794:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0811179E
	adds r3, #0xFF
_0811179E:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _081117FC @ =0x0000270E
	bl sub_80DF024
	ldr r1, _08111800 @ =0x00004040
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_807C0D0
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	ldr r1, _08111804 @ =0xFFFFFC00
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
	lsls r1, r1, #0x05
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r0, [r4, #0x18]
	ldr r1, _08111808 @ =0x083BA9E4
	adds r0, r5, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0811180C
	subs r1, r0, #0x1
	adds r3, r4, #0x0
	adds r3, #0x78
	lsls r1, r1, #0x05
	ldrb r2, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _08111818
_081117FC: .4byte 0x0000270E
_08111800: .4byte 0x00004040
_08111804: .4byte 0xFFFFFC00
_08111808: .4byte 0x083BA9E4
_0811180C:
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_08111818:
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0811183C @ =0x08111A89
	str r0, [r4, #0x60]
	ldr r0, _08111840 @ =0x081119DD
	str r0, [r4, #0x4C]
	ldr r0, _08111844 @ =0x081122D1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
_08111834:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0811183C: .4byte sub_8111A88
_08111840: .4byte sub_81119DC
_08111844: .4byte sub_81122D0
